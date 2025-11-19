void sub_22137D678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_22137D6BC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_ownerMap(*(a1 + 32), a2, a3, a4, a5);
  v7 = TSKUIDStruct::description(*(a1 + 56));
  v11 = objc_msgSend_objectForKey_(v6, v8, v7, v9, v10);

  if (v11 && objc_msgSend_count(v11, v12, v13, v14, v15))
  {
    v16 = objc_msgSend_setByIntersectingWithSet_(*(a1 + 40), v12, v11, v14, v15);
    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    objc_msgSend_removeSpecifiersFromSet_(v11, v19, *(*(*(a1 + 48) + 8) + 40), v20, v21);
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v26 = objc_msgSend_ownerMap(*(a1 + 32), v22, v23, v24, v25, 0);
    v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v58, v62, 16);
    if (v32)
    {
      v33 = *v59;
      do
      {
        v34 = 0;
        do
        {
          if (*v59 != v33)
          {
            objc_enumerationMutation(v26);
          }

          v35 = *(*(&v58 + 1) + 8 * v34);
          v36 = *(*(*(a1 + 48) + 8) + 40);
          v37 = objc_msgSend_ownerMap(*(a1 + 32), v28, v29, v30, v31);
          v41 = objc_msgSend_objectForKey_(v37, v38, v35, v39, v40);
          objc_msgSend_removeSpecifiersFromSet_(v36, v42, v41, v43, v44);

          ++v34;
        }

        while (v32 != v34);
        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v28, &v58, v62, 16);
      }

      while (v32);
    }
  }

  v45 = objc_msgSend_interestingKeys(*(a1 + 32), v12, v13, v14, v15);
  objc_msgSend_removeSpecifiersFromSet_(v45, v46, *(*(*(a1 + 48) + 8) + 40), v47, v48);

  v53 = objc_msgSend_interestingKeys(*(a1 + 32), v49, v50, v51, v52);
  *(*(a1 + 32) + 64) = objc_msgSend_count(v53, v54, v55, v56, v57) != 0;
}

void sub_22137DA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_22137DAD4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v75 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  if (v6 && objc_msgSend_count(v6, a2, a3, a4, a5))
  {
    v7 = objc_msgSend_unSyncedStocks(*(a1 + 40), a2, a3, a4, a5);
    v8 = MEMORY[0x277CCAC30];
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = sub_22137DDFC;
    v72[3] = &unk_2784636B8;
    v73 = *(a1 + 32);
    v12 = objc_msgSend_predicateWithBlock_(v8, v9, v72, v10, v11);
    objc_msgSend_filterUsingPredicate_(v7, v13, v12, v14, v15);
  }

  v16 = *(a1 + 64);
  v17 = objc_msgSend_cachedStocks(*(a1 + 40), a2, a3, a4, a5);
  v22 = v17;
  if (v16)
  {
    objc_msgSend_addEntriesFromDictionary_(v17, v18, *(a1 + 32), v20, v21);
    v23 = v22;
  }

  else
  {
    v23 = objc_msgSend_tsu_allKeysAsSet(v17, v18, v19, v20, v21);

    v28 = objc_msgSend_tsu_allKeysAsSet(*(a1 + 32), v24, v25, v26, v27);
    v32 = objc_msgSend_tsu_setBySubtractingSet_(v28, v29, v23, v30, v31);

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v33 = v32;
    v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v68, v74, 16);
    if (v38)
    {
      v39 = *v69;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v69 != v39)
          {
            objc_enumerationMutation(v33);
          }

          v41 = *(*(&v68 + 1) + 8 * i);
          v42 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v35, v41, v36, v37, v68);
          v47 = objc_msgSend_cachedStocks(*(a1 + 40), v43, v44, v45, v46);
          objc_msgSend_setObject_forKeyedSubscript_(v47, v48, v42, v41, v49);

          v54 = objc_msgSend_unSyncedStocks(*(a1 + 40), v50, v51, v52, v53);
          objc_msgSend_addObject_(v54, v55, v41, v56, v57);
        }

        v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v35, &v68, v74, 16);
      }

      while (v38);
    }
  }

  v62 = objc_msgSend_remoteDataMap(*(a1 + 40), v58, v59, v60, v61);
  v65 = objc_msgSend_updateWithValuesFromMap_overwriteValues_(v62, v63, *(a1 + 48), *(a1 + 64), v64);
  v66 = *(*(a1 + 56) + 8);
  v67 = *(v66 + 40);
  *(v66 + 40) = v65;
}

BOOL sub_22137DDFC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), a2, a2, a4, a5);
  v6 = v5 == 0;

  return v6;
}

void sub_22137DF08(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_msgSend_unSyncedStocks(*(a1 + 32), a2, a3, a4, a5);
  *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_count(v10, v6, v7, v8, v9);
}

void sub_22137E16C()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_22137E1B0(void **a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (objc_msgSend_p_isInCollaborationMode(a1[4], a2, a3, a4, a5))
  {
    v10 = objc_msgSend_delegate(a1[4], v6, v7, v8, v9);
    v11 = v10 != 0;
  }

  else
  {
    v11 = 1;
  }

  v76[0] = 0;
  v76[1] = v76;
  v76[2] = 0x3032000000;
  v76[3] = sub_22137CCF4;
  v76[4] = sub_22137CD04;
  v77 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x3032000000;
  v73 = sub_22137CCF4;
  v74 = sub_22137CD04;
  v75 = 0;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 0;
  v12 = a1[4];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = sub_22137E590;
  v59[3] = &unk_278463708;
  v62 = v76;
  v59[4] = v12;
  v60 = a1[5];
  v13 = a1[6];
  v65 = v11;
  v61 = v13;
  v63 = &v70;
  v64 = &v66;
  objc_msgSend_p_recursiveWriteWillModify_withBlock_(v12, v14, 1, v59, v15);
  if (objc_msgSend_count(v71[5], v16, v17, v18, v19))
  {
    v24 = dispatch_get_global_queue(9, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22137E6D8;
    block[3] = &unk_27845DAD8;
    block[4] = a1[4];
    block[5] = &v70;
    dispatch_async(v24, block);
  }

  v29 = objc_msgSend_delegate(a1[4], v20, v21, v22, v23);
  if (v29)
  {
    if (objc_msgSend_count(v71[5], v25, v26, v27, v28))
    {
    }

    else
    {
      v38 = objc_msgSend_count(a1[6], v30, v31, v32, v33);

      if (!v38)
      {
        goto LABEL_14;
      }
    }

    if (objc_msgSend_count(a1[6], v34, v35, v36, v37))
    {
      v43 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v39, v40, v41, v42);
      v44 = a1[6];
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = sub_22137E748;
      v55[3] = &unk_278463730;
      v57 = &v70;
      v45 = v43;
      v56 = v45;
      objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v44, v46, v55, v47, v48);
    }

    else
    {
      v45 = 0;
    }

    v49 = objc_msgSend_delegate(a1[4], v39, v40, v41, v42);
    v53 = objc_msgSend_mapForSpecifiersInSet_(a1[5], v50, v71[5], v51, v52);
    objc_msgSend_remoteDataDidUpdateValues_quotes_fromStore_syncKey_(v49, v54, v53, v45, a1[4], v67[3]);
  }

LABEL_14:

  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&v70, 8);

  _Block_object_dispose(v76, 8);
}

void sub_22137E504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v34 - 160), 8);

  _Block_object_dispose((v34 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22137E590(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_p_updateCachesWithMap_quotes_overwriteValues_(*(a1 + 32), a2, *(a1 + 40), *(a1 + 48), *(a1 + 80));
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(*(a1 + 56) + 8) + 40);
  v11 = objc_msgSend_interestingKeys(*(a1 + 32), v7, v8, v9, v10);
  v15 = objc_msgSend_setByIntersectingWithSet_(v6, v12, v11, v13, v14);
  v16 = *(*(a1 + 64) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  v22 = objc_msgSend_delegate(*(a1 + 32), v18, v19, v20, v21);
  if (v22)
  {
    v27 = v22;
    if (objc_msgSend_count(*(*(*(a1 + 64) + 8) + 40), v23, v24, v25, v26))
    {
    }

    else
    {
      v36 = objc_msgSend_count(*(a1 + 48), v28, v29, v30, v31);

      if (!v36)
      {
        return;
      }
    }

    v37 = objc_msgSend_date(MEMORY[0x277CBEAA8], v32, v33, v34, v35);
    objc_msgSend_timeIntervalSinceReferenceDate(v37, v38, v39, v40, v41);
    *(*(*(a1 + 72) + 8) + 24) = v42;

    v46 = *(a1 + 32);

    MEMORY[0x2821F9670](v46, sel_setRemoteDataSyncKey_, v43, v44, v45);
  }
}

void sub_22137E6D8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_msgSend_calculationEngine(*(a1 + 32), a2, a3, a4, a5);
  objc_msgSend_markRemoteDataVolatileFunctionsAsDirtyForKeys_(v9, v6, *(*(*(a1 + 40) + 8) + 40), v7, v8);
}

void sub_22137E748(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (objc_msgSend_containsSpecifiersWithSymbol_(*(*(*(a1 + 40) + 8) + 40), v6, v11, v7, v8))
  {
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v9, v5, v11, v10);
  }
}

void sub_22137EAFC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = objc_msgSend_remoteDataMap(*(a1 + 32), a2, a3, a4, a5);
  v10 = objc_msgSend_copy(v13, v6, v7, v8, v9);
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

void sub_22137EC6C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = MEMORY[0x277CBEAC0];
  v13 = objc_msgSend_cachedStocks(*(a1 + 32), a2, a3, a4, a5);
  v10 = objc_msgSend_dictionaryWithDictionary_(v6, v7, v13, v8, v9);
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

uint64_t sub_22137EE40(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22137EEBC;
  v7[3] = &unk_278463758;
  v8 = *(a1 + 40);
  return objc_msgSend_enumerateSpecifiersWithBlock_(v5, a2, v7, a4, a5);
}

void sub_22137EEBC(uint64_t a1, void *a2)
{
  v14 = a2;
  v7 = objc_msgSend_remoteDataMap(*(a1 + 32), v3, v4, v5, v6);
  v11 = objc_msgSend_objectForKeyedSubscript_(v7, v8, v14, v9, v10);
  objc_msgSend_setObject_forKeyedSubscript_(*(*(*(a1 + 40) + 8) + 40), v12, v11, v14, v13);
}

void sub_22137F170()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_22137F1B4(uint64_t a1)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_22137CCF4;
  v22 = sub_22137CD04;
  v23 = 0;
  v2 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_22137F320;
  v13[3] = &unk_2784637A8;
  v16 = &v18;
  v13[4] = v2;
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v17 = *(a1 + 56);
  objc_msgSend_p_recursiveWriteWillModify_withBlock_(v2, v3, 1, v13, v4);
  v9 = objc_msgSend_calculationEngine(*(a1 + 32), v5, v6, v7, v8);
  objc_msgSend_markRemoteDataVolatileFunctionsAsDirtyForKeys_(v9, v10, v19[5], v11, v12);

  _Block_object_dispose(&v18, 8);
}

void sub_22137F2DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16)
{
  v18 = v16;

  _Block_object_dispose((v17 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22137F320(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_p_updateCachesWithMap_quotes_overwriteValues_(*(a1 + 32), a2, *(a1 + 40), *(a1 + 48), 1);
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v9 = *(a1 + 32);

  return MEMORY[0x2821F9670](v9, sel_setRemoteDataSyncKey_, v6, v7, v8);
}

void sub_22137F554(uint64_t a1, void *a2)
{
  v14 = a2;
  v6 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 40), v3, v14, v4, v5);
  v11 = objc_msgSend_cachedStocks(*(a1 + 32), v7, v8, v9, v10);
  objc_msgSend_setObject_forKeyedSubscript_(v11, v12, v6, v14, v13);
}

void sub_22137F5D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_22137F8FC()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_22137FC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v36 - 144), 8);

  _Block_object_dispose((v36 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22137FC80(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v48 = objc_msgSend_remoteDataMap(*(a1 + 32), a2, a3, a4, a5);
  v10 = objc_msgSend_interestingKeys(*(a1 + 32), v6, v7, v8, v9);
  v14 = objc_msgSend_mapForSpecifiersInSet_(v48, v11, v10, v12, v13);
  v15 = *(*(a1 + 40) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  v49 = objc_msgSend_interestingKeys(*(a1 + 32), v17, v18, v19, v20);
  v25 = objc_msgSend_allSymbols(v49, v21, v22, v23, v24);
  v26 = *(*(a1 + 48) + 8);
  v27 = *(v26 + 40);
  *(v26 + 40) = v25;

  v50 = objc_msgSend_remoteDataMap(*(a1 + 32), v28, v29, v30, v31);
  v36 = objc_msgSend_allSpecifiers(v50, v32, v33, v34, v35);
  v41 = objc_msgSend_interestingKeys(*(a1 + 32), v37, v38, v39, v40);
  v45 = objc_msgSend_setByRemovingSpecifiersFromSet_(v36, v42, v41, v43, v44);
  v46 = *(*(a1 + 56) + 8);
  v47 = *(v46 + 40);
  *(v46 + 40) = v45;
}

void sub_22137FDD8()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_22137FE1C(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = a3;
  if (objc_msgSend_containsObject_(*(*(*(a1 + 32) + 8) + 40), v5, a2, v6, v7))
  {
    v11 = *(*(*(a1 + 40) + 8) + 24);
    v12 = *(v11 + 40);
    if (!v12)
    {
      goto LABEL_7;
    }

    v13 = *(v11 + 32);
    v14 = *v12;
    if (v13 < *v12)
    {
      *(v11 + 32) = v13 + 1;
      objc_msgSend_encodeToArchive_(v21, v8, *&v12[2 * v13 + 2], v9, v10);
      goto LABEL_9;
    }

    if (v14 == *(v11 + 36))
    {
LABEL_7:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v11 + 24));
      v12 = *(v11 + 40);
      v14 = *v12;
    }

    *v12 = v14 + 1;
    v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::StockArchive>(*(v11 + 24));
    v16 = *(v11 + 32);
    v17 = *(v11 + 40) + 8 * v16;
    *(v11 + 32) = v16 + 1;
    *(v17 + 8) = v15;
    objc_msgSend_encodeToArchive_(v21, v18, v15, v19, v20);
  }

LABEL_9:
}

void sub_221381294()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v4 = objc_msgSend_initWithProperties_(v0, v1, 912, v2, v3, 0);
  v5 = qword_27CFB5488;
  qword_27CFB5488 = v4;
}

void sub_221381874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSTStrokeLayerAbstractStack;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_221382008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  for (i = 64; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void sub_2213823E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_221382850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v17 - 176), 8);
  _Block_object_dispose((v17 - 144), 8);

  _Block_object_dispose((v17 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2213828C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 sub_2213828E0(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_2213828F0(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v46 = a2;
  objc_msgSend_width(v46, v8, v9, v10, v11);
  v17 = v16;
  v18 = a1[10];
  if (v18 != 0x7FFFFFFFFFFFFFFFLL && a4 != 0 && a3 <= v18)
  {
    v21 = a4 - 1 + a3;
    if (v21 >= v18 && a4 >= 2)
    {
      ++a3;
      --a4;
    }

    else if (v21 >= v18 && a4 == 1)
    {
      objc_msgSend_width(v46, v12, v13, v14, v15);
      *(*(a1[5] + 8) + 24) = v23;
      goto LABEL_34;
    }
  }

  v24 = *(a1[6] + 8);
  if (*(v24 + 24))
  {
    v25 = *(*(a1[5] + 8) + 24);
    if (v25 < v17)
    {
      v26 = 1;
    }

    else
    {
      v26 = 3;
    }

    if (v25 <= v17)
    {
      v27 = v26;
    }

    else
    {
      v27 = 2;
    }

    if (objc_msgSend_isPortalStroke(*(*(a1[7] + 8) + 40), v12, v13, v14, v15))
    {
      v31 = MEMORY[0x277D81150];
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSTStrokeLayerAbstractStack enumerateStrokesAndCapsInRange:usingBlock:]_block_invoke", v29, v30);
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeLayerStack.mm", v34, v35);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v37, v32, v36, 425, 0, "should never see portal strokes here");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
    }

    (*(a1[4] + 16))();
    objc_storeStrong((*(a1[7] + 8) + 40), a2);
    *(*(a1[5] + 8) + 24) = v17;
    v42 = *(a1[8] + 8);
    *(v42 + 48) = a3;
    *(v42 + 56) = a4;
    *(*(a1[9] + 8) + 24) = v27;
  }

  else
  {
    *(v24 + 24) = 1;
    objc_storeStrong((*(a1[7] + 8) + 40), a2);
    v43 = *(a1[8] + 8);
    *(v43 + 48) = a3;
    *(v43 + 56) = a4;
    v44 = *(*(a1[5] + 8) + 24);
    if (v17 <= v44)
    {
      if (v17 >= v44)
      {
        v45 = 3;
      }

      else
      {
        v45 = 2;
      }

      *(*(a1[9] + 8) + 24) = v45;
    }

    else
    {
      *(*(a1[9] + 8) + 24) = 1;
    }

    *(*(a1[5] + 8) + 24) = v17;
  }

LABEL_34:
}

void sub_221382CF4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3 - *(a1 + 48);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_221382DE8;
  v12[3] = &unk_278463898;
  v13 = v7;
  v9 = *(a1 + 32);
  v14 = *(a1 + 40);
  v10 = v7;
  objc_msgSend_enumerateStrokesInRange_usingBlock_(v9, v11, v8, a4, v12);
}

void sub_221382DE8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v11 = a2;
  if ((objc_msgSend_isEqualToStroke_(v11, v7, *(a1 + 32), v8, v9) & 1) == 0)
  {
    objc_msgSend_appendStroke_inRange_order_(*(a1 + 40), v10, *(a1 + 32), a3, a4, 1);
  }
}

void sub_2213839C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22138433C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2213847AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2213847C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v8 = a2;
  v9 = *(*(*(a1 + 32) + 8) + 24);
  v16 = v8;
  objc_msgSend_width(v8, v10, v11, v12, v13);
  if (v9 >= v14)
  {
    v14 = v9;
  }

  *(*(*(a1 + 32) + 8) + 24) = v14;
  v15 = *(a1 + 40);
  if (v15 >= 0.0 && *(*(*(a1 + 32) + 8) + 24) == v15)
  {
    *a6 = 1;
  }
}

void sub_22138493C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221384954(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 24);
  v10 = v3;
  objc_msgSend_width(v3, v5, v6, v7, v8);
  if (v4 >= v9)
  {
    v9 = v4;
  }

  *(*(*(a1 + 32) + 8) + 24) = v9;
}

void sub_221384CE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  v28 = *(v26 - 120);
  if (v28)
  {
    *(v26 - 112) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(a1);
}

void *sub_2213850A8(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_22138513C(result, a2);
  }

  return result;
}

void sub_221385120(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22138513C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_221385188(a1, a2);
  }

  sub_22107C148();
}

void sub_221385188(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_22107C238();
}

void *sub_2213851E0(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_221123150(result, a2);
  }

  return result;
}

void sub_22138529C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void TSCESymbolTable::TSCESymbolTable(TSCESymbolTable *this)
{
  this->_locale = 0;
  this->_nextSymbol = 1;
  this->_symbolTableMap.__table_.__bucket_list_ = 0u;
  *&this->_symbolTableMap.__table_.__first_node_.__next_ = 0u;
  this->_symbolTableMap.__table_.__max_load_factor_ = 1.0;
  this->_identifierMap.__table_.__bucket_list_ = 0u;
  *&this->_identifierMap.__table_.__first_node_.__next_ = 0u;
  this->_identifierMap.__table_.__max_load_factor_ = 1.0;
  this->_undoSymbolTableMaps.__end_ = 0;
  this->_undoSymbolTableMaps.__cap_ = 0;
  this->_undoSymbolTableMaps.__begin_ = 0;
}

{
  this->_locale = 0;
  this->_nextSymbol = 1;
  this->_symbolTableMap.__table_.__bucket_list_ = 0u;
  *&this->_symbolTableMap.__table_.__first_node_.__next_ = 0u;
  this->_symbolTableMap.__table_.__max_load_factor_ = 1.0;
  this->_identifierMap.__table_.__bucket_list_ = 0u;
  *&this->_identifierMap.__table_.__first_node_.__next_ = 0u;
  this->_identifierMap.__table_.__max_load_factor_ = 1.0;
  this->_undoSymbolTableMaps.__end_ = 0;
  this->_undoSymbolTableMaps.__cap_ = 0;
  this->_undoSymbolTableMaps.__begin_ = 0;
}

void TSCESymbolTable::TSCESymbolTable(TSCESymbolTable *this, TSULocale *a2)
{
  this->_locale = a2;
  this->_nextSymbol = 1;
  this->_symbolTableMap.__table_.__bucket_list_ = 0u;
  *&this->_symbolTableMap.__table_.__first_node_.__next_ = 0u;
  this->_symbolTableMap.__table_.__max_load_factor_ = 1.0;
  this->_identifierMap.__table_.__bucket_list_ = 0u;
  *&this->_identifierMap.__table_.__first_node_.__next_ = 0u;
  this->_identifierMap.__table_.__max_load_factor_ = 1.0;
  this->_undoSymbolTableMaps.__end_ = 0;
  this->_undoSymbolTableMaps.__cap_ = 0;
  this->_undoSymbolTableMaps.__begin_ = 0;
}

{
  this->_locale = a2;
  this->_nextSymbol = 1;
  this->_symbolTableMap.__table_.__bucket_list_ = 0u;
  *&this->_symbolTableMap.__table_.__first_node_.__next_ = 0u;
  this->_symbolTableMap.__table_.__max_load_factor_ = 1.0;
  this->_identifierMap.__table_.__bucket_list_ = 0u;
  *&this->_identifierMap.__table_.__first_node_.__next_ = 0u;
  this->_identifierMap.__table_.__max_load_factor_ = 1.0;
  this->_undoSymbolTableMaps.__end_ = 0;
  this->_undoSymbolTableMaps.__cap_ = 0;
  this->_undoSymbolTableMaps.__begin_ = 0;
}

void TSCESymbolTable::TSCESymbolTable(TSCESymbolTable *this, const TSCESymbolTable *a2)
{
  this->_locale = a2->_locale;
  this->_nextSymbol = a2->_nextSymbol;
  this->_symbolTableMap.__table_.__bucket_list_ = 0u;
  *&this->_symbolTableMap.__table_.__first_node_.__next_ = 0u;
  this->_symbolTableMap.__table_.__max_load_factor_ = 1.0;
  *&this->_identifierMap.__table_.__first_node_.__next_ = 0u;
  this->_identifierMap.__table_.__bucket_list_ = 0u;
  this->_identifierMap.__table_.__max_load_factor_ = 1.0;
  this->_undoSymbolTableMaps.__end_ = 0;
  this->_undoSymbolTableMaps.__cap_ = 0;
  this->_undoSymbolTableMaps.__begin_ = 0;
}

{
  this->_locale = a2->_locale;
  this->_nextSymbol = a2->_nextSymbol;
  this->_symbolTableMap.__table_.__bucket_list_ = 0u;
  *&this->_symbolTableMap.__table_.__first_node_.__next_ = 0u;
  this->_symbolTableMap.__table_.__max_load_factor_ = 1.0;
  *&this->_identifierMap.__table_.__first_node_.__next_ = 0u;
  this->_identifierMap.__table_.__bucket_list_ = 0u;
  this->_identifierMap.__table_.__max_load_factor_ = 1.0;
  this->_undoSymbolTableMaps.__end_ = 0;
  this->_undoSymbolTableMaps.__cap_ = 0;
  this->_undoSymbolTableMaps.__begin_ = 0;
}

uint64_t TSCESymbolTable::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  objc_storeStrong(a1, *a2);
  return a1;
}

void TSCESymbolTable::setSymbol(TSCESymbolTable *this, unsigned int a2, NSString *a3)
{
  v31 = a2;
  v5 = a3;
  v30 = objc_msgSend_tsu_stringWithTrimmedWhitespace(v5, v6, v7, v8, v9);

  v14 = objc_msgSend_locale(this->_locale, v10, v11, v12, v13);
  v29 = objc_msgSend_stringByFoldingWithOptions_locale_(v30, v15, 385, v14, v16);

  v23 = sub_221387218(&this->_symbolTableMap.__table_.__bucket_list_.__ptr_, &v29, v17, v18, v19);
  end = this->_undoSymbolTableMaps.__end_;
  v25 = end - 5;
  if (v23)
  {
    if (!sub_221387218(end - 5, &v30, v20, v21, v22))
    {
      v26 = *(v23 + 6);
      v33 = &v30;
      *(sub_221387328(v25, &v30, &unk_2217E1890, &v33, &v32) + 6) = v26;
    }
  }

  else if (!sub_221387218(end - 5, &v30, v20, v21, v22))
  {
    v33 = &v30;
    *(sub_221387328(v25, &v30, &unk_2217E1890, &v33, &v32) + 6) = 0;
  }

  v33 = &v29;
  *(sub_221387328(&this->_symbolTableMap.__table_.__bucket_list_.__ptr_, &v29, &unk_2217E1890, &v33, &v32) + 6) = a2;
  v27 = v30;
  v33 = &v31;
  v28 = sub_2212E351C(&this->_identifierMap.__table_.__bucket_list_.__ptr_, &v31);
  objc_storeStrong(v28 + 3, v27);
  if (this->_nextSymbol <= v31)
  {
    this->_nextSymbol = v31 + 1;
  }
}

id TSCESymbolTable::trimIdentifierString(TSCESymbolTable *this, NSString *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_tsu_stringWithTrimmedWhitespace(this, a2, a3, a4, a5);

  return v5;
}

uint64_t TSCESymbolTable::createSymbol(TSCESymbolTable *this, NSString *a2)
{
  v3 = a2;
  v8 = v3;
  v44 = v3;
  if (this->_undoSymbolTableMaps.__end_ == this->_undoSymbolTableMaps.__begin_)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "TSCESymbol TSCESymbolTable::createSymbol(NSString *__strong)", v6, v7);
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCESymbolTable.mm", v29, v30);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v32, v27, v31, 87, 0, "can't add a symbol if not in any scope");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
    v37 = 0;
  }

  else
  {
    v44 = objc_msgSend_tsu_stringWithTrimmedWhitespace(v3, v4, v5, v6, v7);

    v13 = objc_msgSend_locale(this->_locale, v9, v10, v11, v12);
    v43 = objc_msgSend_stringByFoldingWithOptions_locale_(v44, v14, 385, v13, v15);

    v22 = sub_221387218(&this->_symbolTableMap.__table_.__bucket_list_.__ptr_, &v43, v16, v17, v18);
    end = this->_undoSymbolTableMaps.__end_;
    v24 = end - 5;
    if (v22)
    {
      if (!sub_221387218(end - 5, &v44, v19, v20, v21))
      {
        v25 = *(v22 + 6);
        v46 = &v44;
        *(sub_221387328(v24, &v44, &unk_2217E1890, &v46, &v42) + 6) = v25;
      }
    }

    else if (!sub_221387218(end - 5, &v44, v19, v20, v21))
    {
      v46 = &v44;
      *(sub_221387328(v24, &v44, &unk_2217E1890, &v46, &v42) + 6) = 0;
    }

    nextSymbol = this->_nextSymbol;
    this->_nextSymbol = nextSymbol + 1;
    v42 = nextSymbol;
    v46 = &v43;
    *(sub_221387328(&this->_symbolTableMap.__table_.__bucket_list_.__ptr_, &v43, &unk_2217E1890, &v46, &v45) + 6) = nextSymbol;
    v39 = v44;
    v46 = &v42;
    v40 = sub_2212E351C(&this->_identifierMap.__table_.__bucket_list_.__ptr_, &v42);
    objc_storeStrong(v40 + 3, v39);
    v37 = v42;

    v8 = v44;
  }

  return v37;
}

uint64_t TSCESymbolTable::nextSymbol(TSCESymbolTable *this)
{
  nextSymbol = this->_nextSymbol;
  this->_nextSymbol = nextSymbol + 1;
  return nextSymbol;
}

uint64_t TSCESymbolTable::lookup(TSCESymbolTable *this, NSString *a2, int a3)
{
  v5 = a2;
  v10 = objc_msgSend_tsu_stringWithTrimmedWhitespace(v5, v6, v7, v8, v9);

  v15 = objc_msgSend_locale(this->_locale, v11, v12, v13, v14);
  v40 = objc_msgSend_stringByFoldingWithOptions_locale_(v10, v16, 385, v15, v17);

  v21 = sub_221387218(&this->_symbolTableMap.__table_.__bucket_list_.__ptr_, &v40, v18, v19, v20);
  if (!v21)
  {
    goto LABEL_9;
  }

  v22 = *(v21 + 6);
  if (!a3)
  {
    goto LABEL_10;
  }

  end = this->_undoSymbolTableMaps.__end_;
  if (this->_undoSymbolTableMaps.__begin_ == end)
  {
LABEL_9:
    v22 = 0;
    goto LABEL_10;
  }

  sub_221387610(v38, end - 40);
  v24 = v39;
  if (v39)
  {
    while (1)
    {
      v25 = v24[2];
      v30 = objc_msgSend_locale(this->_locale, v26, v27, v28, v29);
      v33 = objc_msgSend_stringByFoldingWithOptions_locale_(v25, v31, 385, v30, v32);

      LOBYTE(v30) = objc_msgSend_isEqualToString_(v40, v34, v33, v35, v36);
      if (v30)
      {
        break;
      }

      v24 = *v24;
      if (!v24)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v22 = 0;
  }

  sub_2210C82EC(v38);
LABEL_10:

  return v22;
}

id *TSCESymbolTable::identifierForSymbol(TSCESymbolTable *this, unsigned int a2)
{
  v4 = a2;
  v2 = sub_2211DC534(&this->_identifierMap.__table_.__bucket_list_.__ptr_, &v4);
  if (v2)
  {
    v2 = v2[3];
  }

  return v2;
}

uint64_t TSCESymbolTable::isAcceptableIdentifier(TSCESymbolTable *this, NSString *a2)
{
  v2 = this;
  if (objc_msgSend_length(v2, v3, v4, v5, v6))
  {
    v10 = objc_msgSend_characterAtIndex_(v2, v7, 0, v8, v9);
    if ((TSUNumberOrDateLexer::numberValueForChar(v10) & 0x80000000) != 0)
    {
      v11 = TSUCellCoord::coordFromString(v2, 0x4000);
      if (v11 == 0x7FFFFFFF || (v11 & 0xFFFF00000000) == 0x7FFF00000000)
      {
        v21 = objc_msgSend_length(v2, v12, v13, v14, v15);
        if (!v21)
        {
          v16 = 1;
          goto LABEL_6;
        }

        v22 = 0;
        while (1)
        {
          v23 = objc_msgSend_characterAtIndex_(v2, v18, v22, v19, v20);
          if (TSUFormulaOperatorForChar())
          {
            break;
          }

          v16 = 0;
          if (v23 <= 8216)
          {
            if (v23 > 122)
            {
              if (v23 > 1523)
              {
                if (v23 == 1524 || v23 == 1563)
                {
                  goto LABEL_6;
                }
              }

              else if (v23 == 123 || v23 == 125)
              {
                goto LABEL_6;
              }
            }

            else if (v23 <= 0x3B && ((1 << v23) & 0x800508400000000) != 0)
            {
              goto LABEL_6;
            }
          }

          else
          {
            if (v23 > 65286)
            {
              if ((v23 - 65287) <= 0x14 && ((1 << (v23 - 7)) & 0x1000A1) != 0)
              {
                goto LABEL_6;
              }

              v24 = 65362;
            }

            else
            {
              if ((v23 - 8217) <= 6 && ((1 << (v23 - 25)) & 0x79) != 0)
              {
                goto LABEL_6;
              }

              v24 = 12289;
            }

            if (v23 == v24)
            {
              goto LABEL_6;
            }
          }

          ++v22;
          v16 = 1;
          if (v21 == v22)
          {
            goto LABEL_6;
          }
        }
      }
    }
  }

  v16 = 0;
LABEL_6:

  return v16;
}

BOOL TSCESymbolTable::isPoorVariableName(TSCESymbolTable *this, NSString *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_functionNameForLocalizedString_(this->_locale, a2, a2, a4, a5);
  v6 = v5 != 0;

  return v6;
}

TSUCellCoord *TSCESymbolTable::convertToExcelAcceptableIdentifier(TSCESymbolTable *this, NSString *a2)
{
  v2 = a2;
  v5 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v2, v3, @" ", @"_", v4);

  v6 = TSUCellCoord::coordFromString(v5, 0x3E8);
  if (v6 != 0x7FFFFFFF && (v6 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v10 = objc_msgSend_stringByAppendingString_(@"_", v7, v5, v8, v9);

    v5 = v10;
  }

  return v5;
}

id TSCESymbolTable::description(TSCESymbolTable *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], a2, @"<TSCESymbolTable %p>: \n", a4, a5, this);
  p_first_node = &this->_symbolTableMap.__table_.__first_node_;
  for (i = 1; ; i = 0)
  {
    p_first_node = p_first_node->__next_;
    if (!p_first_node)
    {
      break;
    }

    if ((i & 1) == 0)
    {
      objc_msgSend_appendString_(v9, v6, @"\n", v7, v8);
    }

    objc_msgSend_appendFormat_(v9, v6, @"%@: %u", v7, v8, p_first_node[2].__next_, LODWORD(p_first_node[3].__next_));
  }

  return v9;
}

uint64_t TSCESymbolTable::beginScope(TSCESymbolTable *this)
{
  memset(v2, 0, sizeof(v2));
  v3 = 1065353216;
  sub_221386F9C(&this->_undoSymbolTableMaps, v2);
  return sub_2210C82EC(v2);
}

uint64_t sub_221386F9C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_221387924(a1, a2);
  }

  else
  {
    result = sub_221088030(v3, a2) + 40;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t TSCESymbolTable::endScope(TSCESymbolTable *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  end = this->_undoSymbolTableMaps.__end_;
  if (this->_undoSymbolTableMaps.__begin_ == end)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCESymbolTable::endScope()", a4, a5);
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCESymbolTable.mm", v25, v26);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v28, v23, v27, 386, 0, "Calling endScope() without beginScope()");

    v33 = MEMORY[0x277D81150];

    return objc_msgSend_logBacktraceThrottled(v33, v29, v30, v31, v32);
  }

  else
  {
    sub_221387610(v36, end - 40);
    for (i = v37; i; i = *i)
    {
      v35 = *(i + 6);
      if (v35)
      {
        v11 = i[2];
        v16 = objc_msgSend_locale(this->_locale, v12, v13, v14, v15);
        v34 = objc_msgSend_stringByFoldingWithOptions_locale_(v11, v17, 385, v16, v18);

        LODWORD(v16) = v35;
        v39 = &v34;
        *(sub_221387328(&this->_symbolTableMap.__table_.__bucket_list_.__ptr_, &v34, &unk_2217E1890, &v39, &v38) + 6) = v16;
        v19 = v34;
        v39 = &v35;
        v20 = sub_2212E351C(&this->_identifierMap.__table_.__bucket_list_.__ptr_, &v35);
        objc_storeStrong(v20 + 3, v19);
      }

      else
      {
        sub_221387B68(&this->_symbolTableMap.__table_.__bucket_list_.__ptr_, i + 2, v7, v8, v9);
        sub_221387BB4(&this->_identifierMap.__table_.__bucket_list_.__ptr_, &v35);
      }
    }

    this->_undoSymbolTableMaps.__end_ = sub_2210C82EC(this->_undoSymbolTableMaps.__end_ - 40);
    return sub_2210C82EC(v36);
  }
}

uint64_t **sub_221387218(void *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a2)
  {
    v7 = objc_msgSend_hash(*a2, a2, a3, a4, a5);
  }

  else
  {
    v7 = 0;
  }

  v8 = a1[1];
  if (!*&v8)
  {
    return 0;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= *&v8)
    {
      v11 = v7 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v7;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  for (i = *v12; i; i = *i)
  {
    v14 = i[1];
    if (v14 == v7)
    {
      if (objc_msgSend_isEqualToString_(i[2], a2, *a2, a4, a5))
      {
        return i;
      }
    }

    else
    {
      if (v10 > 1)
      {
        if (v14 >= *&v8)
        {
          v14 %= *&v8;
        }
      }

      else
      {
        v14 &= *&v8 - 1;
      }

      if (v14 != v11)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t **sub_221387328(void *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a2)
  {
    v7 = objc_msgSend_hash(*a2, a2, a3, a4, a5);
  }

  else
  {
    v7 = 0;
  }

  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_21;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= *&v8)
    {
      v11 = v7 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v7;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_21;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  if ((objc_msgSend_isEqualToString_(v13[2], a2, *a2, a4, a5) & 1) == 0)
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_2213875A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2213875C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2213875C4(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_221387610(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_221087270(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_221387688(a1, i + 2, (i + 2), v4, v5);
  }

  return a1;
}

uint64_t **sub_221387688(void *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a2)
  {
    v7 = objc_msgSend_hash(*a2, a2, a3, a4, a5);
  }

  else
  {
    v7 = 0;
  }

  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_21;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= *&v8)
    {
      v11 = v7 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v7;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_21;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  if ((objc_msgSend_isEqualToString_(v13[2], a2, *a2, a4, a5) & 1) == 0)
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_221387908(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2213875C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_221387924(uint64_t a1, uint64_t *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_22107C148();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_221387A50(a1, v6);
  }

  v13 = 0;
  v14 = 40 * v2;
  sub_221088030(40 * v2, a2);
  v15 = 40 * v2 + 40;
  v7 = *(a1 + 8);
  v8 = 40 * v2 + *a1 - v7;
  sub_221387AA8(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_221387B18(&v13);
  return v12;
}

void sub_221387A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_221387B18(va);
  _Unwind_Resume(a1);
}

void sub_221387A50(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_22107C238();
}

void sub_221387AA8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_221088030(a4, v7);
      v7 += 5;
      a4 = v8 + 40;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_2210C82EC(v6);
      v6 += 40;
    }
  }
}

uint64_t sub_221387B18(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    sub_2210C82EC(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t **sub_221387B68(void *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_221387218(a1, a2, a3, a4, a5);
  if (result)
  {
    sub_221087680(a1, result, v7);
    sub_2213875C4(v7);
    return 1;
  }

  return result;
}

uint64_t *sub_221387BB4(void *a1, unsigned int *a2)
{
  result = sub_2211DC534(a1, a2);
  if (result)
  {
    sub_221087680(a1, result, v4);
    sub_221087E7C(v4);
    return 1;
  }

  return result;
}

uint64_t sub_221387C00(double a1)
{
  v1 = fabs(a1);
  if (v1 >= 1.0)
  {
    if (v1 >= 60.0)
    {
      if (v1 >= 3600.0)
      {
        if (v1 >= 86400.0 || v1 < 3600.0)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }

      else
      {
        return 5;
      }
    }

    else
    {
      return 6;
    }
  }

  else
  {
    return 7;
  }
}

uint64_t sub_221387C78(char a1)
{
  if ((a1 & 0x10) != 0)
  {
    v1 = 6;
  }

  else
  {
    v1 = 7;
  }

  if ((a1 & 8) != 0)
  {
    v2 = 5;
  }

  else
  {
    v2 = v1;
  }

  if ((a1 & 4) != 0)
  {
    v3 = 4;
  }

  else
  {
    v3 = v2;
  }

  if ((a1 & 2) != 0)
  {
    v4 = 3;
  }

  else
  {
    v4 = v3;
  }

  if (a1)
  {
    return 2;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_221387CBC(unsigned int a1)
{
  v1 = 0x2010080402011010uLL >> (8 * a1);
  if (a1 >= 8)
  {
    LOBYTE(v1) = 16;
  }

  return v1 & 0x3F;
}

uint64_t __C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result & 0xFFFF00000000;
  v4 = a2 & 0xFFFF00000000;
  if (result != 0x7FFFFFFFLL || v3 == 0x7FFF00000000 || v4 == 0x7FFF00000000)
  {
    if (result != 0x7FFFFFFFLL && v3 == 0x7FFF00000000 && v4 == 0x7FFF00000000 && a2 != 0x7FFFFFFFLL)
    {
      return a3 & 0xFFFF00000000 | result;
    }
  }

  else if (a2 == 0x7FFFFFFFLL)
  {
    return a3 | v3;
  }

  return result;
}

uint64_t sub_221387E00(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = result & 0xFFFF00000000;
  v11 = a2 & 0xFFFF00000000;
  if (result != 0x7FFFFFFFLL || v10 == 0x7FFF00000000 || v11 == 0x7FFF00000000)
  {
    if (result != 0x7FFFFFFFLL && v10 == 0x7FFF00000000 && v11 == 0x7FFF00000000 && a2 != 0x7FFFFFFFLL)
    {
      if (a3 == 1)
      {
        return (a4 + (a10 << 32)) & 0xFFFF00000000 | result;
      }

      else
      {
        return a6 & 0xFFFF00000000 | result;
      }
    }
  }

  else if (a2 == 0x7FFFFFFFLL)
  {
    v12 = a6 | v10;
    v13 = a4 | v10;
    if (a3 == 1)
    {
      return v13;
    }

    else
    {
      return v12;
    }
  }

  return result;
}

id sub_221387F30(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v29);
  v9 = objc_msgSend_const_astNodeArray(v3, v5, v6, v7, v8);
  sub_2212BC6C4(v25, v9, &v29);
  TSCEASTStreamIterator::rewrite(v25, v10, v11, v12, v13);
  v18 = objc_msgSend_columnRowUIDMap(v4, v14, v15, v16, v17);
  v22 = objc_msgSend_cellRegionForUIDRange_(v18, v19, v26, v20, v21);

  v25[0] = &unk_2834A4000;
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(v25, v23);

  return v22;
}

void sub_221388028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_22138805C(&a9, v13);

  _Unwind_Resume(a1);
}

void sub_22138805C(TSCEASTStreamIterator *this, TSCEASTNodeArray *a2)
{
  *this = &unk_2834A4000;
  v3 = *(this + 20);
  if (v3)
  {
    *(this + 21) = v3;
    operator delete(v3);
  }

  v4 = *(this + 17);
  if (v4)
  {
    *(this + 18) = v4;
    operator delete(v4);
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(this, a2);
}

void sub_221388304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_221388330(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2213889B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = TSTHiddenStateExtent;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_22138AD4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a25);
  }

  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  v31 = *(v28 - 88);
  if (v31)
  {
    *(v28 - 80) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

void sub_22138B8E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22138BC74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22138C5E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22138C7AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22138D0D0(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_22138E33C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_22138E9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  TSUIndexSet::~TSUIndexSet((v16 - 120));

  _Unwind_Resume(a1);
}

void sub_22138F538(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_22108CD88();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v6 = v3;
  if (v3)
  {
    memcpy(&__dst, __s, v3);
  }

  *(&__dst + v4) = 0;
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_22138F630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_221390F58(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a2;
  v18 = a3;
  result = objc_msgSend_previousGroupNodeUidForUpdatedGroupNodeUid_(*(a1 + 32), a2, &v17, a4, a5);
  if (result != v17 || v7 != v18)
  {
    v12 = objc_msgSend_containsUuid_(*(*(a1 + 40) + 136), v7, result, v7, v8);
    v13 = *(*(a1 + 40) + 136);
    if (v12)
    {
      result = objc_msgSend_addUUID_(v13, v10, v17, v18, v11);
      if (result)
      {
        v16 = 48;
LABEL_10:
        result = objc_msgSend_addUUID_(*(a1 + v16), v14, v17, v18, v15);
      }
    }

    else
    {
      result = objc_msgSend_removeUUID_(v13, v10, v17, v18, v11);
      if (result)
      {
        v16 = 56;
        goto LABEL_10;
      }
    }

    *(*(a1 + 40) + 497) = 1;
  }

  return result;
}

void sub_221391434(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v12 = v3;
  v9 = objc_msgSend_groupUid(v3, v5, v6, v7, v8);
  objc_msgSend_removeUUID_(v4, v10, v9, v10, v11);
}

void sub_22139209C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, id obj, void *a16)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_2213932AC(void *a1, void *a2, _BYTE *a3)
{
  v32 = a2;
  v9 = objc_msgSend_cell(v32, v5, v6, v7, v8);
  v14 = v9;
  if (v9)
  {
    v15 = objc_msgSend_valueType(v9, v10, v11, v12, v13);
    if (v15 == 7)
    {
      v20 = objc_msgSend_durationFormat(v14, v16, v17, v18, v19);
      v25 = objc_msgSend_asDurationFormat(v20, v21, v22, v23, v24);
      v30 = objc_msgSend_durationUnitLargest(v25, v26, v27, v28, v29);

      v31 = *(a1[5] + 8);
      if (*(*(a1[4] + 8) + 24))
      {
        if (*(v31 + 24) != v30)
        {
          *(*(a1[6] + 8) + 24) = 0;
          *a3 = 1;
        }
      }

      else
      {
        *(v31 + 24) = v30;
        *(*(a1[4] + 8) + 24) = 1;
      }
    }

    else if ((v15 & 0xFFFFFFF7) == 2)
    {
      *(*(a1[7] + 8) + 24) = 1;
      *a3 = 1;
    }
  }
}

void sub_221393800(_Unwind_Exception *a1)
{
  _Block_object_dispose((v4 - 160), 8);
  TSUIndexSet::~TSUIndexSet((v3 + 48));

  _Unwind_Resume(a1);
}

uint64_t sub_2213938A8(uint64_t a1)
{
  v2 = *(a1 + 48);
  v1 = a1 + 48;
  *v1 = v2 | 3;
  *&v3.f64[0] = 0x8000000080000000;
  *&v3.f64[1] = 0x8000000080000000;
  *(v1 + 8) = vnegq_f64(v3);
  *(v1 + 24) = 0;
  return TSUIndexSet::operator=();
}

uint64_t sub_2213938D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    if (*(*(a1 + 40) + 120) == 1)
    {
      a2 = objc_msgSend_viewRowIndexForBaseRowIndex_(v6, a2, a2, a4, a5);
    }

    else
    {
      v7 = objc_msgSend_viewColumnIndexForBaseColumnIndex_(v6, a2, a2, a4, a5);
      if (v7 == 0x7FFF)
      {
        a2 = 0x7FFFFFFFLL;
      }

      else
      {
        a2 = v7;
      }
    }
  }

  result = objc_msgSend_showAtViewIndex_forAction_(*(a1 + 40), a2, a2, 2, a5);
  if (result)
  {
    v9 = (*(*(a1 + 48) + 8) + 48);

    return TSUIndexSet::addIndex(v9);
  }

  return result;
}

uint64_t sub_22139397C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_showAtViewIndex_forAction_(*(a1 + 32), a2, a2, 2, a5);
  if (result)
  {
    v7 = (*(*(a1 + 40) + 8) + 48);

    return TSUIndexSet::addIndex(v7);
  }

  return result;
}

uint64_t sub_2213939E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    if (*(*(a1 + 40) + 120) == 1)
    {
      a2 = objc_msgSend_viewRowIndexForBaseRowIndex_(v6, a2, a2, a4, a5);
    }

    else
    {
      v7 = objc_msgSend_viewColumnIndexForBaseColumnIndex_(v6, a2, a2, a4, a5);
      if (v7 == 0x7FFF)
      {
        a2 = 0x7FFFFFFFLL;
      }

      else
      {
        a2 = v7;
      }
    }
  }

  result = objc_msgSend_hideAtViewIndex_forAction_(*(a1 + 40), a2, a2, 2, a5);
  if (result)
  {
    v9 = (*(*(a1 + 48) + 8) + 48);

    return TSUIndexSet::addIndex(v9);
  }

  return result;
}

uint64_t sub_221393A88(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_hideAtViewIndex_forAction_(*(a1 + 32), a2, a2, 2, a5);
  if (result)
  {
    v7 = (*(*(a1 + 40) + 8) + 48);

    return TSUIndexSet::addIndex(v7);
  }

  return result;
}

void sub_221393AEC(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 40) | ((*(a2 + 8) - *a2) << 32)) + 0x100000000;
  *&v3 = *a2;
  *(&v3 + 1) = v2;
  sub_221083454(*(a1 + 32) + 472, &v3);
}

void sub_221393B3C(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8) - *a2 + 1) | (*(a1 + 40) << 32);
  *&v3 = *a2 << 32;
  *(&v3 + 1) = v2;
  sub_221083454(*(a1 + 32) + 472, &v3);
}

void sub_221393FD0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_221394080(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_221394330(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v8 = objc_msgSend_baseColumnIndexForFilterRuleInTableModel_(*(a1 + 32), v5, *(a1 + 40), v6, v7);
  v13 = objc_msgSend_needsThreshold(*(a1 + 32), v9, v10, v11, v12);
  v14 = (*(v4 + 16))(v4, v3, v8, v13);

  return v14;
}

void sub_22139464C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char *a20)
{
  sub_22107C800(&a9, a10);
  sub_22107C860(v21 + 16, a15);
  sub_22107C860(&a19, a20);
  _Unwind_Resume(a1);
}

void sub_221394AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221394AEC(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v15 = v5;
  v11 = objc_msgSend_baseColumnIndex(v5, v7, v8, v9, v10);
  if (objc_msgSend_containsIndex_(v6, v12, v11, v13, v14))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

void *sub_2213958D0(void *a1, void *a2)
{
  v2 = a2[1];
  v3 = v2 ^ *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_22;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v2 ^ *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_22;
    }

LABEL_21:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  if (v8[2] != *a2 || v8[3] != v2)
  {
    goto LABEL_21;
  }

  return v8;
}

void *sub_221395B0C(void *a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (v3)
  {
    objc_msgSend_getUUIDBytes_(v3, v4, a1, v5, v6);
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }

  return a1;
}

uint64_t sub_221395B64(unsigned __int8 *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!sub_221395C78(a1, a2, a3, a4, a5))
  {
    TSUSetCrashReporterInfo();
    v10 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "UInt16 TSTCellStorageSizePreBNC(TSTCellStoragePreBNC *)", v12, v13, "UInt16 TSTCellStorageSizePreBNC(TSTCellStoragePreBNC *)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage_Deprecated.mm", 31);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage_Deprecated.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v19, v14, v18, 31, 1, "Corrupt cell memory. Crashing!");

    TSUCrashBreakpoint();
    abort();
  }

  if (a1)
  {
    v7 = *(a1 + 2);
    if (*a1 >= 2u)
    {
      v8 = *(a1 + 5);
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = 0;
LABEL_7:

  return sub_221395D54(v7, v8, v6);
}

BOOL sub_221395C78(unsigned __int8 *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  if (v5 >= 5)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "BOOL TSTCellStorageVersionCheckPreBNC(TSTCellStoragePreBNC *)", a4, a5);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage_Deprecated.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 319, 0, "Can't parse cell storage header version %d as PreBNC!", *a1);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  return v5 < 5;
}

uint64_t sub_221395D54(unsigned int a1, unsigned int a2, uint16x8_t a3)
{
  LOWORD(v3) = 12;
  if (a2 | a1)
  {
    v5 = sub_22139603C(a1, a3);
    if (a2)
    {
      v6 = 16;
    }

    else
    {
      v6 = 12;
    }

    v7 = vdup_n_s16(a2);
    v8 = vshl_u16(v7, 0xFFFEFFFDFFFFFFFFLL);
    v8.i16[1] = vshl_u16(v7, 0x2000300010001).i16[1];
    v9 = vand_s8(v8, 0x4000400040004);
    v9.i16[0] = vaddv_s16(v9);
    return (v9.i32[0] + (a2 & 4) + ((a2 >> 4) & 4) + ((a2 >> 5) & 4) + v5 + v6);
  }

  return v3;
}

uint64_t sub_221395DEC(void *a1, int *a2)
{
  v3 = sub_221395E34(a1, a2);
  v4 = sub_221395FC4(a2);

  return sub_221395D54(v3, v4, v5);
}

uint64_t sub_221395E34(void *a1, int *a2)
{
  v3 = a1;
  hasCellStyle = objc_msgSend_hasCellStyle(v3, v4, v5, v6, v7);
  hasTextStyle = objc_msgSend_hasTextStyle(v3, v9, v10, v11, v12);
  hasConditionalStyle = objc_msgSend_hasConditionalStyle(v3, v14, v15, v16, v17);
  v19 = *a2;
  hasFormula = objc_msgSend_hasFormula(v3, v20, v21, v22, v23);
  hasFormulaSyntaxError = objc_msgSend_hasFormulaSyntaxError(v3, v25, v26, v27, v28);
  hasRichText = objc_msgSend_hasRichText(v3, v30, v31, v32, v33);
  hasCommentStorage = objc_msgSend_hasCommentStorage(v3, v35, v36, v37, v38);
  hasImportWarningSet = objc_msgSend_hasImportWarningSet(v3, v40, v41, v42, v43);
  if (hasCellStyle)
  {
    v49 = 2;
  }

  else
  {
    v49 = 0;
  }

  if (hasTextStyle)
  {
    v49 |= 0x80u;
  }

  if (hasConditionalStyle)
  {
    v49 |= 0xC00u;
  }

  if (v19)
  {
    v49 |= 4u;
  }

  if (hasFormula)
  {
    v49 |= 8u;
  }

  if (hasFormulaSyntaxError)
  {
    v49 |= 0x100u;
  }

  if (hasRichText)
  {
    v49 |= 0x200u;
  }

  if (hasCommentStorage)
  {
    v49 |= 0x1000u;
  }

  if (hasImportWarningSet)
  {
    v50 = v49 | 0x2000;
  }

  else
  {
    v50 = v49;
  }

  v51 = objc_msgSend_valueType(v3, v45, v46, v47, v48);
  if (v51 == 10)
  {
    v52 = 2;
  }

  else
  {
    v53 = a2[8];
    v54 = v50 | 0x10;
    if (v51 != 3)
    {
      v54 = v50;
    }

    if (v53)
    {
      v52 = 2;
    }

    else
    {
      v52 = v51;
    }

    if (!v53)
    {
      v50 = v54;
    }
  }

  v55 = (v52 & 0xFB) == 2 || v52 == 7;
  v56 = v50 | 0x20;
  if (!v55)
  {
    v56 = v50;
  }

  if (v52 == 5)
  {
    v57 = v56 | 0x40;
  }

  else
  {
    v57 = v56;
  }

  return v57;
}

uint64_t sub_221395FC4(_DWORD *a1)
{
  v1 = a1[1];
  v2 = v1 == 0;
  v3 = v1 != 0;
  if (v2)
  {
    v4 = 8;
  }

  else
  {
    v4 = 9;
  }

  if (a1[2])
  {
    v3 = v4;
  }

  if (a1[3])
  {
    v3 |= 2u;
  }

  if (a1[4])
  {
    v3 |= 4u;
  }

  if (a1[7])
  {
    v3 |= 0x10u;
  }

  if (a1[6])
  {
    v3 |= 0x20u;
  }

  if (a1[5])
  {
    v3 |= 0x40u;
  }

  if (a1[8])
  {
    v3 |= 0x80u;
  }

  return v3;
}

uint64_t sub_22139603C(unsigned int a1, uint16x8_t a2)
{
  if (a1)
  {
    a2.i32[0] = a1;
    v2 = vshlq_u16(vdupq_n_s16(a1), xmmword_2217E18C0);
    v2.i16[0] = vshlq_u16(a2, xmmword_2217E18B0).u16[0];
    v3.i64[0] = 0x4000400040004;
    v3.i64[1] = 0x4000400040004;
    v4 = vandq_s8(v2, v3);
    v4.i16[0] = vaddvq_s16(v4);
    return (v4.i32[0] + ((a1 >> 5) & 4) + (a1 & 4) + ((a1 >> 2) & 4) + ((a1 >> 2) & 8) + ((a1 >> 3) & 8));
  }

  else
  {
    LOWORD(v5) = 0;
  }

  return v5;
}

void sub_2213960B8(unsigned __int8 *a1, void *a2)
{
  v58 = a2;
  if (*a1 >= 2u)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "void TSTV1CellStorageToCell(TSTV1CellStorage *, TSTCell_PreBNC *__strong)", v4, v5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage_Deprecated.mm", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 329, 0, "wrong version of the storage used here");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  }

  objc_msgSend_setValueType_(v58, v3, a1[2], v4, v5);
  objc_msgSend_setCellFlags_(v58, v17, *(a1 + 3), v18, v19);
  v25 = *(a1 + 1);
  v26 = v25;
  if ((v25 & 2) != 0)
  {
    objc_msgSend_setCellStyleID_(v58, v20, *(a1 + 2), v22, v23);
    v28 = v26 & 0xFFFC;
    v27 = 4;
    if ((v26 & 0x80) == 0)
    {
LABEL_5:
      if ((v28 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v27 = 0;
    v28 = v25 & 0xFFFE;
    if ((v25 & 0x80) == 0)
    {
      goto LABEL_5;
    }
  }

  objc_msgSend_setTextStyleID_(v58, v20, *&a1[v27 + 8], v22, v23);
  v27 += 4;
  v28 = v28 & 0xFF7E;
  if ((v28 & 4) == 0)
  {
LABEL_6:
    if ((v28 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  objc_msgSend_setCurrentFormatID_(v58, v20, *&a1[v27 + 8], v22, v23);
  v27 += 4;
  v28 = v28 & 0xFFFFFFFB;
  if ((v28 & 8) == 0)
  {
LABEL_7:
    if ((v28 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  objc_msgSend_setFormulaID_(v58, v20, *&a1[v27 + 8], v22, v23);
  v27 += 4;
  v28 = v28 & 0xFFF7;
  if ((v28 & 0x100) == 0)
  {
LABEL_8:
    if ((v28 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  objc_msgSend_setFormulaSyntaxErrorID_(v58, v20, *&a1[v27 + 8], v22, v23);
  v27 += 4;
  v28 = v28 & 0xFEFF;
  if ((v28 & 0x200) == 0)
  {
LABEL_9:
    if ((v28 & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  objc_msgSend_setRichTextID_(v58, v20, *&a1[v27 + 8], v22, v23);
  v27 += 4;
  v28 = v28 & 0xFDFF;
  if ((v28 & 0x1000) == 0)
  {
LABEL_10:
    if ((v28 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  objc_msgSend_setCommentStorageID_(v58, v20, *&a1[v27 + 8], v22, v23);
  v27 += 4;
  v28 = v28 & 0xEFFF;
  if ((v28 & 0x10) == 0)
  {
LABEL_11:
    if ((v28 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  objc_msgSend_setStringID_(v58, v20, *&a1[v27 + 8], v22, v23);
  v27 += 4;
  v28 = v28 & 0xFFEF;
  if ((v28 & 0x20) == 0)
  {
LABEL_12:
    if ((v28 & 0x40) == 0)
    {
      goto LABEL_13;
    }

LABEL_29:
    v31 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v20, v21, v22, v23, *&a1[v27 + 8]);
    objc_msgSend_setDateValue_(v58, v32, v31, v33, v34);

    v27 += 8;
    v28 = v28 & 0xFFBF;
    if (!v28)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_23:
  v29 = *&a1[v27 + 8];
  v30 = a1[2];
  if (v30 == 7)
  {
    objc_msgSend_setDurationTimeIntervalValue_(v58, v20, v21, v22, v23, v29);
  }

  else if (v30 == 6)
  {
    objc_msgSend_setBoolValue_(v58, v20, v29 != 0.0, v22, v23);
  }

  else
  {
    objc_msgSend_setDoubleValue_(v58, v20, v21, v22, v23, v29);
  }

  v27 += 8;
  v28 = v28 & 0xFFDF;
  if ((v28 & 0x40) != 0)
  {
    goto LABEL_29;
  }

LABEL_13:
  if (v28)
  {
LABEL_30:
    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "void TSTV1CellStorageToCell(TSTV1CellStorage *, TSTCell_PreBNC *__strong)", v22, v23);
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage_Deprecated.mm", v38, v39);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v41, v36, v40, 428, 0, "Failed to process all storage elements in TSTV1CellStorageToCell! Starting flags:%u Final flags:%u", v26, v28);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44, v45);
  }

LABEL_31:
  if (*(a1 + 2))
  {
    v46 = (sub_22139603C(*(a1 + 2), v24) + 8);
  }

  else
  {
    v46 = 8;
  }

  if (v27 + 8 != v46)
  {
    v47 = MEMORY[0x277D81150];
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "void TSTV1CellStorageToCell(TSTV1CellStorage *, TSTCell_PreBNC *__strong)", v22, v23);
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage_Deprecated.mm", v50, v51);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v53, v48, v52, 431, 0, "Size miscalculation!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56, v57);
  }
}

void sub_2213964BC(unsigned __int8 *a1, void *a2)
{
  v66 = a2;
  if (*a1 >= 4u)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "void TSTV3CellStorageToCell(TSTV3CellStorage *, TSTCell_PreBNC *__strong)", v4, v5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage_Deprecated.mm", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 455, 0, "wrong version of the storage used here");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  }

  objc_msgSend_setValueType_(v66, v3, a1[2], v4, v5);
  objc_msgSend_setCellFlags_(v66, v17, *(a1 + 3), v18, v19);
  objc_msgSend_setExplicitFormatFlags_(v66, v20, *(a1 + 4), v21, v22);
  v28 = *(a1 + 4);
  v29 = v28;
  if ((v28 & 2) != 0)
  {
    objc_msgSend_setCellStyleID_(v66, v23, *(a1 + 3), v25, v26);
    v31 = v28 & 0xFFFD;
    v30 = 4;
  }

  else
  {
    v30 = 0;
    v31 = *(a1 + 4);
  }

  v32 = v66;
  if ((v31 & 0x80) != 0)
  {
    objc_msgSend_setTextStyleID_(v66, v23, *&a1[v30 + 12], v25, v26);
    v30 += 4;
    v31 = v31 & 0xFF7F;
    v32 = v66;
  }

  if ((v31 & 0x400) != 0)
  {
    objc_msgSend_setConditionalStyleID_(v32, v23, *&a1[v30 + 12], v25, v26);
    v30 += 4;
    v31 = v31 & 0xFBFF;
    v32 = v66;
  }

  if ((v31 & 0x800) != 0)
  {
    objc_msgSend_setConditionalStyleAppliedRule_(v32, v23, a1[v30 + 12], v25, v26);
    v30 += 4;
    v31 = v31 & 0xF7FF;
    v32 = v66;
  }

  if ((v31 & 4) != 0)
  {
    objc_msgSend_setCurrentFormatID_(v32, v23, *&a1[v30 + 12], v25, v26);
    v30 += 4;
    v31 = v31 & 0xFFFB;
    v32 = v66;
  }

  if ((v31 & 8) != 0)
  {
    objc_msgSend_setFormulaID_(v32, v23, *&a1[v30 + 12], v25, v26);
    v30 += 4;
    v31 = v31 & 0xFFF7;
    v32 = v66;
  }

  if ((v31 & 0x100) != 0)
  {
    objc_msgSend_setFormulaSyntaxErrorID_(v32, v23, *&a1[v30 + 12], v25, v26);
    v30 += 4;
    v31 = v31 & 0xFEFF;
    v32 = v66;
  }

  if ((v31 & 0x200) != 0)
  {
    objc_msgSend_setRichTextID_(v32, v23, *&a1[v30 + 12], v25, v26);
    v30 += 4;
    v31 = v31 & 0xFDFF;
    v32 = v66;
  }

  if ((v31 & 0x1000) != 0)
  {
    objc_msgSend_setCommentStorageID_(v32, v23, *&a1[v30 + 12], v25, v26);
    v30 += 4;
    v31 = v31 & 0xEFFF;
    v32 = v66;
  }

  if ((v31 & 0x2000) != 0)
  {
    objc_msgSend_setImportWarningSetID_(v32, v23, *&a1[v30 + 12], v25, v26);
    v30 += 4;
    v31 = v31 & 0xDFFF;
    v32 = v66;
  }

  if ((v31 & 0x10) != 0)
  {
    objc_msgSend_setStringID_(v32, v23, *&a1[v30 + 12], v25, v26);
    v30 += 4;
    v31 = v31 & 0xFFEF;
    v32 = v66;
  }

  if ((v31 & 0x20) != 0)
  {
    v33 = *&a1[v30 + 12];
    v34 = a1[2];
    if (v34 == 7)
    {
      objc_msgSend_setDurationTimeIntervalValue_(v32, v23, v24, v25, v26, v33);
    }

    else if (v34 == 6)
    {
      objc_msgSend_setBoolValue_(v32, v23, v33 != 0.0, v25, v26);
    }

    else
    {
      objc_msgSend_setDoubleValue_(v32, v23, v24, v25, v26, v33);
    }

    v30 += 8;
    v31 = v31 & 0xFFDF;
    v32 = v66;
  }

  if ((v31 & 0x40) != 0)
  {
    v35 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v23, v24, v25, v26, *&a1[v30 + 12]);
    objc_msgSend_setDateValue_(v66, v36, v35, v37, v38);

    v30 += 8;
    v31 = v31 & 0xFFBF;
    v32 = v66;
  }

  v39 = HIWORD(v28);
  if ((v28 & 0x1000000000000) != 0)
  {
    objc_msgSend_setNumberFormatID_(v32, v23, *&a1[v30 + 12], v25, v26);
    v30 += 4;
    v40 = HIWORD(v28) & 0xFFFE;
    v32 = v66;
    if ((v28 & 0x8000000000000) == 0)
    {
LABEL_37:
      if ((v40 & 2) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_46;
    }
  }

  else
  {
    v40 = HIWORD(v28);
    if ((v28 & 0x8000000000000) == 0)
    {
      goto LABEL_37;
    }
  }

  objc_msgSend_setCurrencyFormatID_(v32, v23, *&a1[v30 + 12], v25, v26);
  LOWORD(v30) = v30 + 4;
  v40 = v40 & 0xFFFFFFF7;
  v32 = v66;
  if ((v40 & 2) == 0)
  {
LABEL_38:
    if ((v40 & 4) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_47;
  }

LABEL_46:
  objc_msgSend_setDateFormatID_(v32, v23, *&a1[v30 + 12], v25, v26);
  LOWORD(v30) = v30 + 4;
  v40 = v40 & 0xFFFD;
  v32 = v66;
  if ((v40 & 4) == 0)
  {
LABEL_39:
    if ((v40 & 0x10) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_48;
  }

LABEL_47:
  objc_msgSend_setDurationFormatID_(v32, v23, *&a1[v30 + 12], v25, v26);
  LOWORD(v30) = v30 + 4;
  v40 = v40 & 0xFFFB;
  v32 = v66;
  if ((v40 & 0x10) == 0)
  {
LABEL_40:
    if ((v40 & 0x20) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_49;
  }

LABEL_48:
  objc_msgSend_setControlFormatID_(v32, v23, *&a1[v30 + 12], v25, v26);
  LOWORD(v30) = v30 + 4;
  v40 = v40 & 0xFFEF;
  v32 = v66;
  if ((v40 & 0x20) == 0)
  {
LABEL_41:
    if ((v40 & 0x40) == 0)
    {
      goto LABEL_42;
    }

LABEL_50:
    objc_msgSend_setBaseFormatID_(v32, v23, *&a1[v30 + 12], v25, v26);
    LOWORD(v30) = v30 + 4;
    v40 = v40 & 0xFFBF;
    v32 = v66;
    if ((v40 & 0x80) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_49:
  objc_msgSend_setCustomFormatID_(v32, v23, *&a1[v30 + 12], v25, v26);
  LOWORD(v30) = v30 + 4;
  v40 = v40 & 0xFFDF;
  v32 = v66;
  if ((v40 & 0x40) != 0)
  {
    goto LABEL_50;
  }

LABEL_42:
  if ((v40 & 0x80) != 0)
  {
LABEL_51:
    objc_msgSend_setMultipleChoiceListFormatID_(v32, v23, *&a1[v30 + 12], v25, v26);
    LOWORD(v30) = v30 + 4;
    v40 = v40 & 0xFF7F;
  }

LABEL_52:
  if (v40 | v31)
  {
    v41 = MEMORY[0x277D81150];
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "void TSTV3CellStorageToCell(TSTV3CellStorage *, TSTCell_PreBNC *__strong)", v25, v26);
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage_Deprecated.mm", v44, v45);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v47, v42, v46, 629, 0, "Failed to process all storage elements in TSTV3CellStorageToCell! Starting flags:%u Final flags:%u Starting format flags:%u Final format flags:%u", v29, v31, v39, v40);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49, v50, v51);
  }

  if (v30 + 12 != sub_221395D54(*(a1 + 4), HIWORD(*(a1 + 4)), v27))
  {
    v55 = MEMORY[0x277D81150];
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "void TSTV3CellStorageToCell(TSTV3CellStorage *, TSTCell_PreBNC *__strong)", v53, v54);
    v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage_Deprecated.mm", v58, v59);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v61, v56, v60, 632, 0, "Size miscalculation!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v62, v63, v64, v65);
  }
}

void sub_221396A38(unsigned __int8 *a1, void *a2)
{
  v63 = a2;
  objc_msgSend_clear(v63, v3, v4, v5, v6);
  if (!a1 || !sub_221395C78(a1, v7, v8, v9, v10))
  {
    goto LABEL_63;
  }

  v14 = *a1;
  if (v14 <= 1)
  {
    sub_2213960B8(a1, v63);
    goto LABEL_63;
  }

  if (v14 <= 3)
  {
    sub_2213964BC(a1, v63);
    goto LABEL_63;
  }

  objc_msgSend_setValueType_(v63, v11, a1[1], v12, v13);
  objc_msgSend_setCellFlags_(v63, v15, *(a1 + 3), v16, v17);
  objc_msgSend_setExplicitFormatFlags_(v63, v18, *(a1 + 4), v19, v20);
  v26 = *(a1 + 1);
  v27 = *(a1 + 5);
  if ((*(a1 + 1) & 2) != 0)
  {
    objc_msgSend_setCellStyleID_(v63, v21, *(a1 + 3), v23, v24);
    v29 = v26 & 0xFFFFFFFD;
    v28 = 4;
    if ((v26 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v28 = 0;
  v29 = *(a1 + 1);
  if ((*(a1 + 1) & 0x80) != 0)
  {
LABEL_11:
    objc_msgSend_setTextStyleID_(v63, v21, *&a1[v28 + 12], v23, v24);
    v28 += 4;
    v29 = v29 & 0xFF7F;
  }

LABEL_12:
  if ((v29 & 0x400) != 0)
  {
    objc_msgSend_setConditionalStyleID_(v63, v21, *&a1[v28 + 12], v23, v24);
    v28 += 4;
    v29 = v29 & 0xFBFF;
  }

  if ((v29 & 0x800) != 0)
  {
    objc_msgSend_setConditionalStyleAppliedRule_(v63, v21, a1[v28 + 12], v23, v24);
    v28 += 4;
    v29 = v29 & 0xF7FF;
  }

  if ((v29 & 4) != 0)
  {
    objc_msgSend_setCurrentFormatID_(v63, v21, *&a1[v28 + 12], v23, v24);
    v28 += 4;
    v29 = v29 & 0xFFFB;
  }

  if ((v29 & 8) != 0)
  {
    objc_msgSend_setFormulaID_(v63, v21, *&a1[v28 + 12], v23, v24);
    v28 += 4;
    v29 = v29 & 0xFFF7;
  }

  if ((v29 & 0x100) != 0)
  {
    objc_msgSend_setFormulaSyntaxErrorID_(v63, v21, *&a1[v28 + 12], v23, v24);
    v28 += 4;
    v29 = v29 & 0xFEFF;
  }

  if ((v29 & 0x200) != 0)
  {
    objc_msgSend_setRichTextID_(v63, v21, *&a1[v28 + 12], v23, v24);
    v28 += 4;
    v29 = v29 & 0xFDFF;
  }

  if ((v29 & 0x1000) != 0)
  {
    objc_msgSend_setCommentStorageID_(v63, v21, *&a1[v28 + 12], v23, v24);
    v28 += 4;
    v29 = v29 & 0xEFFF;
  }

  if ((v29 & 0x2000) != 0)
  {
    objc_msgSend_setImportWarningSetID_(v63, v21, *&a1[v28 + 12], v23, v24);
    v28 += 4;
    v29 = v29 & 0xDFFF;
  }

  if ((v29 & 0x10) != 0)
  {
    objc_msgSend_setStringID_(v63, v21, *&a1[v28 + 12], v23, v24);
    v28 += 4;
    v29 = v29 & 0xFFEF;
  }

  if ((v29 & 0x20) != 0)
  {
    v30 = *&a1[v28 + 12];
    v31 = a1[1];
    if (v31 == 7)
    {
      objc_msgSend_setDurationTimeIntervalValue_(v63, v21, v22, v23, v24, v30);
    }

    else if (v31 == 6)
    {
      objc_msgSend_setBoolValue_(v63, v21, v30 != 0.0, v23, v24);
    }

    else
    {
      objc_msgSend_setDoubleValue_(v63, v21, v22, v23, v24, v30);
    }

    v28 += 8;
    v29 = v29 & 0xFFDF;
  }

  if ((v29 & 0x40) != 0)
  {
    v32 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v21, v22, v23, v24, *&a1[v28 + 12]);
    objc_msgSend_setDateValue_(v63, v33, v32, v34, v35);

    v28 += 8;
    v29 = v29 & 0xFFBF;
  }

  if ((v27 & 1) == 0)
  {
    v36 = v27;
    if ((v27 & 8) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  objc_msgSend_setNumberFormatID_(v63, v21, *&a1[v28 + 12], v23, v24);
  v28 += 4;
  v36 = v27 & 0xFFFE;
  if ((v27 & 8) != 0)
  {
LABEL_43:
    objc_msgSend_setCurrencyFormatID_(v63, v21, *&a1[v28 + 12], v23, v24);
    LOWORD(v28) = v28 + 4;
    v36 = v36 & 0xFFFFFFF7;
  }

LABEL_44:
  if ((v36 & 2) != 0)
  {
    objc_msgSend_setDateFormatID_(v63, v21, *&a1[v28 + 12], v23, v24);
    LOWORD(v28) = v28 + 4;
    v36 = v36 & 0xFFFD;
  }

  if ((v36 & 4) != 0)
  {
    objc_msgSend_setDurationFormatID_(v63, v21, *&a1[v28 + 12], v23, v24);
    LOWORD(v28) = v28 + 4;
    v36 = v36 & 0xFFFB;
  }

  if ((v36 & 0x10) != 0)
  {
    objc_msgSend_setControlFormatID_(v63, v21, *&a1[v28 + 12], v23, v24);
    LOWORD(v28) = v28 + 4;
    v36 = v36 & 0xFFEF;
  }

  if ((v36 & 0x20) != 0)
  {
    objc_msgSend_setCustomFormatID_(v63, v21, *&a1[v28 + 12], v23, v24);
    LOWORD(v28) = v28 + 4;
    v36 = v36 & 0xFFDF;
  }

  if ((v36 & 0x40) != 0)
  {
    objc_msgSend_setBaseFormatID_(v63, v21, *&a1[v28 + 12], v23, v24);
    LOWORD(v28) = v28 + 4;
    v36 = v36 & 0xFFBF;
  }

  if ((v36 & 0x80) != 0)
  {
    objc_msgSend_setMultipleChoiceListFormatID_(v63, v21, *&a1[v28 + 12], v23, v24);
    LOWORD(v28) = v28 + 4;
    v36 = v36 & 0xFF7F;
  }

  if (v36 | v29)
  {
    v37 = MEMORY[0x277D81150];
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "void TSTCellStorageToCell_PreBNC(TSTCellStoragePreBNC *, TSTCell_PreBNC *__strong)", v23, v24);
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage_Deprecated.mm", v40, v41);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v43, v38, v42, 853, 0, "Failed to process all storage elements in TSTCellStorageToCell! Starting flags:%u Final flags:%u Starting format flags:%u Final format flags:%u", v26, v29, v27, v36);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47);
  }

  if (*a1 < 2u)
  {
    v48 = 0;
  }

  else
  {
    v48 = *(a1 + 5);
  }

  if (v28 + 12 != sub_221395D54(*(a1 + 2), v48, v25))
  {
    v52 = MEMORY[0x277D81150];
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "void TSTCellStorageToCell_PreBNC(TSTCellStoragePreBNC *, TSTCell_PreBNC *__strong)", v50, v51);
    v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage_Deprecated.mm", v55, v56);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v58, v53, v57, 856, 0, "Size miscalculation!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v60, v61, v62);
  }

LABEL_63:
}

void sub_221396F78(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = a1;
  *a2 = 4;
  v59 = v5;
  v10 = objc_msgSend_valueType(v5, v6, v7, v8, v9);
  if (*(a3 + 32) || v10 == 10)
  {
    a2[1] = 2;
  }

  else
  {
    a2[1] = v10;
  }

  *(a2 + 2) = sub_221395E34(v59, a3);
  v15 = *(a2 + 2) & 0xFFFF0000FFFFFFFFLL | ((objc_msgSend_cellFlags(v59, v11, v12, v13, v14) & 0xFFFFFFFDLL) << 32);
  *(a2 + 2) = v15;
  v20 = sub_221395FC4(a3);
  *(a2 + 5) = v20;
  *(a2 + 2) = v15 & 0xFFFFFFFFFFFFLL | (*(a3 + 36) << 48);
  v22 = WORD1(v15);
  if (((v15 >> 16) & 2) != 0)
  {
    *(a2 + 3) = objc_msgSend_cellStyleID(v59, v16, v17, v18, v19);
    v24 = WORD1(v15) & 0xFFFD;
    v23 = 4;
    if ((v15 & 0x800000) == 0)
    {
LABEL_6:
      if ((v24 & 0x400) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v23 = 0;
    v24 = WORD1(v15);
    if ((v15 & 0x800000) == 0)
    {
      goto LABEL_6;
    }
  }

  *&a2[v23 + 12] = objc_msgSend_textStyleID(v59, v16, v17, v18, v19);
  v23 += 4;
  v24 = v24 & 0xFF7F;
  if ((v24 & 0x400) == 0)
  {
LABEL_7:
    if ((v24 & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  *&a2[v23 + 12] = objc_msgSend_conditionalStyleID(v59, v16, v17, v18, v19);
  v23 += 4;
  v24 = v24 & 0xFBFF;
  if ((v24 & 0x800) == 0)
  {
LABEL_8:
    if ((v24 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_28:
  *&a2[v23 + 12] = objc_msgSend_conditionalStyleAppliedRule(v59, v16, v17, v18, v19);
  v23 += 4;
  v24 = v24 & 0xF7FF;
  if ((v24 & 4) != 0)
  {
LABEL_9:
    *&a2[v23 + 12] = *a3;
    v23 += 4;
    v24 = v24 & 0xFFFB;
  }

LABEL_10:
  if ((v24 & 8) != 0)
  {
    *&a2[v23 + 12] = objc_msgSend_formulaID(v59, v16, v17, v18, v19);
    v23 += 4;
    v24 = v24 & 0xFFF7;
  }

  if ((v24 & 0x100) != 0)
  {
    *&a2[v23 + 12] = objc_msgSend_formulaSyntaxErrorID(v59, v16, v17, v18, v19);
    v23 += 4;
    v24 = v24 & 0xFEFF;
  }

  if ((v24 & 0x200) != 0)
  {
    *&a2[v23 + 12] = objc_msgSend_richTextID(v59, v16, v17, v18, v19);
    v23 += 4;
    v24 = v24 & 0xFDFF;
  }

  if ((v24 & 0x1000) != 0)
  {
    *&a2[v23 + 12] = objc_msgSend_commentStorageID(v59, v16, v17, v18, v19);
    v23 += 4;
    v24 = v24 & 0xEFFF;
  }

  if ((v24 & 0x2000) != 0)
  {
    *&a2[v23 + 12] = objc_msgSend_importWarningSetID(v59, v16, v17, v18, v19);
    v23 += 4;
    v24 = v24 & 0xDFFF;
  }

  if ((v24 & 0x10) != 0)
  {
    *&a2[v23 + 12] = objc_msgSend_stringID(v59, v16, v17, v18, v19);
    v23 += 4;
    v24 = v24 & 0xFFEF;
  }

  if ((v24 & 0x20) != 0)
  {
    if (*(a3 + 32))
    {
      *v21.i64 = objc_msgSend_popupChoiceIndex(v59, v16, v17, v18, v19);
    }

    else
    {
      objc_msgSend_underlyingDoubleValue(v59, v16, v17, v18, v19);
    }

    *&a2[v23 + 12] = v21.i64[0];
    v23 += 8;
    v24 = v24 & 0xFFDF;
  }

  if ((v24 & 0x40) != 0)
  {
    v25 = objc_msgSend_dateValue(v59, v16, v17, v18, v19);
    objc_msgSend_timeIntervalSinceReferenceDate(v25, v26, v27, v28, v29);
    v31 = v30;

    *&a2[v23 + 12] = v31;
    v23 += 8;
    v24 = v24 & 0xFFBF;
  }

  v32 = v20;
  if (v20)
  {
    *&a2[v23 + 12] = *(a3 + 4);
    v23 += 4;
    v32 = v20 & 0xFFFE;
    if ((v20 & 8) == 0)
    {
LABEL_37:
      if ((v32 & 2) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_50;
    }
  }

  else if ((v20 & 8) == 0)
  {
    goto LABEL_37;
  }

  *&a2[v23 + 12] = *(a3 + 8);
  LOWORD(v23) = v23 + 4;
  v32 = v32 & 0xFFFFFFF7;
  if ((v32 & 2) == 0)
  {
LABEL_38:
    if ((v32 & 4) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_51;
  }

LABEL_50:
  *&a2[v23 + 12] = *(a3 + 12);
  LOWORD(v23) = v23 + 4;
  v32 = v32 & 0xFFFD;
  if ((v32 & 4) == 0)
  {
LABEL_39:
    if ((v32 & 0x10) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_52;
  }

LABEL_51:
  *&a2[v23 + 12] = *(a3 + 16);
  LOWORD(v23) = v23 + 4;
  v32 = v32 & 0xFFFB;
  if ((v32 & 0x10) == 0)
  {
LABEL_40:
    if ((v32 & 0x20) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_53;
  }

LABEL_52:
  *&a2[v23 + 12] = *(a3 + 28);
  LOWORD(v23) = v23 + 4;
  v32 = v32 & 0xFFEF;
  if ((v32 & 0x20) == 0)
  {
LABEL_41:
    if ((v32 & 0x40) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_54;
  }

LABEL_53:
  *&a2[v23 + 12] = *(a3 + 24);
  LOWORD(v23) = v23 + 4;
  v32 = v32 & 0xFFDF;
  if ((v32 & 0x40) == 0)
  {
LABEL_42:
    if ((v32 & 0x80) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_54:
  *&a2[v23 + 12] = *(a3 + 20);
  LOWORD(v23) = v23 + 4;
  v32 = v32 & 0xFFBF;
  if ((v32 & 0x80) != 0)
  {
LABEL_43:
    *&a2[v23 + 12] = *(a3 + 32);
    LOWORD(v23) = v23 + 4;
    v32 = v32 & 0xFF7F;
  }

LABEL_44:
  if (v32 | v24)
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "void p_TSTCellToCellStoragePreBNC(TSTCell *__strong, TSTCellStoragePreBNC *, TSTNineKeyStructPreBNC *)", v18, v19);
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage_Deprecated.mm", v36, v37);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v39, v34, v38, 1267, 0, "Failed to process all storage elements in TSTCellToCellStorage! Starting flags:%u Final flags:%u Starting format flags:%u Final format flags:%u", v22, v24, v20, v32);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42, v43);
  }

  if (*a2 < 2u)
  {
    v44 = 0;
  }

  else
  {
    v44 = *(a2 + 5);
  }

  if (v23 + 12 != sub_221395D54(*(a2 + 2), v44, v21))
  {
    v48 = MEMORY[0x277D81150];
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "void p_TSTCellToCellStoragePreBNC(TSTCell *__strong, TSTCellStoragePreBNC *, TSTNineKeyStructPreBNC *)", v46, v47);
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage_Deprecated.mm", v51, v52);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v54, v49, v53, 1270, 0, "Size miscalculation!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56, v57, v58);
  }
}

uint64_t sub_221397900(uint64_t a1, uint64_t a2, TSUCellCoord a3, $925F2A0F20B28CD67DCCD182188DAC27 a4)
{
  v14.origin = a3;
  v14.size = a4;
  result = TSUCellRect::isValid(&v14);
  if (result)
  {
    result = TSUCellRect::isSingleCell(&v14);
    if ((result & 1) == 0)
    {
      v6 = *(a1 + 32);
      v7 = TSUCellRect::asString(&v14);
      objc_msgSend_appendString_(v6, v8, v7, v9, v10);

      return objc_msgSend_appendString_(*(a1 + 32), v11, @" ", v12, v13);
    }
  }

  return result;
}

void sub_221397E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_221397E90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221397EA8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_mergeIndexesForRange_(*(a1 + 32), a2, a2, a3, a5);
  v9 = *(*(a1 + 40) + 8);
  v12 = *(v9 + 40);
  v10 = (v9 + 40);
  v11 = v12;
  v13 = v6;
  if (v12)
  {
    objc_msgSend_addIndexes_(v11, v6, v6, v7, v8);
  }

  else
  {
    objc_storeStrong(v10, v6);
  }
}

void sub_221398578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 168), 8);
  sub_2210BC30C(va);

  _Unwind_Resume(a1);
}

__n128 sub_221398600(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_221398650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a1 + 40) + 8);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 120));
  v11 = objc_msgSend_columnRowUIDMap(WeakRetained, v7, v8, v9, v10);
  v14 = v11;
  if (v11)
  {
    objc_msgSend_cellUIDRangeForCellRange_(v11, v12, a2, a3, v13);
  }

  else
  {
    *__p = 0u;
    v17 = 0u;
    *v15 = 0u;
  }

  sub_221398734((v5 + 48), v15);
  if (__p[1])
  {
    *&v17 = __p[1];
    operator delete(__p[1]);
  }

  if (v15[0])
  {
    v15[1] = v15[0];
    operator delete(v15[0]);
  }
}

uint64_t sub_221398734(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_22116C87C(a1, a2);
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = *a2;
    v3[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v3[3] = 0;
    v3[4] = 0;
    v3[5] = 0;
    *(v3 + 3) = *(a2 + 24);
    v3[5] = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    result = (v3 + 6);
  }

  a1[1] = result;
  return result;
}

uint64_t sub_2213987B4(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  sub_2212C7250(a1 + 64);

  return TSCEFormulaRewriteContextRecord::operator=(a1 + 64, a2 + 64);
}

void sub_221398804(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_msgSend_formulaObjectAtIndex_(*(*(a1 + 32) + 96), a2, a2, a4, a5);
  v71 = xmmword_2217E18E0;
  if (v11)
  {
    v12 = *(*(a1 + 64) + 8);
    __p = objc_msgSend_coordFromIndex_(TSTFormulaStore, v7, a2, v9, v10);
    TSCEFormulaRewriteContext::setContainingCellCoord((v12 + 48), &__p);
    v16 = objc_msgSend_copyByRewritingReferencesToUidForm_(v11, v13, *(*(a1 + 64) + 8) + 48, v14, v15);
    objc_msgSend_addFormula_(*(a1 + 40), v17, v16, v18, v19);
    objc_msgSend_addFormulaIndex_(*(a1 + 40), v20, a2, v21, v22);
    *&v71 = objc_msgSend_cellRangeAtIndex_(*(*(a1 + 32) + 112), v23, a2, v24, v25);
    *(&v71 + 1) = v26;
  }

  v27 = *(a1 + 48);
  if (v27)
  {
    objc_msgSend_modelCellRanges(v27, v7, v8, v9, v10);
  }

  else
  {
    __p = 0;
    v68 = 0;
    v69 = 0;
  }

  v70.origin = TSUModelCellRect::largestWithoutRectsAndContainsCoord();
  v70.size = v28;
  if (__p)
  {
    v68 = __p;
    operator delete(__p);
  }

  isValid = TSUCellRect::isValid(&v70);
  v34 = *(a1 + 32);
  if (isValid)
  {
    v35 = objc_msgSend_mergeRangeCache(v34, v29, v30, v31, v32);
    objc_msgSend_setCellRange_atIndex_(v35, v36, *&v70.origin, *&v70.size, a2);

    origin = v70.origin;
    if (v70.origin.row != v71 || ((v71 ^ *&v70.origin) & 0x101FFFF00000000) != 0)
    {
      objc_msgSend_p_moveCellFromCellCoord_toCellCoord_(*(a1 + 32), v37, v71, *&v70.origin, v38);
      origin = v70.origin;
    }

    v40 = *(a1 + 32);
    v41 = *(v40 + 96);
    size = v70.size;
    WeakRetained = objc_loadWeakRetained((v40 + 120));
    __p = objc_msgSend_tableUID(WeakRetained, v44, v45, v46, v47);
    v68 = v48;
    v49 = objc_msgSend_createFormulaObjectForRange_atIndex_tableUID_(v41, v48, origin, size, a2, &__p);

    objc_msgSend_setFormulaObject_atIndex_formulaReplacer_(*(*(a1 + 32) + 96), v50, v49, a2, *(a1 + 56));
    objc_msgSend_setCellRange_atIndex_(*(*(a1 + 32) + 112), v51, *&v70.origin, *&v70.size, a2);
    v56 = objc_msgSend_mergeChangeDistributor(*(a1 + 32), v52, v53, v54, v55);
    objc_msgSend_didMergeRange_(v56, v57, *&v70.origin, *&v70.size, v58);
  }

  else
  {
    objc_msgSend_removeCellRangeAtIndex_(v34[14], v29, a2, v31, v32);
    objc_msgSend_clearFormulaAtIndex_formulaReplacer_(*(*(a1 + 32) + 96), v59, a2, *(a1 + 56), v60);
    v49 = objc_msgSend_mergeChangeDistributor(*(a1 + 32), v61, v62, v63, v64);
    objc_msgSend_didUnmergeRange_(v49, v65, v71, *(&v71 + 1), v66);
  }
}

void sub_221398D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 152), 8);
  sub_2210BC30C(va);

  _Unwind_Resume(a1);
}

void sub_221398DF4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*(a1 + 40) + 8);
  v8 = objc_msgSend_tableModel(*(a1 + 32), a2, a3, a4, a5);
  v13 = objc_msgSend_columnRowUIDMap(v8, v9, v10, v11, v12);
  v16 = v13;
  if (v13)
  {
    objc_msgSend_cellUIDRangeForCellRange_(v13, v14, a2, a3, v15);
  }

  else
  {
    memset(__p, 0, sizeof(__p));
    *v20 = 0u;
  }

  v17 = v7[7];
  if (v17 >= v7[8])
  {
    v18 = sub_22116C87C(v7 + 6, v20);
    v19 = __p[1];
    v7[7] = v18;
    if (v19)
    {
      __p[2] = v19;
      operator delete(v19);
    }
  }

  else
  {
    v17[2] = 0;
    v17[3] = 0;
    *v17 = 0;
    v17[1] = 0;
    *v17 = *v20;
    v17[2] = __p[0];
    v20[0] = 0;
    v20[1] = 0;
    v17[4] = 0;
    v17[5] = 0;
    *(v17 + 3) = *&__p[1];
    v17[5] = __p[3];
    memset(__p, 0, sizeof(__p));
    v7[7] = (v17 + 6);
  }

  if (v20[0])
  {
    v20[1] = v20[0];
    operator delete(v20[0]);
  }
}

void sub_221398F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_22109DBB8(&a9);

  _Unwind_Resume(a1);
}

void sub_221398F30(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_msgSend_formulaObjectAtIndex_(*(*(a1 + 32) + 96), a2, a2, a4, a5);
  if (v10)
  {
    if (*(a1 + 64) != 1 || (v11 = objc_msgSend_cellRangeAtIndex_(*(*(a1 + 32) + 112), v7, a2, v8, v9), v13 = v12, (objc_msgSend_containsModelCellCoord_(*(a1 + 40), v12, v11, v14, v15) & 1) == 0) && (objc_msgSend_partiallyIntersectsModelCellRect_(*(a1 + 40), v16, v11, v13, v17) & 1) != 0)
    {
      v18 = *(*(a1 + 56) + 8);
      v30 = objc_msgSend_coordFromIndex_(TSTFormulaStore, v7, a2, v8, v9);
      TSCEFormulaRewriteContext::setContainingCellCoord((v18 + 48), &v30);
      v19 = *(a1 + 48);
      v23 = objc_msgSend_copyByRewritingReferencesToUidForm_(v10, v20, *(*(a1 + 56) + 8) + 48, v21, v22);
      objc_msgSend_addFormula_(v19, v24, v23, v25, v26);

      objc_msgSend_addFormulaIndex_(*(a1 + 48), v27, a2, v28, v29);
    }
  }
}

void sub_2213993A8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_msgSend_formulaObjectAtIndex_(*(*(a1 + 32) + 96), a2, a2, a4, a5);
  if (v10)
  {
    v21 = objc_msgSend_coordFromIndex_(TSTFormulaStore, v7, a2, v8, v9);
    v13 = objc_msgSend_rangeFromFormulaObject_atCoord_(TSTFormulaStore, v11, v10, &v21, v12);
    v15 = v14;
    v19 = objc_msgSend_mergeRangeCache(*(a1 + 32), v14, v16, v17, v18);
    objc_msgSend_setCellRange_atIndex_(v19, v20, v13, v15, a2);
  }
}

void sub_221399540(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v13 = objc_msgSend_coordFromIndex_(TSTFormulaStore, v6, a2, v7, v8);
  v11 = objc_msgSend_rangeFromFormulaObject_atCoord_(TSTFormulaStore, v9, v5, &v13, v10);
  objc_msgSend_setCellRange_atIndex_(*(*(a1 + 32) + 112), v12, v11, v12, a2);
}

void sub_221399B24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19, uint64_t a20)
{
  v22 = *(v20 - 72);
  if (v22)
  {
    *(v20 - 64) = v22;
    operator delete(v22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_221399D28(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_removeCellRangeAtIndex_(*(*(a1 + 32) + 112), a2, a2, a4, a5);
  v10 = *(*(a1 + 32) + 96);

  return objc_msgSend_clearFormulaAtIndex_(v10, v7, a2, v8, v9);
}

void sub_22139A2A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, uint64_t a49, char a50)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a41, 8);
  if (__p)
  {
    a48 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&a50, 8);
  sub_22107C2C0(&a22);
  _Block_object_dispose((v52 - 224), 8);
  sub_2210BC30C(&a22);

  _Unwind_Resume(a1);
}

__n128 sub_22139A380(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

__n128 sub_22139A3D0(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_22139A3F4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_22139A40C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a2;
  v10 = objc_msgSend_formulaObjectAtIndex_(*(*(a1 + 32) + 96), a2, a2, a4, a5);
  if (v10)
  {
    v11 = *(*(a1 + 40) + 8);
    v38 = objc_msgSend_coordFromIndex_(TSTFormulaStore, v7, a2, v8, v9);
    TSCEFormulaRewriteContext::setContainingCellCoord((v11 + 48), &v38);
    v42 = objc_msgSend_copyByRewritingReferencesToUidForm_(v10, v12, *(*(a1 + 40) + 8) + 48, v13, v14);
    v19 = objc_msgSend_const_astNodeArray(v42, v15, v16, v17, v18);
    sub_2212BC6C4(&v38, v19, (*(*(a1 + 40) + 8) + 48));
    TSCEASTStreamIterator::rewrite(&v38, v20, v21, v22, v23);
    sub_2210BAF64((*(*(a1 + 48) + 8) + 48), v39);
    sub_22139A5DC((*(*(a1 + 56) + 8) + 48), &v42);
    sub_2211531C0((*(*(a1 + 64) + 8) + 48), &v43);
    v37[0] = objc_msgSend_cellRangeAtIndex_(*(*(a1 + 32) + 112), v24, v43, v25, v26);
    v37[1] = v27;
    objc_msgSend_p_dirtyCellsForMerge_(*(a1 + 32), v27, v37, v28, v29);
    objc_msgSend_clearFormulaAtIndex_(*(*(a1 + 32) + 96), v30, v43, v31, v32);
    objc_msgSend_removeCellRangeAtIndex_(*(*(a1 + 32) + 112), v33, v43, v34, v35);
    v38 = &unk_2834A4000;
    if (__p)
    {
      v41 = __p;
      operator delete(__p);
    }

    if (v39[0])
    {
      v39[1] = v39[0];
      operator delete(v39[0]);
    }

    TSCEASTStreamIterator::~TSCEASTStreamIterator(&v38, v36);
  }
}

id sub_22139A5DC(void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_22107C148();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      sub_22107C1F0(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    sub_22107C098(a1, v13);
    v7 = a1[1];
    result = sub_22107C26C(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_22139A6BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void sub_22139ADF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28)
{
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}

void sub_22139AE64(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v14 = a3;
  v15 = a4;
  v5 = a1[5];
  if (a3 != v5 || (((v5 ^ a3) & 0x101FFFF00000000) == 0 ? (v6 = a4 == a1[6]) : (v6 = 0), !v6))
  {
    v7 = *(*(a1[4] + 8) + 40);
    v8 = sub_2210AFE68(&v14, a1 + 7);
    v11 = objc_msgSend_regionByAddingModelCellRect_(v7, v9, v8, v9, v10, v14, v15);
    v12 = *(a1[4] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

void sub_22139B7D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  v49 = *(v47 - 136);
  if (v49)
  {
    *(v47 - 128) = v49;
    operator delete(v49);
  }

  *(v47 - 240) = v47 - 112;
  sub_22107C2C0((v47 - 240));

  _Unwind_Resume(a1);
}

void sub_22139B9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a1 + 40) + 8);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 120));
  v11 = objc_msgSend_columnRowUIDMap(WeakRetained, v7, v8, v9, v10);
  v14 = v11;
  if (v11)
  {
    objc_msgSend_cellUIDRangeForCellRange_(v11, v12, a2, a3, v13);
  }

  else
  {
    *__p = 0u;
    v17 = 0u;
    *v15 = 0u;
  }

  sub_221398734((v5 + 48), v15);
  if (__p[1])
  {
    *&v17 = __p[1];
    operator delete(__p[1]);
  }

  if (v15[0])
  {
    v15[1] = v15[0];
    operator delete(v15[0]);
  }
}

void sub_22139BEAC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22139BFDC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22139C458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22139C470(uint64_t a1, uint64_t a2, TSUCellCoord a3, $925F2A0F20B28CD67DCCD182188DAC27 a4, _BYTE *a5)
{
  v8.origin = a3;
  v8.size = a4;
  result = TSUCellRect::isValid(&v8);
  if (result)
  {
    result = TSUCellRect::isSingleCell(&v8);
    if ((result & 1) == 0)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a5 = 1;
    }
  }

  return result;
}

void sub_22139C5A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22139C5CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *a5 = 1;
  *(*(*(result + 32) + 8) + 24) = 1;
  return result;
}

void sub_22139C6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_22139C6CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *a5 = 1;
  *(*(*(result + 32) + 8) + 24) = 1;
  return result;
}

uint64_t sub_22139D0D0(unint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 >= 0xF4240)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellRect TSUCellRangeFromRowRange(NSRange, TSUColumnRowSize)", a4, a5);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 382, 0, "out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  if (&a2[a1] >= 0xF4241)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellRect TSUCellRangeFromRowRange(NSRange, TSUColumnRowSize)", a4, a5);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v21, v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v24, v19, v23, 383, 0, "out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  return a1;
}

unint64_t sub_22139D234(unint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1;
  v6 = &a2[a1];
  if (a1 != 0x7FFFFFFFFFFFFFFFLL && v6 != 0)
  {
    if (a1 >= 0x3E8)
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellRect TSUCellRangeFromColumnRange(NSRange, TSUColumnRowSize)", a4, a5);
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v12, v13);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 373, 0, "out of bounds");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
    }

    if (v6 >= 0x3EA)
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellRect TSUCellRangeFromColumnRange(NSRange, TSUColumnRowSize)", a4, a5);
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v23, v24);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 374, 0, "out of bounds");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
    }
  }

  return v5 << 32;
}

void sub_22139D3A4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_msgSend_formulaObjectAtIndex_(*(*(a1 + 32) + 96), a2, a2, a4, a5);
  if (v10)
  {
    v30 = objc_msgSend_coordFromIndex_(TSTFormulaStore, v7, a2, v8, v9);
    v11 = *(a1 + 32);
    *v28 = v30;
    *&v28[8] = *(v11 + 136);
    sub_2212C7294(v29, v28);
    v29[48] = 1;
    v12 = *(a1 + 40);
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
    v15 = objc_msgSend_copyByRewritingWithSpec_calcEngine_containingCell_(v10, v14, v12, WeakRetained, v29);

    if (v10 != v15)
    {
      *v28 = objc_msgSend_rangeFromFormulaObject_atCoord_(TSTFormulaStore, v16, v15, &v30, v17);
      *&v28[8] = v18;
      isValid = TSUCellRect::isValid(v28);
      v23 = *(*(a1 + 32) + 96);
      if (isValid)
      {
        objc_msgSend_setFormulaObject_atIndex_(v23, v19, v15, a2, v21);
        objc_msgSend_setCellRange_atIndex_(*(*(a1 + 32) + 112), v24, *v28, *&v28[8], a2);
      }

      else
      {
        objc_msgSend_clearFormulaAtIndex_(v23, v19, a2, v20, v21);
        objc_msgSend_removeCellRangeAtIndex_(*(*(a1 + 32) + 112), v25, a2, v26, v27);
      }
    }
  }
}

__n128 sub_22139D8AC(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_22139D8D0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_22139D8E8(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_msgSend_formulaObjectAtIndex_(*(a1[4] + 96), a2, a2, a4, a5);
  if (v10)
  {
    v11 = objc_msgSend_coordFromIndex_(TSTFormulaStore, v7, a2, v8, v9);
    v12 = a1[4];
    v43 = v11;
    v44 = *(v12 + 136);
    sub_2212C7294(v45, &v43);
    v45[48] = 1;
    v13 = a1[5];
    WeakRetained = objc_loadWeakRetained((a1[4] + 128));
    v16 = objc_msgSend_copyByRewritingWithSpec_calcEngine_containingCell_(v10, v15, v13, WeakRetained, v45);

    if (v10 != v16)
    {
      v43 = objc_msgSend_coordFromIndex_(TSTFormulaStore, v17, a2, v18, v19);
      v22 = objc_msgSend_rangeFromFormulaObject_atCoord_(TSTFormulaStore, v20, v16, &v43, v21);
      v24 = v23;
      objc_msgSend_setFormulaObject_atIndex_(*(a1[4] + 96), v23, v16, a2, v25);
      v29 = *(a1[6] + 8);
      v31 = v29[7];
      v30 = v29[8];
      if (v31 >= v30)
      {
        v33 = v29[6];
        v34 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v33) >> 3);
        v35 = v34 + 1;
        if (v34 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_22107C148();
        }

        v36 = 0xAAAAAAAAAAAAAAABLL * ((v30 - v33) >> 3);
        if (2 * v36 > v35)
        {
          v35 = 2 * v36;
        }

        if (v36 >= 0x555555555555555)
        {
          v37 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v37 = v35;
        }

        if (v37)
        {
          sub_2210CDBC0((v29 + 6), v37);
        }

        v38 = 24 * v34;
        *v38 = v22;
        *(v38 + 8) = v24;
        *(v38 + 16) = a2;
        v32 = 24 * v34 + 24;
        v39 = v29[6];
        v40 = v29[7] - v39;
        v41 = (24 * v34 - v40);
        memcpy(v41, v39, v40);
        v42 = v29[6];
        v29[6] = v41;
        v29[7] = v32;
        v29[8] = 0;
        if (v42)
        {
          operator delete(v42);
        }
      }

      else
      {
        *v31 = v22;
        v31[1] = v24;
        v32 = (v31 + 3);
        v31[2] = a2;
      }

      v29[7] = v32;
      objc_msgSend_removeCellRangeAtIndex_(*(a1[4] + 112), v26, a2, v27, v28);
    }
  }
}

void sub_22139DC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2210BDEC0(va);

  _Unwind_Resume(a1);
}

void *sub_22139DE94(void *a1, unsigned int *a2)
{
  v2 = *a2 + 16 * *(a2 + 2);
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2 + 16 * *(a2 + 2);
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  v8 = *a2;
  while (1)
  {
    v9 = v7[1];
    if (v9 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v5)
    {
      goto LABEL_23;
    }

LABEL_22:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v10 = v7[2];
  v12 = v10 == v8;
  v11 = (v8 ^ v10) & 0x101FFFF00000000;
  v12 = v12 && v11 == 0;
  if (!v12)
  {
    goto LABEL_22;
  }

  return v7;
}

void sub_22139E164()
{
  v0 = objc_alloc_init(TSTCellSpec);
  v1 = qword_27CFB5498;
  qword_27CFB5498 = v0;
}

void sub_22139E2AC()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v4 = objc_msgSend_initWithProperties_(v0, v1, 913, v2, v3, 0);
  v5 = qword_27CFB54A8;
  qword_27CFB54A8 = v4;
}

__CFString *sub_22139EA64(int a1)
{
  if ((a1 - 1) > 7)
  {
    return @"TSTCellInteractionTypeValueEditing";
  }

  else
  {
    return off_278463C28[a1 - 1];
  }
}

void sub_22139EB88(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_22139EFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22139EFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a2 + 4);
  v7 = *(a2 + 12);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = objc_msgSend_tableInfo(*(a1 + 32), a2, a3, a4, a5);
  if (v9 != objc_msgSend_tableUID(v10, v11, v12, v13, v14))
  {

    goto LABEL_6;
  }

  v16 = v15;

  if (v8 != v16)
  {
LABEL_6:
    LOWORD(v6) = 0x7FFF;
    goto LABEL_7;
  }

  if (v6 != v7)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSTSortRuleReferenceTracker p_columnForTrackedReference:]_block_invoke", v18, v19);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSortRuleReferenceTracker.mm", v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 118, 0, "Ranges should be one column!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

LABEL_7:
  *(*(*(a1 + 40) + 8) + 24) = v6;
}

void sub_22139F9FC(uint64_t a1, void *a2)
{
  v14 = a2;
  objc_storeStrong((*(a1 + 32) + 48), a2);
  v8 = objc_msgSend_ownerUID(*(*(a1 + 32) + 48), v4, v5, v6, v7);
  v9 = *(a1 + 32);
  *(v9 + 8) = v8;
  *(v9 + 16) = v10;
  v11 = sub_2212C4A5C((*(a1 + 32) + 8), 6u);
  v12 = *(a1 + 32);
  *(v12 + 24) = v11;
  *(v12 + 32) = v13;
  *(*(a1 + 32) + 56) = 0;
}

int *sub_2213A00D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = *(v3 + 24);
  v6 = *v4;
  if (v5 < *v4)
  {
    *(v3 + 24) = v5 + 1;
    v7 = *&v4[2 * v5 + 2];
    goto LABEL_8;
  }

  if (v6 == *(v3 + 28))
  {
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v3 + 16));
    v4 = *(v3 + 32);
    v6 = *v4;
  }

  *v4 = v6 + 1;
  v7 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellReferenceArchive>(*(v3 + 16));
  v8 = *(v3 + 24);
  v9 = *(v3 + 32) + 8 * v8;
  *(v3 + 24) = v8 + 1;
  *(v9 + 8) = v7;
LABEL_8:

  return sub_2215C38E0(a2, v7);
}

void sub_2213A02F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2213A0314(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_2213A032C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = *(a2 + 2);
  v41 = *a2;
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  if (v7)
  {
    v8 = objc_msgSend_idMap(v7, a2, a3, a4, a5);
    v9 = v42;
    if (*(v8 + 144))
    {
      v9 = sub_2212602C8(v8, v42);
    }

    LOWORD(v42) = v9;
    v6 = *(a1 + 32);
  }

  result = sub_2212E0198((v6 + 24), &v41);
  if ((result & 1) == 0)
  {
    sub_2212DFCE8((*(a1 + 32) + 24), &v41);
    v14 = *(*(*(a1 + 40) + 8) + 40);
    if (v14)
    {
      v15 = v42;
      if (*(v14 + 16) == v42)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v15 = v42;
    }

    v16 = objc_msgSend_dgl_wholeOwnerDependenciesForOwnerID_(*(*(a1 + 32) + 8), v11, v15, v12, v13);
    v17 = *(*(a1 + 40) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    if (*(*(*(a1 + 40) + 8) + 40) || (result = *(*(a1 + 32) + 8)) != 0 && ((v20 = v42, objc_msgSend_dgl_registerOwnerID_owner_ownerIndex_(result, v19, v42, 0, 0), objc_msgSend_dgl_wholeOwnerDependenciesForOwnerID_(*(*(a1 + 32) + 8), v21, v20, v22, v23), v24 = objc_claimAutoreleasedReturnValue(), v25 = *(*(a1 + 40) + 8), v26 = *(v25 + 40), *(v25 + 40) = v24, v26, *(*(*(a1 + 40) + 8) + 40)) || (v30 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSCEWholeOwnerDependencies unpackAfterUnarchive]_block_invoke", v28, v29), v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEWholeOwnerDependencies.mm", v33, v34), v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v36, v31, v35, 116, 0, "NULL whole owner dependencies"), v35, v31, result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40), *(*(*(a1 + 40) + 8) + 40))))
    {
LABEL_11:
      sub_2213A09F0();
    }
  }

  return result;
}

uint64_t sub_2213A0A78(void *a1, uint64_t a2)
{
  v4 = a2 + 16;
  v5 = *(a2 + 16) + (*(a2 + 20) << 16);
  *(a2 + 8) = v5;
  v6 = sub_2213A0AC8(a1, v5, v4);
  sub_2210BD408(a1, a2, v6);
  return a2;
}

uint64_t sub_2213A0AC8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    sub_2213A0C38(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = *(v16 + 8);
    if (v14.u32[0] > 1uLL)
    {
      v20 = *(v16 + 8);
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    if (v19 == a2)
    {
      v21 = *(v16 + 16) == *a3 && *(a3 + 4) == *(v16 + 20);
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22 != (v17 & 1);
    v24 = v17 & v23;
    v17 |= v23;
  }

  while (v24 != 1);
  return result;
}

void sub_2213A0C38(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_2213A0D28(a1, prime);
    }
  }
}

void sub_2213A0D28(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_22107C238();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t *sub_2213A0EB0(void *a1, uint64_t a2)
{
  result = sub_2213A0F08(a1, a2);
  if (result)
  {
    v4 = result;
    do
    {
      v4 = *v4;
      if (!v4)
      {
        break;
      }
    }

    while (*(v4 + 4) == *a2 && *(v4 + 10) == *(a2 + 4));
  }

  return result;
}

uint64_t *sub_2213A0F08(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = *(a2 + 2);
  v5 = (*a2 + (v4 << 16));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (v3 + (v4 << 16));
    if (*&v2 <= v5)
    {
      v7 = v5 % v2.i32[0];
    }
  }

  else
  {
    v7 = (v2.i32[0] - 1) & v5;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (*(result + 4) == v3 && *(result + 10) == v4)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2213A0FCC(void *a1, uint64_t a2)
{
  v4 = sub_2213A0F08(a1, a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 1;
  do
  {
    v7 = v6;
    v8 = *v5;
    sub_2210CDD3C(a1, v5);
    if (!v8)
    {
      break;
    }

    v6 = v7 + 1;
    v9 = *(v8 + 16) == *a2 && *(v8 + 20) == *(a2 + 4);
    v5 = v8;
  }

  while (v9);
  return v7;
}

uint64_t sub_2213A1408(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_styleProviderStack(*(a1 + 32), a2, a3, a4, a5);

  if (!v6)
  {
    v11 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v7, v8, v9, v10);
    objc_msgSend_setStyleProviderStack_(*(a1 + 32), v12, v11, v13, v14);
  }

  v15 = objc_msgSend_styleProviderStack(*(a1 + 32), v7, v8, v9, v10);
  objc_msgSend_addPointer_(v15, v16, *(a1 + 40), v17, v18);

  v22 = *(a1 + 32);
  v23 = *(a1 + 40);

  return objc_msgSend_setStyleProvidingSource_(v22, v19, v23, v20, v21);
}

void sub_2213A1518(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_styleProviderStack(*(a1 + 32), a2, a3, a4, a5);

  if (v6)
  {
    v11 = objc_msgSend_styleProviderStack(*(a1 + 32), v7, v8, v9, v10);
    v16 = objc_msgSend_styleProviderStack(*(a1 + 32), v12, v13, v14, v15);
    v21 = objc_msgSend_count(v16, v17, v18, v19, v20);
    objc_msgSend_removePointerAtIndex_(v11, v22, v21 - 1, v23, v24);
  }

  v25 = objc_msgSend_styleProviderStack(*(a1 + 32), v7, v8, v9, v10);
  if (v25 && (v30 = v25, objc_msgSend_styleProviderStack(*(a1 + 32), v26, v27, v28, v29), v31 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend_count(v31, v32, v33, v34, v35), v31, v30, v36))
  {
    v38 = objc_msgSend_styleProviderStack(*(a1 + 32), v26, v37, v28, v29);
    v43 = objc_msgSend_styleProviderStack(*(a1 + 32), v39, v40, v41, v42);
    v48 = objc_msgSend_count(v43, v44, v45, v46, v47);
    v56 = objc_msgSend_pointerAtIndex_(v38, v49, v48 - 1, v50, v51);

    objc_msgSend_setStyleProvidingSource_(*(a1 + 32), v52, v56, v53, v54);
  }

  else
  {
    v55 = *(a1 + 32);

    objc_msgSend_setStyleProvidingSource_(v55, v26, 0, v28, v29);
  }
}

void sub_2213A1704(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_fixedColumnWidthStack(*(a1 + 32), a2, a3, a4, a5);

  if (!v6)
  {
    v17 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v7, v8, v9, v10);
    objc_msgSend_setFixedColumnWidthStack_(*(a1 + 32), v11, v17, v12, v13);
  }

  v18 = objc_msgSend_fixedColumnWidthStack(*(a1 + 32), v7, v8, v9, v10);
  objc_msgSend_addPointer_(v18, v14, *(a1 + 40), v15, v16);
}

void sub_2213A1820(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_fixedColumnWidthStack(*(a1 + 32), a2, a3, a4, a5);

  if (v6)
  {
    v24 = objc_msgSend_fixedColumnWidthStack(*(a1 + 32), v7, v8, v9, v10);
    v15 = objc_msgSend_fixedColumnWidthStack(*(a1 + 32), v11, v12, v13, v14);
    v20 = objc_msgSend_count(v15, v16, v17, v18, v19);
    objc_msgSend_removePointerAtIndex_(v24, v21, v20 - 1, v22, v23);
  }
}

void sub_2213A1E8C(void *a1, unint64_t a2, uint64_t *a3)
{
  v3 = (a1[1] - *a1) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    sub_2213B5ACC(a1, a2 - v3, a3);
  }
}

void sub_2213A1F98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = TSTLayoutEngine;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t sub_2213A2A30(void *a1, void *a2)
{
  v3 = a1;
  v8 = a2;
  if (!v8)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "TSTCellRange TSTLayoutEngineGetRangeForHint(TSTLayoutEngine *__strong, TSTLayoutHint *__strong)", v6, v7);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayoutEngine.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 747, 0, "invalid nil value for '%{public}s'", "layoutHint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  v20 = objc_msgSend_cellRange(v8, v4, v5, v6, v7);

  return v20;
}

uint64_t sub_2213A2C08(void *a1)
{
  v1 = a1;
  if ((objc_msgSend_isDynamicallyRepressingFrozenHeaderColumns(v1, v2, v3, v4, v5) & 1) != 0 || v1[552] != 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = objc_msgSend_dynamicRepResize(v1, v6, v7, v8, v9) ^ 1;
  }

  return v10;
}

uint64_t sub_2213A2C6C(void *a1)
{
  v1 = a1;
  if ((objc_msgSend_isDynamicallyRepressingFrozenHeaderRows(v1, v2, v3, v4, v5) & 1) != 0 || v1[553] != 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = objc_msgSend_dynamicRepResize(v1, v6, v7, v8, v9) ^ 1;
  }

  return v10;
}

BOOL sub_2213A4548(uint64_t a1, TSUCellCoord a2, $925F2A0F20B28CD67DCCD182188DAC27 a3)
{
  v4.origin = a2;
  v4.size = a3;
  return TSUCellRect::numRows(&v4) > 1;
}

uint64_t sub_2213A53FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2213A5414(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v136 = v3;
  v9 = objc_msgSend_cellID(v3, v5, v6, v7, v8);
  objc_msgSend_defaultPaddingForCellID_(v4, v10, v9, v11, v12);
  v14 = v13;
  v16 = v15;
  v17 = *(a1 + 32);
  v22 = objc_msgSend_cellID(v136, v18, v19, v20, v21);
  objc_msgSend_paddingForCellID_(v17, v23, v22, v24, v25);
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = v14 + v16;
  v39 = v30 + v34;
  if (v39 <= v38)
  {
    v40 = 0.0;
  }

  else
  {
    v40 = v39 - v38;
  }

  v41 = objc_msgSend_cell(v136, v26, v27, v28, v29);
  v46 = objc_msgSend_valueType(v41, v42, v43, v44, v45);

  if (v46 == 6)
  {
    objc_opt_class();
    v55 = objc_msgSend_context(*(a1 + 40), v51, v52, v53, v54);
    v60 = objc_msgSend_documentObject(v55, v56, v57, v58, v59);
    v61 = TSUCheckedDynamicCast();

    v62 = *(a1 + 32);
    v67 = objc_msgSend_cell(v136, v63, v64, v65, v66);
    v72 = objc_msgSend_cellID(v136, v68, v69, v70, v71);
    v74 = objc_msgSend_newTextEngineForCell_atCellID_textStyle_(v62, v73, v67, v72, 0);

    v75 = [TSTTextEngineDelegate alloc];
    v80 = objc_msgSend_typesettingLocale(v61, v76, v77, v78, v79);
    shouldHyphenate = objc_msgSend_shouldHyphenate(v61, v81, v82, v83, v84);
    v90 = objc_msgSend_styleProvidingSource(*(a1 + 32), v86, v87, v88, v89);
    shouldHyphenate_styleProvidingSource = objc_msgSend_initWithPadding_verticalAlignment_locale_shouldHyphenate_styleProvidingSource_(v75, v91, 0, v80, shouldHyphenate, v90, v31, v33, v35, v37);

    objc_msgSend_setDelegate_(v74, v93, shouldHyphenate_styleProvidingSource, v94, v95);
    v97 = objc_msgSend_layoutText_context_kind_minSize_maxSize_anchor_flags_(v74, v96, @"X", 0, 5, 15, 8.0, 8.0, 4294967300.0, 50000.0, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
    objc_msgSend_setDelegate_(v74, v98, 0, v99, v100);
    v101 = *(*(*(a1 + 48) + 8) + 24);
    sub_2213A5824(v97);
    v103 = v40 + v38 + v102 + *(a1 + 64) + *(a1 + 72);
    if (v101 >= v103)
    {
      v103 = v101;
    }

    *(*(*(a1 + 48) + 8) + 24) = v103;

LABEL_12:
    goto LABEL_16;
  }

  v104 = objc_msgSend_cell(v136, v47, v48, v49, v50);
  v109 = objc_msgSend_textStyle(v104, v105, v106, v107, v108);
  v110 = *(*(a1 + 56) + 8);
  v111 = *(v110 + 40);
  *(v110 + 40) = v109;

  if (objc_msgSend_isVariation(*(*(*(a1 + 56) + 8) + 40), v112, v113, v114, v115))
  {
    v120 = objc_msgSend_cell(v136, v116, v117, v118, v119);
    v61 = objc_msgSend_textStyle(v120, v121, v122, v123, v124);

    objc_msgSend_fontHeightOfParagraphStyle_(*(a1 + 32), v125, v61, v126, v127);
    v128 = *(*(a1 + 48) + 8);
    v130 = v40 + v38 + v129 + *(a1 + 64) + *(a1 + 72);
    if (*(v128 + 24) >= v130)
    {
      v130 = *(v128 + 24);
    }

    *(v128 + 24) = v130;
    goto LABEL_12;
  }

  v131 = *(*(a1 + 48) + 8);
  v132 = *(v131 + 24);
  v133 = *(*(a1 + 32) + 104);
  v134 = *(a1 + 64);
  v135 = *(a1 + 72);
  if (v132 < v40 + *(v133 + 8) + v134 + v135)
  {
    v132 = v40 + *(v133 + 8) + v134 + v135;
  }

  *(v131 + 24) = v132;
LABEL_16:
}

double sub_2213A5824(void *a1)
{
  v1 = a1;
  objc_msgSend_typographicBounds(v1, v2, v3, v4, v5);
  v7 = v6;
  objc_msgSend_frameBounds(v1, v8, v9, v10, v11);

  return v7;
}

void sub_2213A5978(uint64_t a1, unsigned int a2)
{
  if (a2 && *(a1 + 40) > a2)
  {
    v29 = *(*(*(a1 + 32) + 56) + 8 * a2);
    objc_msgSend_lockForWrite(v29, v4, v5, v6, v7);
    objc_msgSend_invalidateSpillStrokes(v29, v8, v9, v10, v11);
    objc_msgSend_unlock(v29, v12, v13, v14, v15);
    v16 = *(*(*(a1 + 32) + 80) + 8 * a2);
    objc_msgSend_lockForWrite(v16, v17, v18, v19, v20);
    objc_msgSend_invalidateSpillStrokes(v16, v21, v22, v23, v24);
    objc_msgSend_unlock(v16, v25, v26, v27, v28);
  }
}

void sub_2213A60DC(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 8);
        v3 -= 8;
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_2213B5C9C(a1, v5);
  }
}

void sub_2213A6164(uint64_t a1, unsigned int a2, void *a3, void *a4, _BYTE *a5)
{
  v37 = a3;
  v9 = a4;
  v10 = a2;
  v11 = *(*(*(a1 + 32) + 8) + 8 * a2);
  v16 = *(*(*(a1 + 32) + 32) + 8 * a2);
  if (v11 && !objc_msgSend_isDefaultsOnly(v11, v12, v13, v14, v15))
  {
    objc_msgSend_lockForWrite(v11, v12, v13, v14, v15);
    v17 = objc_msgSend_replaceDefaultStrokeLayerWith_(v11, v18, v37, v19, v20);
    objc_msgSend_unlock(v11, v21, v22, v23, v24);
    if (!v16)
    {
      goto LABEL_10;
    }
  }

  else if (v11 == v9)
  {
    v17 = 0;
    if (!v16)
    {
      goto LABEL_10;
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 8 * v10), a4);
    v17 = 1;
    if (!v16)
    {
      goto LABEL_10;
    }
  }

  if (!objc_msgSend_isDefaultsOnly(v16, v12, v13, v14, v15))
  {
    objc_msgSend_lockForWrite(v16, v25, v26, v27, v28);
    v29 = objc_msgSend_replaceDefaultStrokeLayerWith_(v16, v30, v37, v31, v32);
    objc_msgSend_unlock(v16, v33, v34, v35, v36);
    goto LABEL_14;
  }

LABEL_10:
  if (v16 == v9)
  {
    v29 = 0;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 32) + 8 * v10), a4);
    v29 = 1;
  }

LABEL_14:
  if ((*(a1 + 48) & 1) == 0 && !((*(a1 + 40) != v37) | (v17 | v29) & 1))
  {
    *a5 = 1;
  }
}

void sub_2213A631C(uint64_t a1, unsigned int a2, void *a3, void *a4, _BYTE *a5)
{
  v36 = a3;
  v9 = a4;
  v10 = *(*(*(a1 + 32) + 8) + 8 * a2);
  v15 = *(*(*(a1 + 32) + 32) + 8 * a2);
  if (v10 && !objc_msgSend_isDefaultsOnly(v10, v11, v12, v13, v14))
  {
    objc_msgSend_lockForWrite(v10, v11, v12, v13, v14);
    v16 = objc_msgSend_replaceDefaultStrokeLayerWith_(v10, v17, v36, v18, v19);
    if (*(a1 + 48) - 1 == a2)
    {
      objc_msgSend_invalidateCustomStrokes(v10, v20, v21, v22, v23);
    }

    objc_msgSend_unlock(v10, v20, v21, v22, v23);
    if (!v15)
    {
      goto LABEL_12;
    }
  }

  else if (v10 == v9)
  {
    v16 = 0;
    if (!v15)
    {
      goto LABEL_12;
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 8 * a2), a4);
    v16 = 1;
    if (!v15)
    {
      goto LABEL_12;
    }
  }

  if (!objc_msgSend_isDefaultsOnly(v15, v11, v12, v13, v14))
  {
    objc_msgSend_lockForWrite(v15, v24, v25, v26, v27);
    v31 = objc_msgSend_replaceDefaultStrokeLayerWith_(v15, v28, v36, v29, v30);
    objc_msgSend_unlock(v15, v32, v33, v34, v35);
    goto LABEL_16;
  }

LABEL_12:
  if (v15 != v9)
  {
    objc_storeStrong((*(*(a1 + 32) + 32) + 8 * a2), a4);
    goto LABEL_19;
  }

  v31 = 0;
LABEL_16:
  if (!((*(a1 + 40) != v36) | v16 & 1) && (v31 & 1) == 0)
  {
    *a5 = 1;
  }

LABEL_19:
}

void sub_2213A64E8(uint64_t a1, unsigned int a2, void *a3, void *a4, _BYTE *a5)
{
  v37 = a3;
  v9 = a4;
  v10 = a2;
  v11 = *(*(*(a1 + 32) + 56) + 8 * a2);
  v16 = *(*(*(a1 + 32) + 80) + 8 * a2);
  if (v11 && !objc_msgSend_isDefaultsOnly(v11, v12, v13, v14, v15))
  {
    objc_msgSend_lockForWrite(v11, v12, v13, v14, v15);
    v17 = objc_msgSend_replaceDefaultStrokeLayerWith_(v11, v18, v37, v19, v20);
    objc_msgSend_unlock(v11, v21, v22, v23, v24);
    if (!v16)
    {
      goto LABEL_10;
    }
  }

  else if (v11 == v9)
  {
    v17 = 0;
    if (!v16)
    {
      goto LABEL_10;
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 56) + 8 * v10), a4);
    v17 = 1;
    if (!v16)
    {
      goto LABEL_10;
    }
  }

  if (!objc_msgSend_isDefaultsOnly(v16, v12, v13, v14, v15))
  {
    objc_msgSend_lockForWrite(v16, v25, v26, v27, v28);
    v32 = objc_msgSend_replaceDefaultStrokeLayerWith_(v16, v29, v37, v30, v31);
    objc_msgSend_unlock(v16, v33, v34, v35, v36);
    goto LABEL_14;
  }

LABEL_10:
  if (v16 != v9)
  {
    objc_storeStrong((*(*(a1 + 32) + 80) + 8 * v10), a4);
    goto LABEL_17;
  }

  v32 = 0;
LABEL_14:
  if (!((*(a1 + 40) != v37) | v17 & 1) && (v32 & 1) == 0)
  {
    *a5 = 1;
  }

LABEL_17:
}

void sub_2213A6694(uint64_t a1, unsigned int a2, void *a3, void *a4, _BYTE *a5)
{
  v36 = a3;
  v9 = a4;
  v10 = *(*(*(a1 + 32) + 56) + 8 * a2);
  v15 = *(*(*(a1 + 32) + 80) + 8 * a2);
  if (v10 && !objc_msgSend_isDefaultsOnly(v10, v11, v12, v13, v14))
  {
    objc_msgSend_lockForWrite(v10, v11, v12, v13, v14);
    v16 = objc_msgSend_replaceDefaultStrokeLayerWith_(v10, v17, v36, v18, v19);
    if (*(a1 + 48) - 1 == a2)
    {
      objc_msgSend_invalidateCustomStrokes(v10, v20, v21, v22, v23);
    }

    objc_msgSend_unlock(v10, v20, v21, v22, v23);
    if (!v15)
    {
      goto LABEL_12;
    }
  }

  else if (v10 == v9)
  {
    v16 = 0;
    if (!v15)
    {
      goto LABEL_12;
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 56) + 8 * a2), a4);
    v16 = 1;
    if (!v15)
    {
      goto LABEL_12;
    }
  }

  if (!objc_msgSend_isDefaultsOnly(v15, v11, v12, v13, v14))
  {
    objc_msgSend_lockForWrite(v15, v24, v25, v26, v27);
    v31 = objc_msgSend_replaceDefaultStrokeLayerWith_(v15, v28, v36, v29, v30);
    objc_msgSend_unlock(v15, v32, v33, v34, v35);
    goto LABEL_16;
  }

LABEL_12:
  if (v15 != v9)
  {
    objc_storeStrong((*(*(a1 + 32) + 80) + 8 * a2), a4);
    goto LABEL_19;
  }

  v31 = 0;
LABEL_16:
  if (!((*(a1 + 40) != v36) | v16 & 1) && (v31 & 1) == 0)
  {
    *a5 = 1;
  }

LABEL_19:
}

void sub_2213A7FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0xFFFF00000000) != 0x7FFF00000000 && a2 == 0x7FFFFFFF)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFFLL;
  }

  else
  {
    v6 = (HIDWORD(a3) + a2);
  }

  if (a2 != 0x7FFFFFFF && (a2 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v8 = 0;
  }

  else
  {
    v8 = WORD2(a2);
  }

  v9 = WORD2(a2);
  if (WORD2(a2) != 0x7FFF)
  {
    v9 = WORD2(a2) + a3;
  }

  v10 = v9;
  v11 = v5 - v6;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  if (v6 >= v5)
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v13 = v6;
  }

  if (v6 >= v5)
  {
    v11 = 0;
  }

  if (v5 < v6)
  {
    v13 = v5;
  }

  v65 = v8;
  v66 = v13;
  if (v5 < v6)
  {
    v14 = v6 - v5;
  }

  else
  {
    v14 = v11;
  }

  v15 = v8;
  v16 = v8 - v10;
  if (v10 >= v8)
  {
    v16 = 0;
  }

  else
  {
    v12 = v10;
  }

  if (v10 > v8)
  {
    v17 = v8;
  }

  else
  {
    v17 = v12;
  }

  if (v10 > v8)
  {
    v18 = v10 - v8;
  }

  else
  {
    v18 = v16;
  }

  if (v5 <= v6)
  {
    v19 = v5;
    do
    {
      if (v19 < v6)
      {
        v20 = *(*(*(a1 + 32) + 8) + 8 * v19);
        objc_msgSend_lockForWrite(v20, v21, v22, v23, v24);
        objc_msgSend_invalidateClearedStrokesInRange_(v20, v25, v17, v18, v26);
        objc_msgSend_unlock(v20, v27, v28, v29, v30);
      }

      if (v19 > v5)
      {
        v31 = *(*(*(a1 + 32) + 32) + 8 * v19);
        objc_msgSend_lockForWrite(v31, v32, v33, v34, v35);
        objc_msgSend_invalidateClearedStrokesInRange_(v31, v36, v17, v18, v37);
        objc_msgSend_unlock(v31, v38, v39, v40, v41);
      }

      ++v19;
    }

    while (v19 <= v6);
  }

  if (v10 >= v65)
  {
    v42 = v15;
    do
    {
      if (v42 < v10)
      {
        v43 = *(*(*(a1 + 32) + 56) + 8 * v42);
        objc_msgSend_lockForWrite(v43, v44, v45, v46, v47);
        objc_msgSend_invalidateClearedStrokesInRange_(v43, v48, v66, v14, v49);
        objc_msgSend_unlock(v43, v50, v51, v52, v53);
      }

      if (v42 > v15)
      {
        v54 = *(*(*(a1 + 32) + 80) + 8 * v42);
        objc_msgSend_lockForWrite(v54, v55, v56, v57, v58);
        objc_msgSend_invalidateClearedStrokesInRange_(v54, v59, v66, v14, v60);
        objc_msgSend_unlock(v54, v61, v62, v63, v64);
      }

      ++v42;
    }

    while (v10 + 1 != v42);
  }
}

unint64_t sub_2213A82DC(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  result = sub_221119E0C(a3, a4, *(a1 + 40), *(a1 + 48));
  if (result != 0x7FFFFFFF && (result & 0xFFFF00000000) != 0x7FFF00000000 && v6 >> 32 != 0 && v6 != 0)
  {
    if (result == 0x7FFFFFFF)
    {
      v10 = 0;
    }

    else
    {
      v10 = result;
    }

    if (result == 0x7FFFFFFF)
    {
      v11 = 0x7FFFFFFFLL;
    }

    else
    {
      v11 = (HIDWORD(v6) + result);
    }

    v12 = WORD2(result);
    if (WORD2(result) == 0x7FFF)
    {
      v13 = WORD2(result);
    }

    else
    {
      v13 = (WORD2(result) + v6);
    }

    if (WORD2(result) < (v13 - 1))
    {
      v14 = WORD2(result) + 1;
      do
      {
        result = objc_msgSend_setClearedStrokeForGridColumn_beginRow_endRow_(*(a1 + 32), v6, v14, v10, v11);
        v14 = (v14 + 1);
      }

      while (v14 <= v13 - 1);
    }

    v15 = v11 - 1;
    while (1)
    {
      v10 = (v10 + 1);
      if (v10 > v15)
      {
        break;
      }

      result = objc_msgSend_setClearedStrokeForGridRow_beginColumn_endColumn_(*(a1 + 32), v6, v10, v12, v13);
    }
  }

  return result;
}

void sub_2213A9190(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_strokeLayerForLeftSideOfColumn_(*(a1 + 32), a2, a2, a4, a5);
  v15 = objc_msgSend_strokeLayerForRightSideOfColumn_(*(a1 + 32), v8, a2, v9, v10);
  if (!(v7 | v15))
  {
    v15 = 0;
    v7 = 0;
    goto LABEL_10;
  }

  if (*(a1 + 40))
  {
    v16 = objc_msgSend_mutableCopy(v7, v11, v12, v13, v14);
    v21 = objc_msgSend_mutableCopy(v15, v17, v18, v19, v20);
    v22 = *(a1 + 40);
    v124 = MEMORY[0x277D85DD0];
    v125 = 3221225472;
    v126 = sub_2213A95C4;
    v127 = &unk_27845EBE8;
    v23 = v16;
    v128 = v23;
    v24 = v21;
    v129 = v24;
    objc_msgSend_enumerateRangesUsingBlock_(v22, v25, &v124, v26, v27);
    v28 = v23;

    v29 = v24;
    v15 = v29;
    v7 = v28;
  }

  if (*(a1 + 88) == 1)
  {
    v30 = objc_msgSend_strokeLayerModifiedByInsertingSpaceAt_(v7, v11, *(a1 + 56), *(a1 + 64), v14);

    v33 = objc_msgSend_strokeLayerModifiedByInsertingSpaceAt_(v15, v31, *(a1 + 56), *(a1 + 64), v32);
  }

  else
  {
    if (*(a1 + 89) != 1)
    {
      goto LABEL_10;
    }

    v30 = objc_msgSend_strokeLayerModifiedByRemovingRangeAt_(v7, v11, *(a1 + 56), *(a1 + 64), v14);

    v33 = objc_msgSend_strokeLayerModifiedByRemovingRangeAt_(v15, v34, *(a1 + 56), *(a1 + 64), v35);
  }

  v36 = v33;

  v15 = v36;
  v7 = v30;
LABEL_10:
  v37 = *(*(*(a1 + 48) + 56) + 8 * a2);
  isDefaultsOnly = objc_msgSend_isDefaultsOnly(v37, v38, v39, v40, v41);
  if (v7)
  {
    v47 = isDefaultsOnly;
  }

  else
  {
    v47 = 0;
  }

  if (v47 == 1 && (objc_msgSend_isEmpty(v7, v43, v44, v45, v46) & 1) == 0)
  {
    v48 = objc_msgSend_replacementWithDefaults(v37, v43, v44, v45, v46);

    objc_storeStrong((*(*(a1 + 48) + 56) + 8 * a2), v48);
    v37 = v48;
  }

  if ((objc_msgSend_isDefaultsOnly(v37, v43, v44, v45, v46, v124, v125, v126, v127) & 1) == 0)
  {
    hasSpillStrokeInRange = objc_msgSend_hasSpillStrokeInRange_(v37, v49, *(a1 + 72), *(a1 + 80), v50);
    objc_msgSend_lockForWrite(v37, v52, v53, v54, v55);
    objc_msgSend_replaceCustomStrokeLayerWith_(v37, v56, v7, v57, v58);
    objc_msgSend_invalidateSpillStrokes(v37, v59, v60, v61, v62);
    objc_msgSend_unlock(v37, v63, v64, v65, v66);
    if ((hasSpillStrokeInRange & 1) == 0)
    {
      if (objc_msgSend_isEligibleForDefaultsOnlyReplacement(v37, v67, v68, v69, v70))
      {
        v75 = objc_msgSend_strokesDefaultVendor(*(a1 + 48), v71, v72, v73, v74);
        v79 = objc_msgSend_strokeLayerStackForColumn_(v75, v76, a2, v77, v78);

        objc_storeStrong((*(*(a1 + 48) + 56) + 8 * a2), v79);
        v37 = v79;
      }
    }
  }

  v80 = (a2 + 1);
  v81 = *(*(*(a1 + 48) + 80) + 8 * v80);
  v86 = objc_msgSend_isDefaultsOnly(v81, v82, v83, v84, v85);
  if (v15)
  {
    v91 = v86;
  }

  else
  {
    v91 = 0;
  }

  if (v91 == 1 && (objc_msgSend_isEmpty(v15, v87, v88, v89, v90) & 1) == 0)
  {
    v92 = objc_msgSend_replacementWithDefaults(v81, v87, v88, v89, v90);

    objc_storeStrong((*(*(a1 + 48) + 80) + 8 * v80), v92);
    v81 = v92;
  }

  if ((objc_msgSend_isDefaultsOnly(v81, v87, v88, v89, v90) & 1) == 0)
  {
    v95 = objc_msgSend_hasSpillStrokeInRange_(v81, v93, *(a1 + 72), *(a1 + 80), v94);
    objc_msgSend_lockForWrite(v81, v96, v97, v98, v99);
    objc_msgSend_replaceCustomStrokeLayerWith_(v81, v100, v15, v101, v102);
    objc_msgSend_invalidateSpillStrokes(v81, v103, v104, v105, v106);
    objc_msgSend_unlock(v81, v107, v108, v109, v110);
    if ((v95 & 1) == 0)
    {
      if (objc_msgSend_isEligibleForDefaultsOnlyReplacement(v81, v111, v112, v113, v114))
      {
        v119 = objc_msgSend_strokesDefaultVendor(*(a1 + 48), v115, v116, v117, v118);
        v123 = objc_msgSend_strokeLayerStackForColumn_(v119, v120, v80, v121, v122);

        objc_storeStrong((*(*(a1 + 48) + 80) + 8 * v80), v123);
        v81 = v123;
      }
    }
  }
}

uint64_t sub_2213A95C4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = &a2[a3];
  if (&a2[a3] >= a2)
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = &a2[a3];
  }

  if (&a2[a3] < a2)
  {
    v8 = -a3;
  }

  else
  {
    v8 = 0;
  }

  if (a2 < v6)
  {
    v7 = a2;
    v8 = a3;
  }

  v9 = v6 == 0x7FFFFFFFFFFFFFFFLL;
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v7;
  }

  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 0;
    objc_msgSend_invalidateRange_(*(a1 + 32), 0x7FFFFFFFFFFFFFFFLL, v12, 0, a5);
  }

  else
  {
    v13 = v11;
    objc_msgSend_invalidateRange_(*(a1 + 32), a2, v12, v11, a5);
  }

  v16 = *(a1 + 40);

  return objc_msgSend_invalidateRange_(v16, v14, v12, v13, v15);
}

void sub_2213A9650(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2;
  if (*(a1 + 56) == 1)
  {
    v7 = objc_msgSend_modelRowForLayoutRow_(*(a1 + 32), a2, a2, a4, a5);
  }

  v8 = objc_msgSend_strokeLayerForTopOfRow_(*(a1 + 40), a2, v7, a4, a5);
  v16 = objc_msgSend_strokeLayerForBottomOfRow_(*(a1 + 40), v9, v7, v10, v11);
  if (v8 | v16)
  {
    if (*(a1 + 48))
    {
      v17 = objc_msgSend_mutableCopy(v8, v12, v13, v14, v15);
      v22 = objc_msgSend_mutableCopy(v16, v18, v19, v20, v21);
      v23 = *(a1 + 48);
      v104 = MEMORY[0x277D85DD0];
      v105 = 3221225472;
      v106 = sub_2213A99DC;
      v107 = &unk_27845EBE8;
      v24 = v17;
      v108 = v24;
      v25 = v22;
      v109 = v25;
      objc_msgSend_enumerateRangesUsingBlock_(v23, v26, &v104, v27, v28);
      v29 = v24;

      v30 = v25;
      v16 = v30;
      v8 = v29;
    }
  }

  else
  {
    v16 = 0;
    v8 = 0;
  }

  v31 = *(*(*(a1 + 32) + 8) + 8 * a2);
  isDefaultsOnly = objc_msgSend_isDefaultsOnly(v31, v32, v33, v34, v35);
  if (v8)
  {
    v41 = isDefaultsOnly;
  }

  else
  {
    v41 = 0;
  }

  if (v41 == 1 && (objc_msgSend_isEmpty(v8, v37, v38, v39, v40) & 1) == 0)
  {
    v42 = objc_msgSend_replacementWithDefaults(v31, v37, v38, v39, v40);

    objc_storeStrong((*(*(a1 + 32) + 8) + 8 * a2), v42);
    v31 = v42;
  }

  if ((objc_msgSend_isDefaultsOnly(v31, v37, v38, v39, v40, v104, v105, v106, v107) & 1) == 0)
  {
    objc_msgSend_lockForWrite(v31, v43, v44, v45, v46);
    objc_msgSend_replaceCustomStrokeLayerWith_(v31, v47, v8, v48, v49);
    objc_msgSend_unlock(v31, v50, v51, v52, v53);
    if (objc_msgSend_isEligibleForDefaultsOnlyReplacement(v31, v54, v55, v56, v57))
    {
      v62 = objc_msgSend_strokesDefaultVendor(*(a1 + 32), v58, v59, v60, v61);
      v66 = objc_msgSend_strokeLayerStackForRow_(v62, v63, a2, v64, v65);

      objc_storeStrong((*(*(a1 + 32) + 8) + 8 * a2), v66);
      v31 = v66;
    }
  }

  v67 = (a2 + 1);
  v68 = *(*(*(a1 + 32) + 32) + 8 * v67);
  v73 = objc_msgSend_isDefaultsOnly(v68, v69, v70, v71, v72);
  if (v16)
  {
    v78 = v73;
  }

  else
  {
    v78 = 0;
  }

  if (v78 == 1 && (objc_msgSend_isEmpty(v16, v74, v75, v76, v77) & 1) == 0)
  {
    v79 = objc_msgSend_replacementWithDefaults(v68, v74, v75, v76, v77);

    objc_storeStrong((*(*(a1 + 32) + 32) + 8 * v67), v79);
    v68 = v79;
  }

  if ((objc_msgSend_isDefaultsOnly(v68, v74, v75, v76, v77) & 1) == 0)
  {
    objc_msgSend_lockForWrite(v68, v80, v81, v82, v83);
    objc_msgSend_replaceCustomStrokeLayerWith_(v68, v84, v16, v85, v86);
    objc_msgSend_unlock(v68, v87, v88, v89, v90);
    if (objc_msgSend_isEligibleForDefaultsOnlyReplacement(v68, v91, v92, v93, v94))
    {
      v99 = objc_msgSend_strokesDefaultVendor(*(a1 + 32), v95, v96, v97, v98);
      v103 = objc_msgSend_strokeLayerStackForRow_(v99, v100, v67, v101, v102);

      objc_storeStrong((*(*(a1 + 32) + 32) + 8 * v67), v103);
      v68 = v103;
    }
  }
}

uint64_t sub_2213A99DC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = &a2[a3];
  if (&a2[a3] >= a2)
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = &a2[a3];
  }

  if (&a2[a3] < a2)
  {
    v8 = -a3;
  }

  else
  {
    v8 = 0;
  }

  if (a2 < v6)
  {
    v7 = a2;
    v8 = a3;
  }

  v9 = v6 == 0x7FFFFFFFFFFFFFFFLL;
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v7;
  }

  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 0;
    objc_msgSend_invalidateRange_(*(a1 + 32), 0x7FFFFFFFFFFFFFFFLL, v12, 0, a5);
  }

  else
  {
    v13 = v11;
    objc_msgSend_invalidateRange_(*(a1 + 32), a2, v12, v11, a5);
  }

  v16 = *(a1 + 40);

  return objc_msgSend_invalidateRange_(v16, v14, v12, v13, v15);
}

void sub_2213A9B34(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  if (a2)
  {
    objc_msgSend_lockForWriting(*(v6 + 904), a2, a3, a4, a5);
    v11 = objc_msgSend_intersectingColumnsIndexSet(*(a1 + 40), v7, v8, v9, v10);
    v16 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v12, v13, v14, v15);
    v17 = v47;
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = sub_2213A9E40;
    v47[3] = &unk_27845EBE8;
    v47[4] = *(a1 + 32);
    v18 = v16;
    v47[5] = v18;
    objc_msgSend_enumerateRangesUsingBlock_(v11, v19, v47, v20, v21);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = sub_2213A9ED4;
    v46[3] = &unk_27845E958;
    v46[4] = *(a1 + 32);
    objc_msgSend_enumerateIndexesWithOptions_usingBlock_(v18, v22, 1, v46, v23);
    objc_msgSend_unlock(*(*(a1 + 32) + 904), v24, v25, v26, v27);
  }

  else
  {
    objc_msgSend_lockForWriting(*(v6 + 912), 0, a3, a4, a5);
    v11 = objc_msgSend_intersectingRowsIndexSet(*(a1 + 40), v28, v29, v30, v31);
    v36 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v32, v33, v34, v35);
    v17 = v49;
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = sub_2213A9DA8;
    v49[3] = &unk_27845EBE8;
    v49[4] = *(a1 + 32);
    v18 = v36;
    v49[5] = v18;
    objc_msgSend_enumerateRangesUsingBlock_(v11, v37, v49, v38, v39);
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = sub_2213A9E34;
    v48[3] = &unk_27845E958;
    v48[4] = *(a1 + 32);
    objc_msgSend_enumerateIndexesWithOptions_usingBlock_(v18, v40, 1, v48, v41);
    objc_msgSend_unlock(*(*(a1 + 32) + 912), v42, v43, v44, v45);
  }
}

uint64_t sub_2213A9DA8(uint64_t a1, const char *a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  v8 = objc_msgSend_indexOfVisibleRowBeforeRowAtIndex_(*(a1 + 32), a2, a2, a4, a5);
  v12 = objc_msgSend_indexOfVisibleRowAfterRowAtIndex_(*(a1 + 32), v9, (v6 + a3 - 1), v10, v11);
  if (v12 == 0x7FFFFFFF)
  {
    v12 = objc_msgSend_numberOfRows(*(a1 + 32), v13, v14, v15, v16);
  }

  if (v8 == 0x7FFFFFFF)
  {
    v17 = 0;
  }

  else
  {
    v17 = v8;
  }

  v18 = (v12 + 2) - v17;
  v19 = *(a1 + 40);

  return objc_msgSend_addIndexesInRange_(v19, v13, v17, v18, v16);
}

uint64_t sub_2213A9E40(uint64_t a1, const char *a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  v8 = objc_msgSend_indexOfVisibleColumnBeforeColumnAtIndex_(*(a1 + 32), a2, a2, a4, a5);
  v12 = objc_msgSend_indexOfVisibleColumnAfterColumnAtIndex_(*(a1 + 32), v9, (v6 + a3 - 1), v10, v11);
  if (v12 == 0x7FFF)
  {
    v12 = objc_msgSend_numberOfColumns(*(a1 + 32), v13, v14, v15, v16);
  }

  if (v8 == 0x7FFF)
  {
    v17 = 0;
  }

  else
  {
    v17 = v8;
  }

  v18 = v12 - v17 + 2;
  v19 = *(a1 + 40);

  return objc_msgSend_addIndexesInRange_(v19, v13, v17, v18, v16);
}

void sub_2213AA164(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2213AA288(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v98 = objc_msgSend_newCell(*(a1 + 32), a2, a3, a4, a5);
  objc_msgSend_getDefaultCell_forTableStyleArea_(*(a1 + 32), v7, v98, a2, v8);
  v9 = objc_alloc_init(TSTCellStateForLayout);
  objc_msgSend_setModelCellID_(v9, v10, 0x7FFF7FFFFFFFLL, v11, v12);
  objc_msgSend_setCell_(v9, v13, v98, v14, v15);
  objc_msgSend_setCellPropsRowHeight_(v9, v16, 0, v17, v18);
  objc_msgSend_setNeedWPColumn_(v9, v19, 0, v20, v21);
  objc_msgSend_setCellWraps_(v9, v22, 0, v23, v24);
  objc_msgSend_setPaddingInsets_(v9, v25, v26, v27, v28, *MEMORY[0x277D81428], *(MEMORY[0x277D81428] + 8), *(MEMORY[0x277D81428] + 16), *(MEMORY[0x277D81428] + 24));
  objc_msgSend_setMinSize_(v9, v29, v30, v31, v32, 4294967300.0, 0.0);
  objc_msgSend_setMaxSize_(v9, v33, v34, v35, v36, 4294967300.0, 50000.0);
  objc_msgSend_setForDrawing_(v9, v37, 0, v38, v39);
  objc_msgSend_setLayoutMergeRange_(v9, v40, 0x7FFF7FFFFFFFLL, 0, v41);
  objc_msgSend_setInDynamicLayout_(v9, v42, 0, v43, v44);
  objc_msgSend_setCellContents_(v9, v45, @"Q", v46, v47);
  objc_msgSend_setLayoutCacheFlags_(v9, v48, 0, v49, v50);
  objc_msgSend_setPageNumber_(v9, v51, 0, v52, v53);
  objc_msgSend_setPageCount_(v9, v54, 0, v55, v56);
  objc_msgSend_measureWithLayoutState_(*(a1 + 40), v57, v9, v58, v59);
  objc_msgSend_sizeOfText(v9, v60, v61, v62, v63);
  v65 = v64;
  v69 = objc_msgSend_defaultCellStyleForTableStyleArea_(*(a1 + 32), v66, a2, v67, v68);
  v73 = objc_msgSend_valueForProperty_(v69, v70, 904, v71, v72);
  objc_msgSend_topInset(v73, v74, v75, v76, v77);
  v79 = v78;
  objc_msgSend_leftInset(v73, v80, v81, v82, v83);
  objc_msgSend_bottomInset(v73, v84, v85, v86, v87);
  v89 = v88;
  objc_msgSend_rightInset(v73, v90, v91, v92, v93);
  v97 = v65 + v79 + v89;
  if (v97 < 8.0)
  {
    v97 = 8.0;
  }

  objc_msgSend_p_setDefaultFontHeight_forTableStyleArea_(*(a1 + 40), v94, a2, v95, v96, v97);
}

uint64_t sub_2213AA890(void *a1, uint64_t a2)
{
  v3 = a1;
  v25 = xmmword_2217E0780;
  v12 = objc_msgSend_dynamicContentDelegate(v3, v4, v5, v6, v7);
  if (!v12 || (objc_msgSend_dynamicContentDelegate(v3, v8, v9, v10, v11), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_opt_respondsToSelector(), v13, v12, (v14 & 1) == 0) || (objc_msgSend_dynamicContentDelegate(v3, v8, v9, v10, v11), v15 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend_mergeRange_forCellID_(v15, v16, &v25, a2, v17), v15, (v18 & 1) == 0))
  {
    v19 = objc_msgSend_tableInfo(v3, v8, v9, v10, v11);
    *&v25 = objc_msgSend_mergeRangeAtCellID_(v19, v20, a2, v21, v22);
    *(&v25 + 1) = v23;
  }

  return v25;
}

uint64_t sub_2213AAC8C(void *a1, uint64_t a2)
{
  v3 = a1;
  if ((objc_msgSend_isDynamicallyRevealingRowsCols_rowColIndex_(v3, v4, 0, a2, v5) & 1) == 0)
  {
    if (objc_msgSend_isDynamicallyHidingRowsCols_rowColIndex_(v3, v6, 0, a2, v7))
    {
      v8 = 1;
      goto LABEL_5;
    }

    v14 = objc_msgSend_emptyFilteredTable(v3, v9, v10, v11, v12);
    if (a2)
    {
      v19 = 0;
    }

    else
    {
      v19 = v14;
    }

    if ((v19 & 1) == 0 && (objc_msgSend_processHiddenRowsForExport(v3, v15, v16, v17, v18) & 1) == 0)
    {
      v24 = objc_msgSend_tableInfo(v3, v20, v21, v22, v23);
      v8 = objc_msgSend_hidingActionForRowAtIndex_(v24, v25, a2, v26, v27);

      goto LABEL_5;
    }
  }

  v8 = 0;
LABEL_5:

  return v8;
}

uint64_t sub_2213AAD64(void *a1, uint64_t a2)
{
  v3 = a1;
  if ((objc_msgSend_isDynamicallyRevealingRowsCols_rowColIndex_(v3, v4, 1, a2, v5) & 1) == 0)
  {
    if (objc_msgSend_isDynamicallyHidingRowsCols_rowColIndex_(v3, v6, 1, a2, v7))
    {
      hasHiddenColumnAtIndex = 1;
      goto LABEL_10;
    }

    v13 = objc_msgSend_emptyFilteredTable(v3, v9, v10, v11, v12);
    if (a2)
    {
      v18 = 0;
    }

    else
    {
      v18 = v13;
    }

    if ((v18 & 1) == 0)
    {
      v19 = objc_msgSend_tableInfo(v3, v14, v15, v16, v17);
      hasHiddenColumnAtIndex = objc_msgSend_hasHiddenColumnAtIndex_(v19, v20, a2, v21, v22);

      goto LABEL_10;
    }
  }

  hasHiddenColumnAtIndex = 0;
LABEL_10:

  return hasHiddenColumnAtIndex;
}

uint64_t sub_2213AAE20(void *a1, uint64_t a2)
{
  v3 = a1;
  v11 = objc_msgSend_cellRange(v3, v4, v5, v6, v7);
  v12 = v8;
  if (a2)
  {
    hasHiddenRowAtIndex = objc_msgSend_hasHiddenRowAtIndex_(v3, v8, (a2 - 1), v9, v10);
  }

  else
  {
    hasHiddenRowAtIndex = 1;
  }

  if (v12 >> 32)
  {
    v14 = v11 == 0x7FFFFFFF;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v11 + HIDWORD(v12) - 1;
  }

  if (v15 >= a2)
  {
    v16 = objc_msgSend_hasHiddenRowAtIndex_(v3, v8, a2, v9, v10);
  }

  else
  {
    v16 = 1;
  }

  return hasHiddenRowAtIndex & v16;
}

uint64_t sub_2213AAEDC(void *a1, unsigned int a2)
{
  v3 = a1;
  v11 = objc_msgSend_cellRange(v3, v4, v5, v6, v7) >> 32;
  v12 = v8;
  if (a2)
  {
    hasHiddenColumnAtIndex = objc_msgSend_hasHiddenColumnAtIndex_(v3, v8, (a2 - 1), v9, v10);
  }

  else
  {
    hasHiddenColumnAtIndex = 1;
  }

  if (v12)
  {
    v14 = v11 == 0x7FFF;
  }

  else
  {
    v14 = 1;
  }

  v15 = (v12 + v11 - 1);
  if (v14)
  {
    v15 = 0x7FFF;
  }

  if (v15 >= a2)
  {
    v16 = objc_msgSend_hasHiddenColumnAtIndex_(v3, v8, a2, v9, v10);
  }

  else
  {
    v16 = 1;
  }

  return hasHiddenColumnAtIndex & v16;
}

void sub_2213AB6B4(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2213AB6F0(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_cell(a2, a2, a3, a4, a5);
  v12 = objc_msgSend_valueType(v7, v8, v9, v10, v11);

  if (v12)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }
}

void sub_2213AB80C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2213AB824(uint64_t a1, void *a2, _BYTE *a3)
{
  v30 = a2;
  v9 = objc_msgSend_cell(v30, v5, v6, v7, v8);
  v14 = objc_msgSend_valueType(v9, v10, v11, v12, v13);

  if (v14 == 6)
  {
    v19 = objc_msgSend_cell(v30, v15, v16, v17, v18);
    *(*(*(a1 + 32) + 8) + 24) = objc_msgSend_BOOLValue(v19, v20, v21, v22, v23);
  }

  else
  {
    v24 = objc_msgSend_cell(v30, v15, v16, v17, v18);
    v29 = objc_msgSend_valueType(v24, v25, v26, v27, v28);

    if (v29)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }

  *a3 = *(*(*(a1 + 32) + 8) + 24);
}

uint64_t sub_2213AB9B0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_2213AC3CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_2213AC4C4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_updateCellRange(*(a1 + 32), a2, a3, a4, a5);
  v32 = objc_msgSend_tableInfo(*(a1 + 32), v6, v7, v8, v9);
  objc_msgSend_validateTableNameEnabled(*(a1 + 32), v10, v11, v12, v13);
  objc_msgSend_validateBandedFill(*(a1 + 32), v14, v15, v16, v17);
  *(*(a1 + 32) + 576) = objc_msgSend_tableRowsBehaviorForTable_andEnvironment_(TSTLayoutEngine, v18, v32, *(*(a1 + 32) + 572), v19);
  objc_msgSend_validateDynamicResizeInfo(*(a1 + 32), v20, v21, v22, v23);
  objc_msgSend_validateChangeDescriptorQueue(*(a1 + 32), v24, v25, v26, v27);
  objc_msgSend_validateTableNameHeight(*(a1 + 32), v28, v29, v30, v31);
}

void sub_2213ACDB8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v33 = a2;
  if (objc_msgSend_changeDescriptor(v33, v6, v7, v8, v9) - 37 >= 2)
  {
    *(*(*(a1 + 40) + 8) + 48) = 0x7FFF7FFFFFFFLL;
    *a4 = 1;
    goto LABEL_19;
  }

  v14 = objc_msgSend_cellRegion(v33, v10, v11, v12, v13);
  if (objc_msgSend_isRectangle(v14, v15, v16, v17, v18))
  {
    v23 = objc_msgSend_boundingCellRange(v14, v19, v20, v21, v22);
    v24 = v19;
  }

  else
  {
    v24 = 0;
    v23 = 0x7FFF7FFFFFFFLL;
  }

  v25 = objc_msgSend_tableInfo(*(a1 + 32), v19, v20, v21, v22);
  isSingleCellOrMergeRange = objc_msgSend_isSingleCellOrMergeRange_(v25, v26, v23, v24, v27);

  v29 = *(*(a1 + 40) + 8);
  if (!isSingleCellOrMergeRange)
  {
LABEL_17:
    *(v29 + 48) = 0x7FFF7FFFFFFFLL;
    *a4 = 1;
    goto LABEL_18;
  }

  v30 = *(v29 + 48);
  if (v30 != 0x7FFFFFFF && (v30 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    if (v30 == v23 && ((v30 ^ v23) & 0xFFFF00000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  *(v29 + 48) = v23;
LABEL_18:

LABEL_19:
}

uint64_t sub_2213ACFD8(uint64_t a1, const char *a2, unint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v9 = a2;
  v11 = a9 + a7 + a6;
  v12 = a2 == 0x7FFFFFFF;
  v13 = a2 & 0xFFFF00000000;
  if (v12 && (a2 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v14 = 0;
  }

  else
  {
    v14 = a2;
  }

  v15 = HIDWORD(a3);
  if (!HIDWORD(a3))
  {
    v12 = 1;
  }

  if (v12)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = a2 + HIDWORD(a3) - 1;
  }

  if (v14 < v16)
  {
    v17 = (a2 & 0xFFFFFFFF00000000) + v14;
    v18 = MEMORY[0x277CBF3A8];
    do
    {
      objc_msgSend_heightOfRow_skipDynamicSwap_withStrokeHeights_returnZeroIfHidden_clampToPartitionSize_maximumPartitionSize_outIsFitting_(*(a1 + 32), a2, v17, 0, 1, 1, 0, 0, *v18, v18[1]);
      if (v22 < 8.0)
      {
        v22 = 8.0;
      }

      v11 = v11 - v22;
      objc_msgSend_setFitHeight_forCellID_(*(*(a1 + 32) + 664), v19, v17++, v20, v21, 8.0);
    }

    while (v16 != v17);
  }

  v23 = 8.0;
  if (v11 >= 8.0)
  {
    v23 = v11;
  }

  v24 = *(*(a1 + 32) + 664);

  return objc_msgSend_setFitHeight_forCellID_(v24, a2, (v9 + v15 - 1) | v13, a4, a5, v23);
}

void sub_2213ADF8C(_Unwind_Exception *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2213AE008(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_cellID(v3, v4, v5, v6, v7);
  v13 = objc_msgSend_mergeRange(v3, v9, v10, v11, v12);
  v15 = v14;
  v36.origin = v13;
  v36.size = v14;
  v20 = objc_msgSend_cell(v3, v14, v16, v17, v18);
  if (*(a1 + 96))
  {
    if ((TSUCellRect::isValid(&v36) & 1) == 0)
    {
      v24 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSTLayoutEngine p_validateFittingInfoWithCellRangeWorker:widthHeightCollection:containsMerges:validationBundle:]_block_invoke", v22, v23);
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayoutEngine.mm", v27, v28);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v30, v25, v29, 5580, 0, "this layout pass should be only merge cells");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
    }

    if (v8 == v36.origin.row && ((*&v36.origin ^ v8) & 0xFFFF00000000) == 0 && v20)
    {
      objc_msgSend_validateFittingInfoForCell_cellID_mergeRange_setFitting_layoutTask_widthHeightCollection_validationBundle_styleDefaultsCache_(*(a1 + 32), v21, v20, v8, *&v36.origin, *&v36.size, *(a1 + 97), *(a1 + 48), *(a1 + 40), *(a1 + 56), *(a1 + 64));
    }
  }

  else
  {
    *(*(*(a1 + 72) + 8) + 48) = objc_msgSend_p_validateFittingInfoForEmptyCellsBetween_andCellID_inRange_widthHeightCollection_(*(a1 + 32), v19, *(*(*(a1 + 72) + 8) + 48), v8, *(a1 + 80), *(a1 + 88), *(a1 + 40));
    if (v20)
    {
      objc_msgSend_validateFittingInfoForCell_cellID_mergeRange_setFitting_layoutTask_widthHeightCollection_validationBundle_styleDefaultsCache_(*(a1 + 32), v35, v20, v8, v13, v15, *(a1 + 97), *(a1 + 48), *(a1 + 40), *(a1 + 56), *(a1 + 64));
    }
  }
}

void sub_2213AE364(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = (a1 + 56);
  v7 = objc_msgSend_mergesIntersectingRange_(*(a1 + 32), a2, *(a1 + 56), *(a1 + 64), a5);
  if (objc_msgSend_count(v7, v8, v9, v10, v11))
  {
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = sub_2213A53FC;
    v49 = sub_2213A540C;
    v50 = objc_msgSend_regionFromRange_(TSTCellRegion, v12, *(a1 + 56), *(a1 + 64), v13);
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = sub_2213A53FC;
    v43 = sub_2213A540C;
    v44 = objc_msgSend_invalidRegion(TSTCellRegion, v14, v15, v16, v17);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = sub_2213AE67C;
    v37[3] = &unk_278463F08;
    v38 = *v6;
    v37[4] = &v45;
    v37[5] = &v39;
    objc_msgSend_enumerateRangesUsingBlock_(v7, v18, v37, v19, v20);
    v21 = v46[5];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_2213AE730;
    v34[3] = &unk_278460BD0;
    v22 = *(a1 + 40);
    v34[4] = *(a1 + 32);
    v35 = v22;
    v36 = *(a1 + 48);
    objc_msgSend_enumerateCellRangesUsingBlock_(v21, v23, v34, v24, v25);
    v26 = v40[5];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_2213AE74C;
    v31[3] = &unk_278460BD0;
    v27 = *(a1 + 40);
    v31[4] = *(a1 + 32);
    v32 = v27;
    v33 = *(a1 + 48);
    objc_msgSend_enumerateCellRangesUsingBlock_(v26, v28, v31, v29, v30);

    _Block_object_dispose(&v39, 8);
    _Block_object_dispose(&v45, 8);
  }

  else
  {
    objc_msgSend_p_validateFittingInfoWithCellRangeWorker_widthHeightCollection_containsMerges_validationBundle_(*(a1 + 32), v12, *(a1 + 56), *(a1 + 64), *(a1 + 40), 0, *(a1 + 48));
  }

  dispatch_group_leave(*(*(a1 + 32) + 128));
}

void sub_2213AE600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22)
{
  _Block_object_dispose((v23 - 160), 8);

  _Block_object_dispose((v23 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_2213AE67C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_msgSend_regionBySubtractingRange_(*(*(*(a1 + 32) + 8) + 40), a2, a3, a4, a5);
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = a3;
  if (TSUCellRect::contains((a1 + 48), v11))
  {
    v14 = objc_msgSend_regionByAddingRange_(*(*(*(a1 + 40) + 8) + 40), v12, a3, a4, v13);
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }
}

void sub_2213AE9A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v12 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2213AE9D0(uint64_t a1, const char *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  *(*(*(a1 + 32) + 8) + 52) = a2;
  ++*(*(*(a1 + 40) + 8) + 24);
  if (*(*(*(a1 + 48) + 8) + 24) == *(a1 + 56))
  {
    if (*(*(*(a1 + 40) + 8) + 24) >= 5)
    {
      *a3 = 1;
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_tableStyleAreaForCellID_(*(a1 + 64), a2, *(*(*(a1 + 32) + 8) + 48), a4, a5);
  }

  v6 = *(a1 + 72);
  v7 = *(**(a1 + 80) + 8 * *(*(*(a1 + 48) + 8) + 24));
  v8 = *(*(*(a1 + 32) + 8) + 48);

  return objc_msgSend_addFittingHeight_forCellID_(v6, a2, v8, a4, a5, v7);
}

void sub_2213AEFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2213AF028(uint64_t a1, const char *a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 24);
  v8 = a2 - v7;
  *(v6 + 24) = v7 + a3;
  v9 = objc_msgSend_indexOfVisibleColumnBeforeColumnAtIndex_(*(a1 + 32), a2, (a2 - v7), a4, a5);
  v13 = objc_msgSend_indexOfVisibleColumnAfterAndIncludingColumnAtIndex_(*(a1 + 32), v10, v8, v11, v12);
  if (v9 >= v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = v9;
  }

  if (v9 <= v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = v9;
  }

  if (v17 == 0x7FFF)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17 - v16 + 1;
  }

  v19 = *(a1 + 40);

  return objc_msgSend_addIndexesInRange_(v19, v14, v16, v18, v15);
}

void sub_2213AF5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2213AF660(uint64_t a1, const char *a2, int a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 24);
  v7 = a2 - v6;
  *(v5 + 24) = v6 + a3;
  if (a2 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = a2 - v6 - 1;
  }

  v9 = v7 - v8;
  v10 = v7 - v8 + 1;
  v11 = v8 >= v10;
  if (v8 <= v10)
  {
    v12 = (v9 + 1);
  }

  else
  {
    v12 = v8;
  }

  if (v11)
  {
    return objc_msgSend_addIndexesInRange_(*(a1 + 32), a2, (v9 + 1), v12 - (v9 + 1), a5);
  }

  else
  {
    return objc_msgSend_addIndexesInRange_(*(a1 + 32), a2, v8, v12 - v8, a5);
  }
}

void sub_2213AF754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_2213AFA9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v15 = v14;

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2213AFE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  v13 = v12;

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2213AFEDC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char *a5)
{
  v9 = a2;
  *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_p_containsGradientThatFillsContainerInStyle_(*(a1 + 32), v10, v9, v11, v12);
  v14 = *(a1 + 48);
  if (*(*(v14 + 8) + 24) == 1)
  {
    v15 = 1;
  }

  else
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2213AFFE4;
    v17[3] = &unk_278463FA8;
    v16 = *(a1 + 40);
    v17[4] = *(a1 + 32);
    v17[5] = v14;
    objc_msgSend_enumerateWithAttributeKind_inRange_usingBlock_(v16, v13, 3, a3, a4, v17);
    v15 = *(*(*(a1 + 48) + 8) + 24);
  }

  *a5 = v15;
}

void sub_2213AFFE4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v10 = a2;
  *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_p_containsGradientThatFillsContainerInStyle_(*(a1 + 32), v7, v10, v8, v9);
  *a5 = *(*(*(a1 + 40) + 8) + 24);
}

void sub_2213B0BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  _Block_object_dispose(&a33, 8);

  _Unwind_Resume(a1);
}

TSTWidthHeightCollection *sub_2213B0C68()
{
  v0 = objc_alloc_init(TSTWidthHeightCollection);

  return v0;
}

uint64_t sub_2213B0C98(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11 = objc_msgSend_cellValueType(v5, v7, v8, v9, v10);
  v16 = objc_msgSend_cell(v5, v12, v13, v14, v15);
  IsText = objc_msgSend_valueIsText(v16, v17, v18, v19, v20);

  v351 = 0;
  if (v11)
  {
    v26 = objc_msgSend_cell(v5, v22, v23, v24, v25);
    v31 = objc_msgSend_formatType(v26, v27, v28, v29, v30);

    if (v31 != 267)
    {
      v350 = 1;
      v36 = *(a1 + 32);
      v37 = objc_msgSend_cell(v5, v32, v33, v34, v35);
      v42 = objc_msgSend_cellID(v5, v38, v39, v40, v41);
      v349 = 0;
      objc_msgSend_getTextPropertiesWithCell_cellID_wraps_alignment_verticalAlignment_padding_(v36, v43, v37, v42, &v351, 0, &v350, &v349);
      v44 = v349;

      v348 = v44;
      objc_msgSend_edgeInsetsFromPadding_(*(a1 + 40), v45, v44, v46, v47);
      v49 = v48;
      v51 = v50;
      v53 = v52;
      v55 = v54;
      v351 &= IsText;
      v60 = objc_msgSend_cell(v5, v56, v57, v58, v59);
      v65 = objc_msgSend_valueType(v60, v61, v62, v63, v64);

      switch(v65)
      {
        case 6:
          v77 = objc_msgSend_cell(v5, v66, v67, v68, v69);
          v82 = objc_msgSend_formatType(v77, v78, v79, v80, v81);

          if (v82 == 263)
          {
            v76 = 0;
            v345 = 1;
            goto LABEL_12;
          }

          break;
        case 8:
          v76 = 0;
LABEL_61:

          goto LABEL_62;
        case 9:
          v70 = objc_msgSend_cell(v5, v66, v67, v68, v69);
          v75 = objc_msgSend_richTextValue(v70, v71, v72, v73, v74);
LABEL_11:
          v76 = v75;

          v345 = 0;
LABEL_12:
          v87 = MEMORY[0x277CBF3A8];
          v88 = *MEMORY[0x277CBF3A8];
          v89 = objc_msgSend_cell(v5, v66, v67, v68, v69);
          v94 = objc_msgSend_currentFormatUsesAccountingStyle(v89, v90, v91, v92, v93);
          if (v76)
          {
            v99 = v94;
          }

          else
          {
            v99 = 0;
          }

          if (v99 == 1)
          {
            v100 = objc_msgSend_length(v76, v95, v96, v97, v98);

            if (v100)
            {
              v346 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v76, v101, @"\t", &stru_2834BADA0, v104);
              objc_opt_class();
              v109 = objc_msgSend_context(*(a1 + 32), v105, v106, v107, v108);
              v114 = objc_msgSend_documentObject(v109, v110, v111, v112, v113);
              v115 = TSUCheckedDynamicCast();

              v116 = *(a1 + 40);
              v121 = objc_msgSend_cell(v5, v117, v118, v119, v120);
              v126 = objc_msgSend_cellID(v5, v122, v123, v124, v125);
              v128 = objc_msgSend_newTextEngineForCell_atCellID_textStyle_(v116, v127, v121, v126, 0);

              v129 = [TSTTextEngineDelegate alloc];
              v130 = v350;
              v135 = objc_msgSend_typesettingLocale(v115, v131, v132, v133, v134);
              shouldHyphenate = objc_msgSend_shouldHyphenate(v115, v136, v137, v138, v139);
              v145 = objc_msgSend_styleProvidingSource(*(a1 + 40), v141, v142, v143, v144);
              shouldHyphenate_styleProvidingSource = objc_msgSend_initWithPadding_verticalAlignment_locale_shouldHyphenate_styleProvidingSource_(v129, v146, v130, v135, shouldHyphenate, v145, v49, v51, v53, v55);

              objc_msgSend_setDelegate_(v128, v148, shouldHyphenate_styleProvidingSource, v149, v150);
              v151 = v346;
              v153 = objc_msgSend_layoutText_context_kind_minSize_maxSize_anchor_flags_(v128, v152, v346, 0, 5, 15, 8.0, 0.0, 4294967300.0, 50000.0, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
              objc_msgSend_setDelegate_(v128, v154, 0, v155, v156);
              objc_msgSend_range(v153, v157, v158, v159, v160);
              if (v161)
              {
                v88 = v51 + v55 + sub_2213A5824(v153);
              }

              goto LABEL_55;
            }
          }

          else
          {
          }

          v163 = objc_msgSend_mergeRange(v5, v101, v102, v103, v104);
          if (v163 == 0x7FFFFFFF || (v163 & 0xFFFF00000000) == 0x7FFF00000000 || !HIDWORD(v162) || !v162)
          {
            v163 = objc_msgSend_cellID(v5, v162, v163, v164, v165);
            v162 = 0x100000001;
          }

          objc_msgSend_contentWidthForCellRange_skipDynamicSwap_(*(a1 + 40), v162, v163, v162, 0);
          v167 = v166;
          v172 = objc_msgSend_cellIDToWPColumnCache(*(a1 + 40), v168, v169, v170, v171);
          v177 = objc_msgSend_cellID(v5, v173, v174, v175, v176);
          v181 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v178, (v177 << 15) | WORD2(v177), v179, v180);
          v185 = objc_msgSend_objectForKey_(v172, v182, v181, v183, v184);

          v347 = v185;
          if (v185)
          {
            v88 = sub_2213A5824(v185);
            if (v88 == v167)
            {
              v151 = v185;
LABEL_58:

              v340 = objc_msgSend_cellID(v5, v335, v336, v337, v338);
              v343 = v55 + v51 + 30.0;
              if (!v345)
              {
                v343 = v88;
              }

              objc_msgSend_addFittingWidth_forCellID_(v6, v339, v340, v341, v342, v343);
              goto LABEL_61;
            }

            v190 = objc_msgSend_cellIDToWPColumnCache(*(a1 + 40), v186, v187, v188, v189);
            v195 = objc_msgSend_cellID(v5, v191, v192, v193, v194);
            v199 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v196, (v195 << 15) | WORD2(v195), v197, v198);
            objc_msgSend_removeObjectForKey_(v190, v200, v199, v201, v202);
          }

          v115 = objc_alloc_init(TSTCellStateForLayout);
          v207 = objc_msgSend_cellID(v5, v203, v204, v205, v206);
          objc_msgSend_setModelCellID_(v115, v208, v207, v209, v210);
          v215 = objc_msgSend_cell(v5, v211, v212, v213, v214);
          objc_msgSend_setCell_(v115, v216, v215, v217, v218);

          objc_msgSend_setCellPropsRowHeight_(v115, v219, 0, v220, v221);
          objc_msgSend_setNeedWPColumn_(v115, v222, 0, v223, v224);
          objc_msgSend_setShouldFastPathMeasureFitWidth_(v115, v225, 1, v226, v227);
          objc_msgSend_setCellWraps_(v115, v228, v351, v229, v230);
          objc_msgSend_setPaddingInsets_(v115, v231, v232, v233, v234, v49, v51, v53, v55);
          objc_msgSend_setVerticalAlignment_(v115, v235, v350, v236, v237);
          v242 = 8.0;
          if (!v351)
          {
            v242 = v167;
          }

          objc_msgSend_setMinSize_(v115, v238, v239, v240, v241, v242, 0.0);
          if (v351)
          {
            objc_msgSend_setMaxSize_(v115, v243, v244, v245, v246, v167, 50000.0);
          }

          else
          {
            objc_msgSend_setMaxSize_(v115, v243, v244, v245, v246, 4294967300.0, 50000.0);
          }

          objc_msgSend_setForDrawing_(v115, v247, 1, v248, v249);
          v254 = objc_msgSend_isInDynamicLayoutMode(*(a1 + 40), v250, v251, v252, v253);
          objc_msgSend_setInDynamicLayout_(v115, v255, v254, v256, v257);
          objc_msgSend_setCellContents_(v115, v258, v76, v259, v260);
          v265 = objc_msgSend_mergeRange(v5, v261, v262, v263, v264);
          if (v265 == 0x7FFFFFFF || (v265 & 0xFFFF00000000) == 0x7FFF00000000 || !(v266 >> 32) || !v266)
          {
            objc_msgSend_setLayoutMergeRange_(v115, v266, 0x7FFF7FFFFFFFLL, 0, v269);
          }

          else
          {
            objc_msgSend_mergeRange(v5, v266, v267, v268, v269);
            v271 = v270;
            v272 = *(a1 + 40);
            v276 = objc_msgSend_mergeRange(v5, v270, v273, v274, v275);
            v280 = objc_msgSend_layoutCellIDForModelCellID_(v272, v277, v276, v278, v279);
            objc_msgSend_setLayoutMergeRange_(v115, v281, v280, v271, v282);
          }

          objc_opt_class();
          v283 = TSUDynamicCast();
          v128 = v283;
          if (v283)
          {
            if (objc_msgSend_hasAttachmentsThatChangeWithPageNumberOrPageCount(v283, v284, v285, v286, v287))
            {
              v291 = 0;
              objc_msgSend_setLayoutCacheFlags_(v115, v288, 0, v289, v290);
            }

            else
            {
              v291 = 15;
              objc_msgSend_setLayoutCacheFlags_(v115, v288, 15, v289, v290);
            }
          }

          else
          {
            v291 = 15;
            objc_msgSend_setLayoutCacheFlags_(v115, v284, 15, v286, v287);
          }

          objc_msgSend_measureWithLayoutState_(*(a1 + 40), v292, v115, v293, v294);
          v299 = objc_msgSend_wpColumn(v115, v295, v296, v297, v298);
          objc_msgSend_range(v299, v300, v301, v302, v303);
          v305 = v304;

          if (v305)
          {
            v310 = objc_msgSend_wpColumn(v115, v306, v307, v308, v309);
            v311 = sub_2213A5824(v310);

            v88 = v51 + v55 + v311;
          }

          else
          {
            objc_msgSend_sizeOfText(v115, v306, v307, v308, v309);
            if (v317 == *v87 && v316 == v87[1])
            {
              v88 = v51 + v55;
            }

            else
            {
              objc_msgSend_sizeOfText(v115, v312, v313, v314, v315);
              v88 = v318;
            }
          }

          v319 = objc_msgSend_keyVal(v115, v312, v313, v314, v315);

          if ((v291 & 2) == 0 || !v319)
          {
            v151 = v347;
            goto LABEL_57;
          }

          shouldHyphenate_styleProvidingSource = objc_msgSend_dupContentCache(*(a1 + 40), v320, v321, v322, v323);
          v153 = objc_msgSend_wpColumn(v115, v324, v325, v326, v327);
          v151 = v347;
          v332 = objc_msgSend_keyVal(v115, v328, v329, v330, v331);
          objc_msgSend_setObject_forKey_(shouldHyphenate_styleProvidingSource, v333, v153, v332, v334);

LABEL_55:
LABEL_57:

          goto LABEL_58;
      }

      v70 = objc_msgSend_cell(v5, v66, v67, v68, v69);
      v75 = objc_msgSend_formattedValue(v70, v83, v84, v85, v86);
      goto LABEL_11;
    }
  }

LABEL_62:

  return 0;
}

void sub_2213B1644(uint64_t a1, void *a2)
{
  v9 = a2;
  v6 = objc_msgSend_columnToWidthMapFromCollectionArray_(*(*(a1 + 32) + 664), v3, v9, v4, v5);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_2213B2EEC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2213B2F98;
  v10[3] = &unk_278464068;
  v3 = *(a1 + 32);
  v10[4] = *(a1 + 40);
  objc_msgSend_enumerateCellStatesUsingBlock_(v3, v4, v10, v5, v6);
  objc_msgSend_writeToLayoutEngineCaches_(*(a1 + 32), v7, *(a1 + 48), v8, v9);
  objc_autoreleasePoolPop(v2);
  dispatch_group_leave(*(*(a1 + 40) + 128));
}

void sub_2213B323C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2213B3280(uint64_t a1, void *a2)
{
  v135 = a2;
  v7 = objc_msgSend_cellID(v135, v3, v4, v5, v6);
  v12 = objc_msgSend_cell(v135, v8, v9, v10, v11);
  if (objc_msgSend_hasValueOrError(v12, v13, v14, v15, v16))
  {
    v25 = objc_msgSend_cellStyle(v12, v17, v18, v19, v20);
    if (!v25)
    {
      v25 = objc_msgSend_defaultCellStyleForCellID_useSoftDefault_outSource_(*(a1 + 32), v21, v7, 1, 0);
    }

    v30 = objc_msgSend_textStyle(v12, v21, v22, v23, v24);
    if (!v30)
    {
      v30 = objc_msgSend_defaultTextStyleForCellID_useSoftDefault_outSource_(*(a1 + 32), v26, v7, 1, 0);
    }

    v31 = objc_msgSend_valueType(v12, v26, v27, v28, v29);
    v133 = objc_msgSend_valueForProperty_(v25, v32, 904, v33, v34);
    objc_msgSend_edgeInsetsFromPadding_(*(a1 + 40), v35, v133, v36, v37);
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    if (v31 == 9)
    {
      v134 = objc_msgSend_richTextStorageForLayout(v12, v38, v39, v40, v41);
      v50 = 0;
      objc_msgSend_fontInfoForTextStyle_withString_(*(*(a1 + 40) + 856), v51, v30, 0, v52);
    }

    else
    {
      v53 = objc_msgSend_cell(v135, v38, v39, v40, v41);
      v50 = objc_msgSend_formattedValue(v53, v54, v55, v56, v57);

      v134 = 0;
      objc_msgSend_fontInfoForTextStyle_withString_(*(*(a1 + 40) + 856), v58, v30, v50, v59);
    }
    v60 = ;
    v64 = v60;
    if (v31 == 9 || !v60)
    {
      v68 = [TSTLayoutContentCachedKey alloc];
      v132 = objc_msgSend_initWithString_width_height_paragraphStyle_cellWraps_valueType_paddingInsets_verticalAlignment_writingDirection_naturalAlignment_styleProvidingSource_(v68, v69, v50, v30, 0, v31, 0, 0, 4294967300.0, 8.0, v43, v45, v47, v49, 0, 0);
      v74 = objc_msgSend_dupContentCache(*(a1 + 40), v70, v71, v72, v73);
      v78 = objc_msgSend_objectForKey_(v74, v75, v132, v76, v77);

      if (v78)
      {
        goto LABEL_19;
      }

      v131 = objc_msgSend_newTextEngineForCell_atCellID_textStyle_(*(a1 + 40), v79, v12, v7, v30);
      objc_opt_class();
      v84 = objc_msgSend_context(*(a1 + 32), v80, v81, v82, v83);
      v89 = objc_msgSend_documentObject(v84, v85, v86, v87, v88);
      v130 = TSUCheckedDynamicCast();

      v90 = [TSTTextEngineDelegate alloc];
      v95 = objc_msgSend_typesettingLocale(v130, v91, v92, v93, v94);
      shouldHyphenate = objc_msgSend_shouldHyphenate(v130, v96, v97, v98, v99);
      v105 = objc_msgSend_styleProvidingSource(*(a1 + 40), v101, v102, v103, v104);
      shouldHyphenate_styleProvidingSource = objc_msgSend_initWithPadding_verticalAlignment_locale_shouldHyphenate_styleProvidingSource_(v90, v106, 0, v95, shouldHyphenate, v105, v43, v45, v47, v49);

      objc_msgSend_setMaxWidthForChildren_(shouldHyphenate_styleProvidingSource, v108, v109, v110, v111, 4294967300.0);
      objc_msgSend_setDelegate_(v131, v112, shouldHyphenate_styleProvidingSource, v113, v114);
      v116 = *MEMORY[0x277CBF348];
      v117 = *(MEMORY[0x277CBF348] + 8);
      if (v134)
      {
        objc_msgSend_layoutTextStorage_minSize_maxSize_anchor_pageNumber_pageCount_flags_(v131, v115, v134, 0, 1, 15, 4294967300.0, 0.0, 4294967300.0, 50000.0, v116, v117);
      }

      else
      {
        objc_msgSend_layoutText_context_kind_minSize_maxSize_anchor_flags_(v131, v115, v50, 0, 5, 15, 4294967300.0, 0.0, 4294967300.0, 50000.0, v116, v117);
      }
      v78 = ;
      v122 = objc_msgSend_dupContentCache(*(a1 + 40), v118, v119, v120, v121);
      objc_msgSend_setObject_forKey_(v122, v123, v78, v132, v124);

      objc_msgSend_setDelegate_(v131, v125, 0, v126, v127);
      if (v78)
      {
LABEL_19:
        v128 = v45 + v49 + sub_2213A5824(v78);
        v129 = *(*(a1 + 48) + 8);
        if (v128 < *(v129 + 24))
        {
          v128 = *(v129 + 24);
        }

        *(v129 + 24) = v128;
      }
    }

    else
    {
      objc_msgSend_widthForString_(v60, v61, v50, v62, v63);
      v66 = v45 + v49 + v65;
      v67 = *(*(a1 + 48) + 8);
      if (v66 < *(v67 + 24))
      {
        v66 = *(v67 + 24);
      }

      *(v67 + 24) = v66;
    }
  }
}

void sub_2213B3A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  _Block_object_dispose(&a18, 8);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_2213B3A78(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_2213B3A9C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_2213B3AB4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], a2, a2, a4, a5);
  v20 = objc_msgSend_regionByIntersectingColumnIndices_(v6, v9, v8, v10, v11);

  if (objc_msgSend_cellCount(v20, v12, v13, v14, v15))
  {
    objc_msgSend_unwrappedFittingWidthsForColumnInCellRegionWorker_(*(a1 + 40), v16, v20, v17, v18);
    *(*(*(*(a1 + 48) + 8) + 48) + 8 * v7) = v19;
  }
}

uint64_t sub_2213B3C88(uint64_t a1, const char *a2)
{
  v2 = a2;
  objc_msgSend_widthOfColumn_skipDynamicSwap_returnZeroIfHidden_outIsFitting_(*(a1 + 32), a2, a2, 0, 1, 0);
  v6 = *(a1 + 40);

  return MEMORY[0x2821F9670](v6, sel_cacheWidth_ofColumn_, v2, v4, v5);
}

double sub_2213B4860(double result)
{
  if (result < 2.0)
  {
    return 2.0;
  }

  return result;
}

void sub_2213B51AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v11);

  _Unwind_Resume(a1);
}

void sub_2213B5ACC(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_2217E0F60)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_22107C148();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      sub_2210874C4(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_2217E0F60)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

void sub_2213B5C9C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      sub_22107C148();
    }

    v8 = v6 >> 3;
    v9 = v4 - *a1;
    if (v9 >> 2 > v7)
    {
      v7 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v11[4] = a1;
    if (v10)
    {
      sub_22107C1F0(a1, v10);
    }

    v11[0] = 0;
    v11[1] = 8 * v8;
    v11[3] = 0;
    bzero((8 * v8), 8 * a2);
    v11[2] = 8 * v8 + 8 * a2;
    sub_22107C098(a1, v11);
    sub_22107C26C(v11);
  }
}

void sub_2213B5D88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2213B62AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_cellRegion(v3, v4, v5, v6, v7);
  v13 = objc_msgSend_boundingCellRange(v8, v9, v10, v11, v12);
  v15 = v14;

  v20 = 0;
  v21 = *(a1 + 32);
  v22 = 0x7FFFLL;
  v23 = 0x7FFFFFFF;
  if (v13 == 0x7FFFFFFF)
  {
    goto LABEL_43;
  }

  v24 = 0;
  if ((v13 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    goto LABEL_44;
  }

  v20 = 0;
  v22 = 0x7FFFLL;
  if (!HIDWORD(v15))
  {
    goto LABEL_43;
  }

  v24 = 0;
  if (!v15)
  {
    goto LABEL_44;
  }

  v25 = v21[5];
  if (v25 == 0x7FFFFFFF || (v25 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v20 = 0;
    v24 = 0;
    v22 = 0x7FFFLL;
    goto LABEL_44;
  }

  v20 = 0;
  v27 = v21[6];
  v22 = 0x7FFFLL;
  if (!HIDWORD(v27))
  {
LABEL_43:
    v24 = 0;
    goto LABEL_44;
  }

  v24 = 0;
  if (v27)
  {
    v23 = *MEMORY[0x277D813C8];
    v22 = *(MEMORY[0x277D813C8] + 4);
    v28 = HIDWORD(v25);
    v17 = WORD2(v13);
    v18 = WORD2(v25);
    if (WORD2(v13) <= WORD2(v25))
    {
      v29 = WORD2(v25);
    }

    else
    {
      v29 = WORD2(v13);
    }

    LODWORD(v19) = v13 + HIDWORD(v15) - 1;
    v30 = v25 + HIDWORD(v27) - 1;
    if (v25 == 0x7FFFFFFF)
    {
      v31 = 0;
    }

    else
    {
      v31 = v21[5];
    }

    if (v25 == 0x7FFFFFFF)
    {
      v30 = 0x7FFFFFFF;
    }

    v32 = v13;
    v19 = v19;
    if (v13 <= v31)
    {
      v32 = v31;
    }

    v33 = v15 + WORD2(v13) - 1;
    if (WORD2(v13) == 0x7FFF || v15 == 0)
    {
      v33 = 0x7FFF;
    }

    v35 = v27 + v28 - 1;
    if (WORD2(v25) == 0x7FFF || v27 == 0)
    {
      LOWORD(v37) = 0x7FFF;
    }

    else
    {
      LOWORD(v37) = v35;
    }

    v16 = v37;
    if (v33 >= v37)
    {
      v37 = v37;
    }

    else
    {
      v37 = v33;
    }

    if (v19 >= v30)
    {
      v38 = v30;
    }

    else
    {
      v38 = v13 + HIDWORD(v15) - 1;
    }

    v39 = v38 - v32;
    if (v38 < v32 || v29 > v37)
    {
      v24 = *(MEMORY[0x277D813C8] + 6) << 48;
      v20 = *(MEMORY[0x277D813C8] + 8);
    }

    else
    {
      v24 = 0;
      v20 = (v37 - v29 + 1) | ((v39 + 1) << 32);
      v23 = v32;
      v22 = v29;
    }
  }

LABEL_44:
  if ((v23 | (v22 << 32)) == 0x7FFF7FFFFFFFLL || !HIDWORD(v20) || !v20 || (v23 == *MEMORY[0x277D813C8] ? (v47 = ((*MEMORY[0x277D813C8] ^ (v24 | (v22 << 32))) & 0x101FFFF00000000) == 0) : (v47 = 0), v47 ? (v48 = v20 == *(MEMORY[0x277D813C8] + 8)) : (v48 = 0), v48))
  {
    v40 = objc_msgSend_layout(v21, v16, v17, v18, v19);

    if (!v40)
    {
      goto LABEL_61;
    }

    v45 = objc_msgSend_layout(*(a1 + 32), v41, v42, v43, v44);
    v46 = sub_2211B729C(v45, v13, v15);

    if (!v46)
    {
      goto LABEL_61;
    }
  }

  v52 = objc_msgSend_indexForSelection_(*(a1 + 40), v16, v3, v18, v19);
  if (v52 <= 1)
  {
    v59 = MEMORY[0x277D81150];
    v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "[TSTLayoutHint overlapsWithSelectionPath:]_block_invoke_2", v50, v51);
    v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayoutHint.mm", v62, v63);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v65, v60, v64, 136, 0, "Invalid cell selection index %lu for %@", v52, *(a1 + 40));

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68, v69);
LABEL_61:
    v58 = 0;
    goto LABEL_64;
  }

  objc_opt_class();
  v56 = objc_msgSend_selectionAtIndex_(*(a1 + 40), v53, v52 - 1, v54, v55);
  v57 = TSUDynamicCast();

  if (v57)
  {
    v58 = (*(*(a1 + 48) + 16))();
  }

  else
  {
    v58 = 0;
  }

LABEL_64:
  return v58;
}

id sub_2213B702C(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2213B70CC;
  block[3] = &unk_278462558;
  block[4] = a1;
  if (qword_27CFB54C0 != -1)
  {
    dispatch_once(&qword_27CFB54C0, block);
  }

  v1 = qword_27CFB54B8;

  return v1;
}

void sub_2213B70CC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_msgSend_properties(*(a1 + 32), a2, a3, a4, a5);
  v8 = objc_msgSend_propertySetByAddingProperties_(v10, v5, 51, v6, v7, 906, 0);
  v9 = qword_27CFB54B8;
  qword_27CFB54B8 = v8;
}

id sub_2213B7138(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  if (objc_msgSend_containsProperty_(v12, v15, 906, v16, v17))
  {
    v22 = objc_opt_class();
    v27 = objc_msgSend_properties(v22, v23, v24, v25, v26);
    v31 = objc_msgSend_containsAnyPropertyInProperties_(v12, v28, v27, v29, v30);

    if (v31)
    {
      v35 = MEMORY[0x277D81150];
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "[TSWPParagraphStyle(CellDiffAdditions) objectByRemovingPropertiesInMap:addingPropertiesInMap:updateInverseResetPropertyMap:updateInverseSetPropertyMap:optionalConcurrentStylesheet:]", v33, v34);
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSWPParagraphStyle+CellDiffAdditions.m", v38, v39);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v41, v36, v40, 52, 0, "Can't specify both a text style and a text style change at the same time.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44, v45);
    }

    objc_msgSend_setObject_forProperty_(v13, v32, a1, 906, v34);
    v49 = objc_msgSend_objectForProperty_(v12, v46, 906, v47, v48);
  }

  else
  {
    v50 = objc_msgSend_stylesheet(a1, v18, v19, v20, v21);
    v55 = a1;
    v160 = v13;
    if (!v50)
    {
      v56 = v11;
      v57 = MEMORY[0x277D81150];
      v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "[TSWPParagraphStyle(CellDiffAdditions) objectByRemovingPropertiesInMap:addingPropertiesInMap:updateInverseResetPropertyMap:updateInverseSetPropertyMap:optionalConcurrentStylesheet:]", v53, v54);
      v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSWPParagraphStyle+CellDiffAdditions.m", v60, v61);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v63, v58, v62, 60, 0, "Stylesheet should not be nil. Attempting repair.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v64, v65, v66, v67);
      v72 = objc_msgSend_parent(v55, v68, v69, v70, v71);
      v77 = objc_msgSend_stylesheet(v72, v73, v74, v75, v76);
      v82 = v77;
      if (v77)
      {
        v50 = v77;
      }

      else
      {
        v83 = objc_msgSend_documentRoot(v55, v78, v79, v80, v81);
        v50 = objc_msgSend_stylesheet(v83, v84, v85, v86, v87);
      }

      if (v14)
      {
        objc_msgSend_repairOrReplaceErrantStyle_(v14, v88, v55, v89, v90);
      }

      else
      {
        objc_msgSend_repairOrReplaceErrantStyle_(v50, v88, v55, v89, v90);
      }
      v91 = ;

      if (v91 && v50)
      {
        v55 = v91;
      }

      else
      {
        v92 = MEMORY[0x277D81150];
        v93 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "[TSWPParagraphStyle(CellDiffAdditions) objectByRemovingPropertiesInMap:addingPropertiesInMap:updateInverseResetPropertyMap:updateInverseSetPropertyMap:optionalConcurrentStylesheet:]", v53, v54);
        v97 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v94, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSWPParagraphStyle+CellDiffAdditions.m", v95, v96);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v92, v98, v93, v97, 73, 0, "No usable style or stylesheet to vary against!");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v99, v100, v101, v102);
        v55 = v55;
      }

      v11 = v56;
    }

    if (objc_msgSend_isVariation(v55, v51, v52, v53, v54))
    {
      v107 = objc_msgSend_overridePropertyMap(v55, v103, v104, v105, v106);
      v112 = objc_msgSend_copy(v107, v108, v109, v110, v111);
    }

    else
    {
      v112 = objc_msgSend_propertyMap(MEMORY[0x277D80AB8], v103, v104, v105, v106);
    }

    v113 = objc_opt_class();
    v118 = objc_msgSend_properties(v113, v114, v115, v116, v117);
    v159 = v11;
    v122 = objc_msgSend_propertyMapWithProperties_(v11, v119, v118, v120, v121);

    v165[0] = MEMORY[0x277D85DD0];
    v165[1] = 3221225472;
    v165[2] = sub_2213B7674;
    v165[3] = &unk_278464128;
    v123 = v112;
    v166 = v123;
    v124 = v160;
    v167 = v124;
    v125 = v55;
    v168 = v125;
    objc_msgSend_enumeratePropertiesAndObjectsUsingBlock_(v122, v126, v165, v127, v128);
    v129 = objc_opt_class();
    v134 = objc_msgSend_properties(v129, v130, v131, v132, v133);
    v138 = objc_msgSend_propertyMapWithProperties_(v12, v135, v134, v136, v137);

    v161[0] = MEMORY[0x277D85DD0];
    v161[1] = 3221225472;
    v161[2] = sub_2213B76EC;
    v161[3] = &unk_278464128;
    v139 = v123;
    v162 = v139;
    v163 = v124;
    v140 = v125;
    v164 = v140;
    objc_msgSend_enumeratePropertiesAndObjectsUsingBlock_(v138, v141, v161, v142, v143);
    if (v14)
    {
      objc_opt_class();
      v152 = objc_msgSend_rootAncestor(v140, v148, v149, v150, v151);
      v155 = objc_msgSend_variationOfStyle_propertyMap_(v14, v153, v152, v139, v154);
      v49 = TSUDynamicCast();
    }

    else
    {
      v152 = objc_msgSend_rootAncestor(v140, v144, v145, v146, v147);
      v49 = objc_msgSend_variationOfStyle_propertyMap_(v50, v156, v152, v139, v157);
    }

    v11 = v159;
    v13 = v160;
  }

  return v49;
}

void sub_2213B7674(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_removeValueForProperty_(*(a1 + 32), a2, a2, a4, a5);
  v7 = *(a1 + 40);
  v13 = objc_msgSend_boxedValueForProperty_(*(a1 + 48), v8, a2, v9, v10);
  objc_msgSend_setBoxedObject_forProperty_(v7, v11, v13, a2, v12);
}

void sub_2213B76EC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_setBoxedObject_forProperty_(*(a1 + 32), a2, a4, a2, a5);
  v7 = *(a1 + 40);
  v13 = objc_msgSend_boxedValueForProperty_(*(a1 + 48), v8, a2, v9, v10);
  objc_msgSend_setBoxedObject_forProperty_(v7, v11, v13, a2, v12);
}

void sub_2213B7E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2213B7EBC(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = objc_msgSend_children(v3, v4, v5, v6, v7);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v30, v34, 16);
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v8);
        }

        objc_opt_class();
        v14 = TSUClassAndProtocolCast();
        v19 = v14;
        if (v14 && objc_msgSend_participatesInLastRowHeight(v14, v15, v16, v17, v18, &unk_2835990B8))
        {
          objc_msgSend_frameInRoot(v19, v20, v21, v22, v23);
          MaxY = CGRectGetMaxY(v36);
          objc_msgSend_frameInRoot(v3, v25, v26, v27, v28);
          *(*(*(a1 + 32) + 8) + 24) = MaxY - CGRectGetMaxY(v37) + *(*(*(a1 + 32) + 8) + 24);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v29, &v30, v34, 16);
    }

    while (v11);
  }
}

void sub_2213B9D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2213B9D84(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_frame(a2, a2, a3, a4, a5);
  v7 = *(*(a1 + 32) + 8);
  v7[4] = v8;
  v7[5] = v9;
  v7[6] = v10;
  v7[7] = v11;
  return result;
}

TSCEASTRewriter *sub_2213BABEC(TSCEASTRewriter *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, void *a4)
{
  v7 = a4;
  TSCEASTRewriter::TSCEASTRewriter(a1, a2, a3, 0);
  *a1 = &unk_2834A6FA0;
  *(a1 + 25) = v7;
  return a1;
}

char *sub_2213BAC70(TSCEASTIteratorBase *a1, TSCEASTRelativeCoordRefElement *a2)
{
  if (TSCEASTElement::refFlags(a2, a1))
  {

    return sub_2213BACE0(a1, a2, v4, v5, v6);
  }

  else
  {

    return sub_2213BB1A8(a1, a2, v4, v5, v6);
  }
}

TSCEASTRelativeCoordRefElement *sub_2213BACE0(TSCEASTIteratorBase *a1, TSCEASTRelativeCoordRefElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v100.var0 = TSCEASTRelativeCoordRefElement::tableUID(this, a1, a3, a4, a5);
  v100.var1 = v7;
  v11 = objc_msgSend_rowColumnInfo(*(a1 + 25), v7, v8, v9, v10);
  v15 = objc_msgSend_isForTable_(*(a1 + 25), v12, &v100, v13, v14);
  v16 = *(a1 + 25);
  *__p = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0._tableUID;
  v20 = objc_msgSend_isForTable_(v16, v17, __p, v18, v19);
  v21 = TSCEASTRelativeCoordRefElement::spansAllRows(this, a1);
  v26 = TSCEASTRelativeCoordRefElement::spansAllColumns(this, a1);
  if ((v26 || v21) && (objc_msgSend_isColumns(v11, v22, v23, v24, v25) & v21 & 1) == 0 && (objc_msgSend_isRows(v11, v27, v23, v24, v25) & v26) != 1 || ((v15 | v20) & 1) == 0)
  {
    goto LABEL_40;
  }

  v28 = TSCEASTRelativeCoordRefElement::relativeCoord(this, a1, v23, v24, v25);
  v99 = v28;
  v29 = TSCEASTRelativeCoordRefElement::preserveFlags(this, a1);
  v34 = (v29 >> 1) & 1;
  if (!objc_msgSend_isRows(v11, v30, v31, v32, v33))
  {
    column = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0.coordinate.column;
    v48 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
    v38 = sub_2213BB800(*v48, ((v28 << 16) >> 48), v29 & 1, v49, v50);
    v51 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
    v46 = sub_2213BB640(*&v51->var0.var0.coordinate, v28, (v29 & 2) != 0, v52, v53);
    LOBYTE(v34) = v29 & 1;
    if (!v15)
    {
      goto LABEL_7;
    }

LABEL_9:
    if (objc_msgSend_indexIsAffected_(v11, v42, v38, v44, v45))
    {
      if (v11)
      {
        objc_msgSend_uuidsInRange_(v11, v54, v38, 1, v56);
      }

      else
      {
        __p[0] = 0;
        __p[1] = 0;
        v98 = 0;
      }

      v60 = sub_221089E8C(a1);
      var0 = v100.var0;
      var1 = v100.var1;
      isRows = objc_msgSend_isRows(v11, v63, v64, v65, v66);
      v69 = objc_msgSend_uuidForTableUID_andIndex_direction_(v60, v68, var0, var1, v46, isRows ^ 1u);
      v71 = v70;

      v72 = TSCEASTElement::mutableUndoTractList(this, a1);
      v77 = objc_msgSend_isRows(v11, v73, v74, v75, v76);
      if (v77)
      {
        v82 = v69;
      }

      else
      {
        v82 = *__p[0];
      }

      if (v77)
      {
        v83 = v71;
      }

      else
      {
        v83 = *(__p[0] + 1);
      }

      if (v77)
      {
        v84 = *__p[0];
      }

      else
      {
        v84 = v69;
      }

      if (v77)
      {
        v85 = *(__p[0] + 1);
      }

      else
      {
        v85 = v71;
      }

      if (objc_msgSend_rewriteType(*(a1 + 25), v78, v79, v80, v81) != 4 || (*(a1 + 100) & 1) != 0)
      {
        objc_msgSend_addToIncludedUidsTractColumnUid_rowUid_(v72, v86, v82, v83, v84, v85);
        v96._flags = v29 & 3;
        TSCEASTIteratorBase::createReferenceErrorWithUidTractList(a1, v72, &v100, &v96);
      }

      v87 = [TSCEUndoTract alloc];
      v89 = objc_msgSend_initWithColumnUid_rowUid_purpose_(v87, v88, v82, v83, v84, v85, 4);
      v96._flags = TSCEASTElement::refFlags(this, a1);
      objc_msgSend_appendUidTract_(v72, v90, v89, v91, v92);
      v95._flags = 0;
      TSCEASTIteratorBase::createUidReference(a1, &v100, &v96, &v95, v72);
    }

    v47 = objc_msgSend_offsetForRowIndex_(v11, v54, v38, v55, v56);
    goto LABEL_13;
  }

  column = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0.coordinate.row;
  v35 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
  v38 = sub_2213BB640(*&v35->var0.var0.coordinate, v28, (v29 & 2) != 0, v36, v37);
  v39 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
  v46 = sub_2213BB800(*v39, ((v28 << 16) >> 48), v29 & 1, v40, v41);
  if (v15)
  {
    goto LABEL_9;
  }

LABEL_7:
  v47 = 0;
LABEL_13:
  if (v34 & 1 | ((v20 & 1) == 0))
  {
    v57 = 0;
  }

  else
  {
    v57 = objc_msgSend_offsetForRowIndex_(v11, v42, column, v44, v45);
  }

  if (v47 | v57)
  {
    if (objc_msgSend_isRows(v11, v42, v43, v44, v45))
    {
      if (v28 != 0x7FFFFFFF)
      {
        v99._row = v57 - v47 + v28;
      }
    }

    else if (WORD2(v28) != 0x7FFF)
    {
      v99._column = WORD2(v28) + v57 - v47;
    }

    TSCEASTRelativeCoordRefElement::setRelativeCoord(this, &v99, a1, v58, v59);
  }

LABEL_40:

  return this;
}

void sub_2213BB128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

char *sub_2213BB1A8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_rowColumnInfo(*(a1 + 200), a2, a3, a4, a5);
  v8 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  lower = v8->var0.var0._tableUID._lower;
  upper = v8->var0.var0._tableUID._upper;
  v15 = objc_msgSend_tableUID(v7, v11, v12, v13, v14);
  if (lower == *v15 && upper == v15[1])
  {
    v20 = TSCEASTRelativeCoordRefElement::relativeCoord(a2, a1, v16, v17, v18);
    v91 = v20;
    v21 = TSCEASTRelativeCoordRefElement::preserveFlags(a2, a1);
    v22 = TSCEASTRelativeCoordRefElement::spansAllRows(a2, a1);
    v27 = TSCEASTRelativeCoordRefElement::spansAllColumns(a2, a1);
    if (!v27 && !v22 || (objc_msgSend_isColumns(v7, v23, v24, v25, v26) & v22 & 1) != 0 || (objc_msgSend_isRows(v7, v23, v24, v25, v26) & v27) == 1)
    {
      v28 = (v21 >> 1) & 1;
      if (objc_msgSend_isRows(v7, v23, v24, v25, v26))
      {
        LODWORD(v87) = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate.row;
        v29 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
        v32 = sub_2213BB640(*&v29->var0.var0.coordinate, v20, (v21 & 2) != 0, v30, v31);
        v33 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
        v39 = sub_2213BB800(*v33, ((v20 << 16) >> 48), v21 & 1, v34, v35);
      }

      else
      {
        LODWORD(v87) = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate.column;
        v40 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
        v32 = sub_2213BB800(*v40, ((v20 << 16) >> 48), v21 & 1, v41, v42);
        v43 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
        v39 = sub_2213BB640(*&v43->var0.var0.coordinate, v20, (v21 & 2) != 0, v44, v45);
        LOBYTE(v28) = v21 & 1;
      }

      if (objc_msgSend_indexIsAffected_(v7, v36, v32, v37, v38, v87))
      {
        if (v7)
        {
          objc_msgSend_uuidsInRange_(v7, v46, v32, 1, v48);
        }

        else
        {
          *&v88.var3 = 0;
          v89 = 0;
          v90 = 0;
        }

        v57 = sub_221089E8C(a1);
        isRows = objc_msgSend_isRows(v7, v58, v59, v60, v61);
        v64 = objc_msgSend_uuidForTableUID_andIndex_direction_(v57, v63, lower, upper, v39, isRows ^ 1u);
        v66 = v65;

        v67 = TSCEASTElement::mutableUndoTractList(a2, a1);
        v72 = objc_msgSend_isRows(v7, v68, v69, v70, v71);
        if (v72)
        {
          v77 = v66;
        }

        else
        {
          v77 = *(*&v88.var3 + 8);
        }

        if (v72)
        {
          v78 = **&v88.var3;
        }

        else
        {
          v78 = v64;
        }

        if (v72)
        {
          v66 = *(*&v88.var3 + 8);
        }

        else
        {
          v64 = **&v88.var3;
        }

        if (objc_msgSend_rewriteType(*(a1 + 200), v73, v74, v75, v76) != 4 || (*(a1 + 100) & 1) != 0)
        {
          objc_msgSend_addToIncludedUidsTractColumnUid_rowUid_(v67, v79, v64, v77, v78, v66);
          LOBYTE(v88.var0) = v21 & 3;
          TSCEASTIteratorBase::createReferenceErrorWithUidTractList(a1, v67, &v88);
        }

        HIBYTE(v88.var2) = TSCEASTElement::refFlags(a2, a1);
        v80 = [TSCEUndoTract alloc];
        v82 = objc_msgSend_initWithColumnUid_rowUid_purpose_(v80, v81, v64, v77, v78, v66, 4);
        objc_msgSend_appendUidTract_(v67, v83, v82, v84, v85);
        v88.var0 = 0;
        v88.var1 = 0;
        HIBYTE(v87) = 0;
        TSCEASTIteratorBase::createUidReference(a1, &v88, (&v88.var2 + 7), &v87 + 7, v67);
      }

      v53 = objc_msgSend_offsetForRowIndex_(v7, v46, v32, v47, v48);
      if (v28)
      {
        v54 = 0;
      }

      else
      {
        v54 = objc_msgSend_offsetForRowIndex_(v7, v49, v87, v51, v52);
      }

      if (v53 | v54)
      {
        if (objc_msgSend_isRows(v7, v49, v50, v51, v52))
        {
          if (v20 != 0x7FFFFFFF)
          {
            v91._row = v54 - v53 + v20;
          }
        }

        else if (WORD2(v20) != 0x7FFF)
        {
          v91._column = WORD2(v20) + v54 - v53;
        }

        TSCEASTRelativeCoordRefElement::setRelativeCoord(a2, &v91, a1, v55, v56);
      }
    }
  }

  return a2;
}

void sub_2213BB5B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2213BB640(unsigned int a1, const char *a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    return a2;
  }

  result = 0x7FFFFFFFLL;
  if (a2 != 0x7FFFFFFF)
  {
    if (a2 < 1)
    {
      if (a2 && a1 < -a2)
      {
        return result;
      }
    }

    else if (999999 - a2 < a1)
    {
      return result;
    }

    if (a1 == 0x7FFFFFFF)
    {
      v8 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSURowIndex TSCEMakeAbsoluteRowFromRelativeRow(TSUCellCoord, TSURelativeRowIndex, BOOL)", a4, a5);
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v11, v12);
      v14 = NSStringFromTSUCellCoord();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v9, v13, 195, 0, "Calling TSCEMakeAbsoluteRowFromRelativeRow with an invalid hostCell row: %@", v14);
    }

    else
    {
      result = a1 + a2;
      if (result < 0x7FFFFFFF)
      {
        return result;
      }

      v16 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSURowIndex TSCEMakeAbsoluteRowFromRelativeRow(TSUCellCoord, TSURelativeRowIndex, BOOL)", a4, a5);
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v18, v19);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v9, v13, 191, 0, "overflow in row, input row: %d with host row: %lu", a2, a1);
    }

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
    return 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t sub_2213BB800(uint64_t a1, const char *a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    return a2;
  }

  v5 = 0x7FFF;
  if (a2 == 0x7FFF)
  {
    return v5;
  }

  if (a2 < 1)
  {
    if ((a2 & 0x80000000) != 0 && -a2 > WORD2(a1))
    {
      return v5;
    }
  }

  else if (999 - a2 < WORD2(a1))
  {
    return v5;
  }

  v5 = WORD2(a1) + a2;
  if ((WORD2(a1) + a2) >= 0x7FFFu)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUColumnIndex TSCEMakeAbsoluteColumnFromRelativeColumn(TSUCellCoord, TSURelativeColumnIndex, BOOL)", a4, a5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 168, 0, "overflow in column");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  }

  return v5;
}

char *sub_2213BB918(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_rowColumnInfo(*(a1 + 200), a2, a3, a4, a5);
  v8 = TSCEASTElementWithChildren::child(a2, 0);
  v9 = TSCEASTElementWithChildren::child(a2, 1u);
  if (v8)
  {
    v10 = v9;
    if (v9)
    {
      v11 = (*(*v8 + 40))(v8, a1);
      v12 = (*(*v10 + 40))(v10, a1);
      v13 = TSCEASTElement::tag(v11, a1);
      v14 = TSCEASTElement::tag(v12, a1);
      v15 = TSCEASTElement::simpleTagForTag(v13);
      if (v15 == TSCEASTElement::simpleTagForTag(v14) && v13 == 36)
      {
        __p = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
        (*(*v11 + 136))(&v158, v11, a1, &__p);
        __p = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
        (*(*v12 + 136))(&v157.var3, v12, a1, &__p);
        v157.var0 = 0;
        v157.var1 = 0;
        tableUID = v159;
        if (v159 == 0uLL)
        {
          tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
        }

        *&v157.var0 = tableUID;
        v21 = objc_msgSend_tableUID(v7, v16, v17, v18, v19);
        if (v157.var0 == *v21 && v157.var1 == *(v21 + 8))
        {
          v22 = TSCEASTRelativeCoordRefElement::preserveFlags(v11, a1);
          v156._flags = v22 & 3 | (4 * (TSCEASTRelativeCoordRefElement::preserveFlags(v12, a1) & 3));
          v155._topLeft = v158;
          v155._bottomRight = *&v157.var3;
          TSCERangeCoordinate::fixInversions(&v155, &v156);
          if (v158.row == v155._topLeft.row && ((*&v155._topLeft ^ *&v158) & 0x101FFFF00000000) == 0)
          {
            v145 = v12;
            v12 = v11;
            v28 = v10;
            v10 = v8;
          }

          else
          {
            TSCEASTElementWithChildren::setChildAtIndex(a2, v10, 0, a1, v26);
            TSCEASTElementWithChildren::setChildAtIndex(a2, v8, 1, a1, v27);
            v145 = v11;
            v28 = v8;
          }

          v147 = v28;
          isRows = objc_msgSend_isRows(v7, v23, v24, v25, v26, v145);
          row = v155._topLeft.row;
          column = v155._topLeft.column;
          v36 = objc_msgSend_isRows(v7, v32, v33, v34, v35);
          v39 = isRows ? row : column;
          v40 = v36 ? v155._bottomRight.row : v155._bottomRight.column;
          if (v7)
          {
            objc_msgSend_uuidsInRange_(v7, v37, v39, (v40 - v39 + 1), v38);
            if (v154 != v153)
            {
              v45 = objc_msgSend_rowOrColumnUids(v7, v41, v42, v43, v44);
              v46 = objc_alloc(MEMORY[0x277CCAA78]);
              v49 = objc_msgSend_initWithIndexesInRange_(v46, v47, v39, (v40 - v39 + 1), v48);
              v53 = objc_msgSend_indexSetBySubtractingOurIndexesFromIndexSet_(v45, v50, v49, v51, v52);

              if (objc_msgSend_count(v53, v54, v55, v56, v57))
              {
                if ((objc_msgSend_containsIndex_(v53, v58, v39, v60, v61) & 1) == 0)
                {
                  if (objc_msgSend_isRows(v7, v62, v63, v64, v65))
                  {
                    v155._topLeft.row = objc_msgSend_firstIndex(v53, v66, v67, v68, v69);
                  }

                  else
                  {
                    v155._topLeft.column = objc_msgSend_firstIndex(v53, v66, v67, v68, v69);
                  }

                  topLeft = v155._topLeft;
                  LOBYTE(v152[0]) = v156._flags & 3;
                  __p = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
                  (*(*v12 + 144))(v12, topLeft, v152, a1, &__p);
                }

                if ((objc_msgSend_containsIndex_(v53, v62, v40, v64, v65) & 1) == 0)
                {
                  if (objc_msgSend_isRows(v7, v99, v100, v101, v102))
                  {
                    v155._bottomRight.row = objc_msgSend_lastIndex(v53, v103, v104, v105, v106);
                  }

                  else
                  {
                    v155._bottomRight.column = objc_msgSend_lastIndex(v53, v103, v104, v105, v106);
                  }

                  bottomRight = v155._bottomRight;
                  LOBYTE(v152[0]) = (v156._flags >> 2) & 3;
                  __p = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
                  (*(*v146 + 144))(v146, bottomRight, v152, a1, &__p);
                }

                v112 = TSCEASTElement::mutableUndoTractList(a2, a1);
                if ((*(a1 + 100) & 1) == 0)
                {
                  if (objc_msgSend_isRows(v7, v108, v109, v110, v111))
                  {
                    __p = 0;
                    v149 = 0;
                    v150 = 0;
                    objc_msgSend_addToIncludedUidsTractColumnUids_rowUids_isRangeRef_preserveRectangularRange_(v112, v113, &__p, &v153, 1, 1);
                    if (__p)
                    {
                      v149 = __p;
                      operator delete(__p);
                    }

                    if ((*(a1 + 98) & 1) == 0)
                    {
                      objc_msgSend_removeFromExcludedUidsTractRowUids_(v112, v114, &v153, v115, v116);
                    }
                  }

                  else
                  {
                    __p = 0;
                    v149 = 0;
                    v150 = 0;
                    objc_msgSend_addToIncludedUidsTractColumnUids_rowUids_isRangeRef_preserveRectangularRange_(v112, v113, &v153, &__p, 1, 1);
                    if (__p)
                    {
                      v149 = __p;
                      operator delete(__p);
                    }

                    if ((*(a1 + 98) & 1) == 0)
                    {
                      objc_msgSend_removeFromExcludedUidsTractColumnUids_(v112, v117, &v153, v118, v119);
                    }
                  }
                }

                TSCEASTRewriter::createColonWithUidTractList(a1, v112, v10, v147);
              }

              if (objc_msgSend_isRows(v7, v58, v59, v60, v61))
              {
                v74 = v155._topLeft.column;
              }

              else
              {
                v74 = v155._topLeft.row;
              }

              if (objc_msgSend_isRows(v7, v70, v71, v72, v73))
              {
                v79 = v155._bottomRight.column;
              }

              else
              {
                v79 = v155._bottomRight.row;
              }

              if (objc_msgSend_isRows(v7, v75, v76, v77, v78))
              {
                v80 = 0x7FFF;
              }

              else
              {
                v80 = 0x7FFFFFFF;
              }

              if (v74 == v80)
              {
                sub_2212F8464(&__p);
              }

              v81 = sub_221089E8C(a1);
              v86 = objc_msgSend_tableUID(v7, v82, v83, v84, v85);
              v89 = objc_msgSend_resolverForTableUID_(v81, v87, *v86, v86[1], v88);

              v94 = objc_msgSend_isRows(v7, v90, v91, v92, v93);
              if (v89)
              {
                objc_msgSend_UIDsForRange_isRows_(v89, v95, v74, v79 - v74 + 1, v94 ^ 1u);
                v96 = __p;
                v97 = v149;
              }

              else
              {
                v97 = 0;
                v96 = 0;
              }

              v120 = TSCEASTElement::mutableUndoTractList(a2, a1);
              memset(v152, 0, sizeof(v152));
              memset(v151, 0, sizeof(v151));
              if (objc_msgSend_isRows(v7, v121, v122, v123, v124))
              {
                sub_2210BD068(v152, v96, v97, (v97 - v96) >> 4);
                v125 = v153;
                v97 = v154;
              }

              else
              {
                sub_2210BD068(v152, v153, v154, (v154 - v153) >> 4);
                v125 = v96;
              }

              sub_2210BD068(v151, v125, v97, (v97 - v125) >> 4);
              if (objc_msgSend_rewriteType(*(a1 + 200), v126, v127, v128, v129) != 4 || (*(a1 + 100) & 1) != 0)
              {
                objc_msgSend_addToIncludedUidsTractColumnUids_rowUids_isRangeRef_preserveRectangularRange_(v120, v130, v152, v151, 1, 1);
                TSCEASTIteratorBase::createReferenceErrorWithUidTractList(a1, v120, &v157, &v156);
              }

              v131 = [TSCEUndoTract alloc];
              v133 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v131, v132, v152, v151, 4);
              objc_msgSend_setIsRangeRef_(v133, v134, 1, v135, v136);
              objc_msgSend_appendUidTract_(v120, v137, v133, v138, v139);
              v140 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
              if (v157.var0 == v140->var0.var0._tableUID._lower && v157.var1 == v140->var0.var0._tableUID._upper)
              {
                v157.var0 = 0;
                v157.var1 = 0;
              }

              sub_22122B9B8(&__p, &v157, v120, &v156);
              TSCEASTIteratorBase::createUidReference(a1, &__p, v141, v142, v143);
            }

            if (v153)
            {
              v154 = v153;
              operator delete(v153);
            }
          }
        }
      }
    }
  }

  return a2;
}

void sub_2213BC180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (v23)
  {
    operator delete(v23);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

TSCEASTColonTractElement *sub_2213BC2D8(TSCEASTIteratorBase *a1, TSCEASTColonTractElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTColonTractElement::relativeTractRef(this, a1, a3, a4, a5);
  v182.var0 = objc_msgSend_tableUID(v7, v8, v9, v10, v11);
  v182.var1 = v12;
  if (!(v182.var0 | v12))
  {
    *&v182.var0 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0._tableUID;
  }

  v13 = *(a1 + 25);
  *v180 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0._tableUID;
  v17 = objc_msgSend_isForTable_(v13, v14, v180, v15, v16);
  v25 = objc_msgSend_isForTable_(*(a1 + 25), v18, &v182, v19, v20);
  if ((v17 | v25))
  {
    v26 = objc_msgSend_rowColumnInfo(*(a1 + 25), v21, v22, v23, v24);
    v180[0] = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0.coordinate;
    v30 = objc_msgSend_absoluteCellTractRefForHostCell_(v7, v27, v180, v28, v29);
    v174 = TSCEASTElement::mutableUndoTractList(this, a1);
    isRectangularRange = objc_msgSend_isRectangularRange(v30, v31, v32, v33, v34);
    objc_msgSend_setPreserveRectangular_(v30, v36, isRectangularRange, v37, v38);
    if (v17)
    {
      v43 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
      v17 = sub_2212C7330(v43);
    }

    if (!v25)
    {
      v44 = 0;
      v45 = 0;
      goto LABEL_23;
    }

    if (v30)
    {
      objc_msgSend_boundingRangeRef(v30, v39, v40, v41, v42);
    }

    else
    {
      *v180 = 0u;
      v181 = 0u;
    }

    if (objc_msgSend_isRows(v26, v39, v40, v41, v42))
    {
      if ((objc_msgSend_spansAllRows(v30, v46, v47, v48, v49) & 1) == 0)
      {
        v54 = objc_msgSend_rowOrColumnUids(v26, v50, v51, v52, v53);
        v59 = objc_msgSend_indexes(v54, v55, v56, v57, v58);
        v63 = objc_msgSend_collapseOutRowIndexes_(v30, v60, v59, v61, v62);
        goto LABEL_18;
      }
    }

    else if ((objc_msgSend_spansAllColumns(v30, v46, v47, v48, v49) & 1) == 0)
    {
      v54 = objc_msgSend_rowOrColumnUids(v26, v50, v51, v52, v53);
      v59 = objc_msgSend_indexes(v54, v64, v65, v66, v67);
      v63 = objc_msgSend_collapseOutColumnIndexes_(v30, v68, v59, v69, v70);
LABEL_18:
      v71 = v63;

      v44 = v71;
      if (!v30)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    v44 = 0;
    if (!v30)
    {
LABEL_19:
      *v178 = 0u;
      v179 = 0u;
      goto LABEL_20;
    }

LABEL_16:
    objc_msgSend_boundingRangeRef(v30, v50, v51, v52, v53);
LABEL_20:
    v72 = objc_msgSend_count(v44, v50, v51, v52, v53);
    v73 = !TSCERangeRef::operator==(v180, v178);
    v74 = v72 == 0;
    v45 = v72 != 0;
    if (!v74)
    {
      v73 = 1;
    }

    v17 |= v73;
LABEL_23:
    if (objc_msgSend_isValid(v30, v39, v40, v41, v42))
    {
      if (!v45 || (*(a1 + 100) & 1) != 0)
      {
        if (!v17)
        {
          goto LABEL_75;
        }

        goto LABEL_74;
      }

      if (v26)
      {
        objc_msgSend_uuidsForIndexes_(v26, v75, v44, v77, v78);
      }

      else
      {
        v180[0] = 0;
        v180[1] = 0;
        *&v181 = 0;
      }

      if (objc_msgSend_isRows(v26, v75, v76, v77, v78))
      {
        v178[0] = 0;
        v178[1] = 0;
        *&v179 = 0;
        objc_msgSend_addToIncludedUidsTractColumnUids_rowUids_isRangeRef_preserveRectangularRange_(v174, v146, v178, v180, 1, isRectangularRange);
        if (v178[0])
        {
          v178[1] = v178[0];
          operator delete(v178[0]);
        }

        if ((*(a1 + 98) & 1) == 0)
        {
          objc_msgSend_removeFromExcludedUidsTractRowUids_(v174, v147, v180, v148, v149);
          if (objc_msgSend_rewriteType(*(a1 + 25), v150, v151, v152, v153) == 4)
          {
            v154 = [TSCEUndoTract alloc];
            v178[0] = 0;
            v178[1] = 0;
            *&v179 = 0;
            v159 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v154, v155, v178, v180, 6);
            if (v178[0])
            {
              v178[1] = v178[0];
              operator delete(v178[0]);
            }

LABEL_70:
            objc_msgSend_addTractAtFront_(v174, v156, v159, v157, v158);
          }
        }
      }

      else
      {
        v178[0] = 0;
        v178[1] = 0;
        *&v179 = 0;
        objc_msgSend_addToIncludedUidsTractColumnUids_rowUids_isRangeRef_preserveRectangularRange_(v174, v146, v180, v178, 1, isRectangularRange);
        if (v178[0])
        {
          v178[1] = v178[0];
          operator delete(v178[0]);
        }

        if ((*(a1 + 98) & 1) == 0)
        {
          objc_msgSend_removeFromExcludedUidsTractColumnUids_(v174, v160, v180, v161, v162);
          if (objc_msgSend_rewriteType(*(a1 + 25), v163, v164, v165, v166) == 4)
          {
            v167 = [TSCEUndoTract alloc];
            v178[0] = 0;
            v178[1] = 0;
            *&v179 = 0;
            v159 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v167, v168, v180, v178, 6);
            if (v178[0])
            {
              v178[1] = v178[0];
              operator delete(v178[0]);
            }

            goto LABEL_70;
          }
        }
      }

      if (v180[0])
      {
        v180[1] = v180[0];
        operator delete(v180[0]);
      }

      if ((v17 & 1) == 0)
      {
        goto LABEL_75;
      }

LABEL_74:
      v169 = [TSCERelativeTractRef alloc];
      v180[0] = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var1.coordinate;
      v172 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v169, v170, v30, v180, v171);
      TSCEASTColonTractElement::setRelativeTractRef(this, v172, v7, a1, 0);
      TSCEASTColonTractElement::setUndoTractList(this, v174, a1);

LABEL_75:
      goto LABEL_76;
    }

    if (v26)
    {
      objc_msgSend_uuidsForIndexes_(v26, v75, v44, v77, v78);
    }

    else
    {
      v180[0] = 0;
      v180[1] = 0;
      *&v181 = 0;
    }

    if (objc_msgSend_isRows(v26, v75, v76, v77, v78))
    {
      v83 = objc_msgSend_spansAllColumns(v30, v79, v80, v81, v82);
    }

    else
    {
      v83 = objc_msgSend_spansAllRows(v30, v79, v80, v81, v82);
    }

    v88 = v83;
    v177._flags = objc_msgSend_preserveFlags(v30, v84, v85, v86, v87);
    if (v88)
    {
      operator new();
    }

    v89 = sub_221089E8C(a1);
    v94 = objc_msgSend_tableUID(v26, v90, v91, v92, v93);
    v97 = objc_msgSend_resolverForTableUID_(v89, v95, *v94, v94[1], v96);

    if (objc_msgSend_isRows(v26, v98, v99, v100, v101))
    {
      v106 = objc_msgSend_columns(v30, v102, v103, v104, v105);
      v109 = TSUIndexSet::asNSIndexSet(v106);
      if (v97)
      {
        objc_msgSend_UIDsForIndexes_isRows_(v97, v107, v109, 0, v108);
LABEL_43:
        v114 = v178[0];
        v113 = v178[1];
        goto LABEL_45;
      }
    }

    else
    {
      v110 = objc_msgSend_rows(v30, v102, v103, v104, v105);
      v109 = TSUIndexSet::asNSIndexSet(v110);
      if (v97)
      {
        objc_msgSend_UIDsForIndexes_isRows_(v97, v111, v109, 1, v112);
        goto LABEL_43;
      }
    }

    v113 = 0;
    v114 = 0;
LABEL_45:
    v178[0] = 0;
    v178[1] = 0;
    *&v179 = 0;

    v178[0] = 0;
    v178[1] = 0;
    *&v179 = 0;
    memset(&v176[0]._lower + 1, 0, 24);
    if (objc_msgSend_isRows(v26, v115, v116, v117, v118))
    {
      sub_2210BD068(v178, v114, v113, (v113 - v114) >> 4);
      v119 = v180[0];
      v113 = v180[1];
    }

    else
    {
      sub_2210BD068(v178, v180[0], v180[1], (v180[1] - v180[0]) >> 4);
      v119 = v114;
    }

    sub_2210BD068((&v176[0]._lower + 1), v119, v113, (v113 - v119) >> 4);
    if (objc_msgSend_rewriteType(*(a1 + 25), v120, v121, v122, v123) != 4 || (*(a1 + 100) & 1) != 0)
    {
      objc_msgSend_addToIncludedUidsTractColumnUids_rowUids_isRangeRef_preserveRectangularRange_(v174, v124, v178, &v176[0]._lower + 1, 1, isRectangularRange);
      TSCEASTIteratorBase::createReferenceErrorWithUidTractList(a1, v174, &v182, &v177);
    }

    v125 = [TSCEUndoTract alloc];
    v127 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v125, v126, v178, &v176[0]._lower + 1, 4);
    v132 = objc_msgSend_preserveRectangular(v30, v128, v129, v130, v131);
    objc_msgSend_setPreserveRectangularRange_(v127, v133, v132, v134, v135);
    objc_msgSend_setIsRangeRef_(v127, v136, 1, v137, v138);
    objc_msgSend_appendUidTract_(v174, v139, v127, v140, v141);
    v142 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
    if (v182.var0 == v142->var0.var0._tableUID._lower && v182.var1 == v142->var0.var0._tableUID._upper)
    {
      v182.var0 = 0;
      v182.var1 = 0;
    }

    LOBYTE(v176[0]._lower) = TSCEASTElement::refFlags(this, a1);
    v175._flags = TSCEASTColonTractElement::colonTractFlags(this, a1, v143, v144, v145);
    TSCEASTIteratorBase::createUidReference(a1, &v182, v176, &v175, v174);
  }

LABEL_76:

  return this;
}