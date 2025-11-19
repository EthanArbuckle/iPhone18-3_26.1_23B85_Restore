void std::__destroy_at[abi:nn200100]<KB::LanguageModelLexiconGroup,0>(uint64_t a1)
{
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

void std::__shared_ptr_emplace<KB::UnigramCandidateRefinery>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDB8B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

uint64_t std::__shared_ptr_pointer<KB::LanguageModelContainer *,std::shared_ptr<KB::LanguageModelContainer>::__shared_ptr_default_delete<KB::LanguageModelContainer,KB::LanguageModelContainer>,std::allocator<KB::LanguageModelContainer>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<KB::LanguageModelContainer *,std::shared_ptr<KB::LanguageModelContainer>::__shared_ptr_default_delete<KB::LanguageModelContainer,KB::LanguageModelContainer>,std::allocator<KB::LanguageModelContainer>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<KB::LanguageModelLexiconGroup>>(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

__n128 __Block_byref_object_copy__84(__n128 *a1, __n128 *a2)
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

uint64_t std::allocator_traits<std::allocator<KB::LexiconInfo>>::construct[abi:nn200100]<KB::LexiconInfo,KB::LexiconInfo,void,0>(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  *a1 = 0x100000;
  *(a1 + 4) = 0;
  *(a1 + 6) = 0;
  *(a1 + 8) = 0;
  v4 = KB::String::operator=(a1, a2);
  *(v4 + 32) = 0x100000;
  *(v3 + 36) = 0;
  *(v3 + 38) = 0;
  *(v3 + 40) = 0;
  KB::String::operator=(v4 + 32, (a2 + 32));
  *(v3 + 64) = 0x100000;
  *(v3 + 68) = 0;
  *(v3 + 70) = 0;
  *(v3 + 72) = 0;
  KB::String::operator=(v3 + 64, (a2 + 64));
  *(v3 + 96) = 0x100000;
  *(v3 + 100) = 0;
  *(v3 + 102) = 0;
  *(v3 + 104) = 0;
  KB::String::operator=(v3 + 96, (a2 + 96));
  *(v3 + 128) = 0x100000;
  v3 += 128;
  *(v3 + 4) = 0;
  *(v3 + 6) = 0;
  *(v3 + 8) = 0;
  result = KB::String::operator=(v3, (a2 + 128));
  v6 = *(a2 + 160);
  *(v3 + 40) = *(a2 + 168);
  *(v3 + 32) = v6;
  return result;
}

uint64_t TIInputManager::advanced_models_loaded(TIInputManager *this)
{
  result = *(this + 34);
  if (result)
  {
    result = (*(*result + 16))(result);
    if (result)
    {
      return (*(**(this + 34) + 152))(*(this + 34)) != 0;
    }
  }

  return result;
}

uint64_t __Block_byref_object_copy__2734(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id TIStatisticsCategoryToLegacyCategoryDictionary()
{
  if (TIStatisticsCategoryToLegacyCategoryDictionary_onceToken != -1)
  {
    dispatch_once(&TIStatisticsCategoryToLegacyCategoryDictionary_onceToken, &__block_literal_global_3158);
  }

  v1 = TIStatisticsCategoryToLegacyCategoryDictionary_dict;

  return v1;
}

id TIStatisticsDescriptionToLegacyDescriptionDictionary()
{
  if (TIStatisticsDescriptionToLegacyDescriptionDictionary_onceToken != -1)
  {
    dispatch_once(&TIStatisticsDescriptionToLegacyDescriptionDictionary_onceToken, &__block_literal_global_346);
  }

  v1 = TIStatisticsDescriptionToLegacyDescriptionDictionary_dict;

  return v1;
}

id TIStatisticsEngagementDescriptionToLegacyDescriptionDictionary()
{
  if (TIStatisticsEngagementDescriptionToLegacyDescriptionDictionary_onceToken != -1)
  {
    dispatch_once(&TIStatisticsEngagementDescriptionToLegacyDescriptionDictionary_onceToken, &__block_literal_global_348);
  }

  v1 = TIStatisticsEngagementDescriptionToLegacyDescriptionDictionary_dict;

  return v1;
}

void __TIStatisticsEngagementDescriptionToLegacyDescriptionDictionary_block_invoke()
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3[0] = @"noMatchUserInpt";
  v3[1] = @"moderatMatchUserInpt";
  v4[0] = @"noMatchUserInpt";
  v4[1] = @"moderatMatchUserInpt";
  v3[2] = @"mildMatchUserInpt";
  v3[3] = @"exactMatchUserInpt";
  v4[2] = @"mildMatchUserInpt";
  v4[3] = @"exactMatchUserInpt";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:4];
  v1 = TIStatisticsEngagementDescriptionToLegacyDescriptionDictionary_dict;
  TIStatisticsEngagementDescriptionToLegacyDescriptionDictionary_dict = v0;

  v2 = *MEMORY[0x277D85DE8];
}

void __TIStatisticsDescriptionToLegacyDescriptionDictionary_block_invoke()
{
  v4[49] = *MEMORY[0x277D85DE8];
  v3[0] = @"None";
  v3[1] = @"NotSupByAp";
  v4[0] = @"None";
  v4[1] = @"NotSupByAp";
  v3[2] = @"DevLocked";
  v3[3] = @"ItemCrFail";
  v4[2] = @"DevLocked";
  v4[3] = @"ItemCrFail";
  v3[4] = @"UnsupSmTyp";
  v3[5] = @"UnauSemClt";
  v4[4] = @"UnsupSmTyp";
  v4[5] = @"UnauSemClt";
  v3[6] = @"DtCoTmExc";
  v3[7] = @"PBCutoff";
  v4[6] = @"DtCoTmExc";
  v4[7] = @"PBCutoff";
  v3[8] = @"PBEmpty";
  v3[9] = @"CntSInitTO";
  v4[8] = @"PBEmpty";
  v4[9] = @"CntSInitTO";
  v3[10] = @"FieldsNone";
  v3[11] = @"NoMeCard";
  v4[10] = @"FieldsNone";
  v4[11] = @"NoMeCard";
  v3[12] = @"CntNotHvFd";
  v3[13] = @"SGNmLupFEr";
  v4[12] = @"CntNotHvFd";
  v4[13] = @"SGNmLupFEr";
  v3[14] = @"CNNmLupFEr";
  v3[15] = @"NoNamMatch";
  v4[14] = @"CNNmLupFEr";
  v4[15] = @"NoNamMatch";
  v3[16] = @"TooAmbigus";
  v3[17] = @"3PWoName";
  v4[16] = @"TooAmbigus";
  v4[17] = @"3PWoName";
  v3[18] = @"ESrvInitTO";
  v3[19] = @"EKAccDen";
  v4[18] = @"ESrvInitTO";
  v4[19] = @"EKAccDen";
  v3[20] = @"EKAccTO";
  v3[21] = @"NoEvents";
  v4[20] = @"EKAccTO";
  v4[21] = @"NoEvents";
  v3[22] = @"RPoINoRecp";
  v3[23] = @"NAPoIInEvt";
  v4[22] = @"RPoINoRecp";
  v4[23] = @"NAPoIInEvt";
  v3[24] = @"NoFrEvents";
  v3[25] = @"NoBsEvents";
  v4[24] = @"NoFrEvents";
  v4[25] = @"NoBsEvents";
  v3[26] = @"EventNoLoc";
  v3[27] = @"UnsupTimeC";
  v4[26] = @"EventNoLoc";
  v4[27] = @"UnsupTimeC";
  v3[28] = @"DuetNoAct";
  v3[29] = @"DuetQryTO";
  v4[28] = @"DuetNoAct";
  v4[29] = @"DuetQryTO";
  v3[30] = @"CalSrcNoEv";
  v3[31] = @"CalSrcInel";
  v4[30] = @"CalSrcNoEv";
  v4[31] = @"CalSrcInel";
  v3[32] = @"StreetTO";
  v3[33] = @"RouteTO";
  v4[32] = @"StreetTO";
  v4[33] = @"RouteTO";
  v3[34] = @"NavTimeMis";
  v3[35] = @"NavStrMis";
  v4[34] = @"NavTimeMis";
  v4[35] = @"NavStrMis";
  v3[36] = @"NavDistMis";
  v3[37] = @"NavDstMiss";
  v4[36] = @"NavDistMis";
  v4[37] = @"NavDstMiss";
  v3[38] = @"NavNotNav";
  v3[39] = @"NavEnded";
  v4[38] = @"NavNotNav";
  v4[39] = @"NavEnded";
  v3[40] = @"NavGuideTO";
  v3[41] = @"NavInitTO";
  v4[40] = @"NavGuideTO";
  v4[41] = @"NavInitTO";
  v3[42] = @"HKQueryTO";
  v3[43] = @"HKDataNAvl";
  v4[42] = @"HKQueryTO";
  v4[43] = @"HKDataNAvl";
  v3[44] = @"HKSvInitTO";
  v3[45] = @"HKSvNoSamp";
  v4[44] = @"HKSvInitTO";
  v4[45] = @"HKSvNoSamp";
  v3[46] = @"HKError";
  v3[47] = @"CntMkVlSmp";
  v4[46] = @"HKError";
  v4[47] = @"CntMkVlSmp";
  v3[48] = @"PerAppSet";
  v4[48] = @"PerAppSet";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:49];
  v1 = TIStatisticsDescriptionToLegacyDescriptionDictionary_dict;
  TIStatisticsDescriptionToLegacyDescriptionDictionary_dict = v0;

  v2 = *MEMORY[0x277D85DE8];
}

void __TIStatisticsCategoryToLegacyCategoryDictionary_block_invoke()
{
  v4[21] = *MEMORY[0x277D85DE8];
  v3[0] = @"1stPerson";
  v3[1] = @"3rdPerson";
  v4[0] = @"1stPersonCategory";
  v4[1] = @"3rdPersonCategory";
  v3[2] = @"contactAnyPhone";
  v3[3] = @"contactSpecificPhone";
  v4[2] = @"contactCategory.anyPhone";
  v4[3] = @"contactCategory.specificPhone";
  v3[4] = @"contactAddressWork";
  v3[5] = @"contactAddressHome";
  v4[4] = @"contactCategory.addressWork";
  v4[5] = @"contactCategory.addressHome";
  v3[6] = @"contactAnyAddress";
  v3[7] = @"contactFax";
  v4[6] = @"contactCategory.anyAddress";
  v4[7] = @"contactCategory.fax";
  v3[8] = @"contactEmail";
  v3[9] = @"contactFaceTime";
  v4[8] = @"contactCategory.email";
  v4[9] = @"contactCategory.facetime";
  v3[10] = @"contactBio";
  v3[11] = @"locationAutocompleteSendCurrentButton";
  v4[10] = @"contactCategory.bio";
  v4[11] = @"locationAutocomplete.sendCurrentButton";
  v3[12] = @"recentGenericAddress";
  v3[13] = @"recentAddress";
  v4[12] = @"recentCategory.genericAddress";
  v4[13] = @"recentCategory.address";
  v3[14] = @"recentPhone";
  v3[15] = @"eventAvailability";
  v4[14] = @"recentCategory.phone";
  v4[15] = @"eventCategory.availability";
  v3[16] = @"eventNext";
  v3[17] = @"money";
  v4[16] = @"eventCategory.next";
  v4[17] = @"moneyCategory";
  v3[18] = @"socialMedia";
  v3[19] = @"health";
  v4[18] = @"socialMediaCategory";
  v4[19] = @"healthCategory";
  v3[20] = @"navigation";
  v4[20] = @"navigationCategory";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:21];
  v1 = TIStatisticsCategoryToLegacyCategoryDictionary_dict;
  TIStatisticsCategoryToLegacyCategoryDictionary_dict = v0;

  v2 = *MEMORY[0x277D85DE8];
}

uint64_t __TIStatisticsReportCPStats_block_invoke(uint64_t a1)
{
  TIStatisticsReportCPStats_usageCountDefaults = [*(a1 + 32) integerForKey:@"kbUserDidPath"];
  result = [*(a1 + 32) BOOLForKey:*MEMORY[0x277D6FC20]];
  TIStatisticsReportCPStats_didDiscover = result;
  if (TIStatisticsReportCPStats_usageCountDefaults == 0x7FFFFFFFFFFFFFFFLL)
  {
    TIStatisticsReportCPStats_usageCountDefaults = 3;
  }

  return result;
}

id TIStatisticsCategoriesForProactiveTrigger(void *a1)
{
  v1 = a1;
  v2 = [v1 triggerSourceType];
  v3 = [v1 attributes];

  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [v3 objectForKey:*MEMORY[0x277D23050]];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_283FDFAF8;
  }

  v8 = v7;

  v9 = [v3 objectForKey:*MEMORY[0x277D23028]];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &stru_283FDFAF8;
  }

  v12 = v11;

  v13 = [v3 objectForKey:*MEMORY[0x277D22F30]];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = &stru_283FDFAF8;
  }

  v16 = v15;

  v17 = [v3 objectForKey:*MEMORY[0x277D23010]];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = &stru_283FDFAF8;
  }

  v20 = v19;

  if (([(__CFString *)v12 isEqualToString:*MEMORY[0x277D22F68]]& 1) != 0 || ([(__CFString *)v12 isEqualToString:*MEMORY[0x277D23018]]? (v21 = v2 == 1) : (v21 = 0), v21))
  {
    [v4 addObject:@"1stPerson"];
  }

  if ([(__CFString *)v12 isEqualToString:*MEMORY[0x277D23040]])
  {
    [v4 addObject:@"3rdPerson"];
  }

  if ([(__CFString *)v8 isEqualToString:*MEMORY[0x277D22FE0]])
  {
    if (([(__CFString *)v16 isEqualToString:*MEMORY[0x277D22FE8]]& 1) != 0)
    {
      v22 = @"contactAnyPhone";
LABEL_60:
      [v4 addObject:v22];
      goto LABEL_61;
    }

    if (([(__CFString *)v16 isEqualToString:*MEMORY[0x277D22FC0]]& 1) != 0 || ([(__CFString *)v16 isEqualToString:*MEMORY[0x277D22FA0]]& 1) != 0 || ([(__CFString *)v16 isEqualToString:*MEMORY[0x277D23070]]& 1) != 0)
    {
      v22 = @"contactSpecificPhone";
      goto LABEL_60;
    }

    if (([(__CFString *)v16 isEqualToString:*MEMORY[0x277D22F60]]& 1) != 0)
    {
      v22 = @"contactFax";
      goto LABEL_60;
    }

    if (([(__CFString *)v16 isEqualToString:*MEMORY[0x277D22F18]]& 1) != 0 || ([(__CFString *)v16 isEqualToString:*MEMORY[0x277D22FF0]]& 1) != 0)
    {
      v22 = @"contactAnyAddress";
      goto LABEL_60;
    }

    if (([(__CFString *)v16 isEqualToString:*MEMORY[0x277D22F90]]& 1) != 0 || ([(__CFString *)v16 isEqualToString:*MEMORY[0x277D22F98]]& 1) != 0)
    {
      v22 = @"contactAddressHome";
      goto LABEL_60;
    }

    if (([(__CFString *)v16 isEqualToString:*MEMORY[0x277D23060]]& 1) != 0 || ([(__CFString *)v16 isEqualToString:*MEMORY[0x277D23068]]& 1) != 0)
    {
      v22 = @"contactAddressWork";
      goto LABEL_60;
    }

    if (([(__CFString *)v16 isEqualToString:*MEMORY[0x277D22F40]]& 1) != 0)
    {
      v22 = @"contactEmail";
      goto LABEL_60;
    }

    if (([(__CFString *)v16 isEqualToString:*MEMORY[0x277D22F50]]& 1) != 0)
    {
      v22 = @"contactFaceTime";
      goto LABEL_60;
    }

    if (([(__CFString *)v16 isEqualToString:*MEMORY[0x277D22F20]]& 1) != 0 || ([(__CFString *)v16 isEqualToString:*MEMORY[0x277D22F78]]& 1) != 0 || ([(__CFString *)v16 isEqualToString:*MEMORY[0x277D23030]]& 1) != 0)
    {
      v22 = @"contactBio";
      goto LABEL_60;
    }

    if (([(__CFString *)v16 isEqualToString:*MEMORY[0x277D23020]]& 1) != 0)
    {
      v22 = @"socialMedia";
      goto LABEL_60;
    }
  }

  else if ([(__CFString *)v8 isEqualToString:*MEMORY[0x277D22FB8]])
  {
    if (([(__CFString *)v12 isEqualToString:*MEMORY[0x277D22F28]]& 1) != 0)
    {
      v22 = @"locationAutocompleteSendCurrentButton";
      goto LABEL_60;
    }

    if ([(__CFString *)v12 isEqualToString:*MEMORY[0x277D23008]])
    {
      if (([(__CFString *)v16 isEqualToString:*MEMORY[0x277D22F18]]& 1) != 0)
      {
        v22 = @"recentGenericAddress";
      }

      else
      {
        if (([(__CFString *)v16 isEqualToString:*MEMORY[0x277D22FE8]]& 1) == 0)
        {
          goto LABEL_61;
        }

        v22 = @"recentPhone";
      }

      goto LABEL_60;
    }

    if ([(__CFString *)v12 isEqualToString:*MEMORY[0x277D23000]]&& ([(__CFString *)v16 isEqualToString:*MEMORY[0x277D22F18]]& 1) != 0)
    {
      v22 = @"recentAddress";
      goto LABEL_60;
    }
  }

  else
  {
    if (![(__CFString *)v8 isEqualToString:*MEMORY[0x277D22F48]])
    {
      if (([(__CFString *)v8 isEqualToString:*MEMORY[0x277D46C00]]& 1) != 0)
      {
        v22 = @"money";
      }

      else if (([(__CFString *)v8 isEqualToString:*MEMORY[0x277D22F88]]& 1) != 0)
      {
        v22 = @"health";
      }

      else
      {
        if (![(__CFString *)v8 isEqualToString:*MEMORY[0x277D22FC8]])
        {
          goto LABEL_61;
        }

        v22 = @"navigation";
      }

      goto LABEL_60;
    }

    if (([(__CFString *)v20 isEqualToString:*MEMORY[0x277D22FD8]]& 1) != 0 || ([(__CFString *)v20 isEqualToString:*MEMORY[0x277D22F38]]& 1) != 0 || ([(__CFString *)v20 isEqualToString:*MEMORY[0x277D22FA8]]& 1) != 0)
    {
      v22 = @"eventAvailability";
      goto LABEL_60;
    }

    if (([(__CFString *)v20 isEqualToString:*MEMORY[0x277D22FD0]]& 1) != 0 || ([(__CFString *)v20 isEqualToString:*MEMORY[0x277D23048]]& 1) != 0 || ([(__CFString *)v20 isEqualToString:*MEMORY[0x277D22FB0]]& 1) != 0)
    {
      v22 = @"eventNext";
      goto LABEL_60;
    }
  }

LABEL_61:

  return v4;
}

void TIStatisticLogProactiveInfo(void *a1, void *a2, void *a3, void *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  context = objc_autoreleasePoolPush();
  v11 = [MEMORY[0x277CCAB68] string];
  [v11 appendString:@"proactive."];
  v30 = v8;
  [v11 appendString:v8];
  [v11 appendString:@"."];
  v12 = v11;
  v13 = [v11 mutableCopy];
  v14 = v10;
  [v13 appendString:v10];
  [v13 appendString:@"."];
  v32 = v7;
  [v13 appendString:v7];
  v28 = v13;
  v15 = TIStatisticGetKey();
  TIStatisticScalarIncrement();

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v9;
  v16 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v34;
    do
    {
      v19 = 0;
      do
      {
        if (*v34 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v33 + 1) + 8 * v19);
        v21 = objc_autoreleasePoolPush();
        v22 = v20;
        v23 = TIStatisticsCategoryToLegacyCategoryDictionary();
        v24 = [v23 objectForKeyedSubscript:v22];

        v25 = [v12 mutableCopy];
        [v25 appendString:v24];
        [v25 appendString:@"."];
        [v25 appendString:v14];
        [v25 appendString:@"."];
        [v25 appendString:v32];
        v26 = TIStatisticGetKey();
        TIStatisticScalarIncrement();

        objc_autoreleasePoolPop(v21);
        ++v19;
      }

      while (v17 != v19);
      v17 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v17);
  }

  objc_autoreleasePoolPop(context);
  v27 = *MEMORY[0x277D85DE8];
}

void TIStatisticLogProactive(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a1;
  v9 = a2;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    v12 = _TIQueueBackground();
    v16 = v9;
    v17 = v10;
    v18 = v8;
    v19 = v11;
    TIDispatchAsync();

    v13 = v16;
  }

  else
  {
    v13 = TIProactiveQuickTypeOSLogFacility();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s %s", "TIStatisticLogProactive", "Unexpected nil trigger"];
      *buf = 138412290;
      v21 = v15;
      _os_log_error_impl(&dword_22CA55000, v13, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __TIStatisticLogProactive_block_invoke(uint64_t a1)
{
  v59 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) attributes];
  v4 = [v3 objectForKey:*MEMORY[0x277D23050]];
  v5 = [v3 objectForKey:*MEMORY[0x277D22F30]];
  v6 = *(a1 + 40);
  if (!v6)
  {
    v6 = @"NA";
  }

  v7 = v6;
  if (![v4 isEqualToString:*MEMORY[0x277D22FE0]] || v5 && (objc_msgSend(MEMORY[0x277CBEB68], "null"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v5, "isEqual:", v8), v8, (v9 & 1) == 0))
  {
    v10 = *(a1 + 64);
    v11 = *(a1 + 32);
    v48 = v5;
    v47 = v7;
    if (TIStatisticCheckRecentTriggersForTrigger_onceToken != -1)
    {
      dispatch_once(&TIStatisticCheckRecentTriggersForTrigger_onceToken, &__block_literal_global_632);
    }

    v12 = TIStatisticCheckRecentTriggersForTrigger_recentByMetricType;
    objc_sync_enter(v12);
    v13 = TIStatisticCheckRecentTriggersForTrigger_recentByMetricType;
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v10];
    v15 = [v13 objectForKeyedSubscript:v14];

    if (!v15)
    {
      v15 = [objc_alloc(MEMORY[0x277CCA940]) initWithCapacity:2];
      v16 = TIStatisticCheckRecentTriggersForTrigger_recentByMetricType;
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v10];
      [v16 setObject:v15 forKeyedSubscript:v17];
    }

    objc_sync_exit(v12);

    v18 = v15;
    objc_sync_enter(v18);
    v19 = [v18 containsObject:v11];
    [v18 addObject:v11];
    v20 = dispatch_time(0, 300000000000);
    v21 = _TIQueueLow();
    *&block = MEMORY[0x277D85DD0];
    *(&block + 1) = 3221225472;
    v55 = __TIStatisticCheckRecentTriggersForTrigger_block_invoke_2;
    v56 = &unk_278733738;
    v57 = v18;
    v58 = v11;
    v22 = v18;
    v23 = v11;
    dispatch_after(v20, v21, &block);

    objc_sync_exit(v22);
    if (v19 && (*(a1 + 64) & 0xFE) != 6)
    {
      v26 = TIProactiveQuickTypeOSLogFacility();
      v7 = v47;
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
LABEL_44:

        goto LABEL_45;
      }

      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s %s", "TIStatisticLogProactive_block_invoke", "Filtering out likely overlogging of offered proactive candidate."];
      LODWORD(block) = 138412290;
      *(&block + 4) = v30;
      _os_log_debug_impl(&dword_22CA55000, v26, OS_LOG_TYPE_DEBUG, "%@", &block, 0xCu);
    }

    else
    {
      v24 = [*(a1 + 32) triggerSourceType];
      v7 = v47;
      if (v24 > 2)
      {
        v25 = 0;
      }

      else
      {
        v25 = off_27872FAE8[v24];
      }

      v26 = TIStatisticsCategoriesForProactiveTrigger(*(a1 + 32));
      v27 = *(a1 + 48);
      if (*(a1 + 64) - 1 > 6)
      {
        v28 = @"triggered";
      }

      else
      {
        v28 = off_27872FAB0[(*(a1 + 64) - 1)];
      }

      v29 = v28;
      TIStatisticLogProactiveInfo(v27, v25, v26, v29);

      v30 = +[_TIStatisticsProactiveTracker sharedInstance];
      v31 = *(a1 + 64);
      if (v31 <= 3)
      {
        if (v31 - 1 >= 3)
        {
          if (!*(a1 + 64))
          {
            [v30 trackTriggeredWithSource:objc_msgSend(*(a1 + 32) categories:"triggerSourceType") locale:v26 fieldType:{*(a1 + 48), v47}];
          }
        }

        else
        {
          [v30 trackFailureWithSource:objc_msgSend(*(a1 + 32) reason:"triggerSourceType") categories:*(a1 + 64) locale:v26 fieldType:{*(a1 + 48), v47}];
        }

        goto LABEL_43;
      }

      if (*(a1 + 64) > 5u)
      {
        if (v31 == 6)
        {
          v46 = v2;
          v45 = v30;
          [v30 trackSelectedWithSource:objc_msgSend(*(a1 + 32) position:"triggerSourceType") categories:0 locale:v26 fieldType:{*(a1 + 48), v47}];
          v36 = 1;
          goto LABEL_35;
        }

        if (v31 == 7)
        {
          v46 = v2;
          v36 = 1;
          v45 = v30;
          [v30 trackSelectedWithSource:objc_msgSend(*(a1 + 32) position:"triggerSourceType") categories:1 locale:v26 fieldType:{*(a1 + 48), v47}];
LABEL_35:
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v37 = *(a1 + 56);
          v38 = [v37 countByEnumeratingWithState:&v49 objects:v53 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v50;
            do
            {
              for (i = 0; i != v39; ++i)
              {
                if (*v50 != v40)
                {
                  objc_enumerationMutation(v37);
                }

                v42 = *(*(&v49 + 1) + 8 * i);
                v43 = +[TIProactiveQuickTypeManager sharedInstance];
                [v43 provideFeedbackForString:v42 type:v36 style:1];
              }

              v39 = [v37 countByEnumeratingWithState:&v49 objects:v53 count:16];
            }

            while (v39);
          }

          v2 = v46;
          v7 = v47;
          v5 = v48;
          v30 = v45;
        }
      }

      else
      {
        if (v31 == 4)
        {
          v46 = v2;
          v32 = [*(a1 + 32) triggerSourceType];
          v33 = *(a1 + 48);
          v45 = v30;
          v34 = v30;
          v35 = 1;
          goto LABEL_33;
        }

        if (v31 == 5)
        {
          v46 = v2;
          v32 = [*(a1 + 32) triggerSourceType];
          v33 = *(a1 + 48);
          v45 = v30;
          v34 = v30;
          v35 = 2;
LABEL_33:
          [v34 trackSuggestedWithSource:v32 count:v35 categories:v26 locale:v33 fieldType:v47];
          v36 = 3;
          goto LABEL_35;
        }
      }
    }

LABEL_43:

    goto LABEL_44;
  }

LABEL_45:

  objc_autoreleasePoolPop(v2);
  v44 = *MEMORY[0x277D85DE8];
}

void __TIStatisticCheckRecentTriggersForTrigger_block_invoke_2(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  [*(a1 + 32) removeObject:*(a1 + 40)];
  objc_sync_exit(obj);
}

uint64_t __TIStatisticCheckRecentTriggersForTrigger_block_invoke()
{
  TIStatisticCheckRecentTriggersForTrigger_recentByMetricType = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:8];

  return MEMORY[0x2821F96F8]();
}

void TIStatisticLogProactiveDescription(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (v10 && v11)
  {
    v14 = _TIQueueBackground();
    v15 = v10;
    v16 = v13;
    v17 = v9;
    v18 = v11;
    v19 = v12;
    TIDispatchAsync();
  }
}

void __TIStatisticLogProactiveDescription_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) attributes];
  v4 = [v3 objectForKey:*MEMORY[0x277D23050]];
  v5 = [v3 objectForKey:*MEMORY[0x277D22F30]];
  v6 = *(a1 + 40);
  if (!v6)
  {
    v6 = @"NA";
  }

  v7 = v6;
  if (![v4 isEqualToString:*MEMORY[0x277D22FE0]] || v5 && (objc_msgSend(MEMORY[0x277CBEB68], "null"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v5, "isEqual:", v8), v8, (v9 & 1) == 0))
  {
    v10 = [*(a1 + 32) triggerSourceType];
    if (v10 > 2)
    {
      v11 = 0;
    }

    else
    {
      v11 = off_27872FAE8[v10];
    }

    v12 = TIStatisticsCategoriesForProactiveTrigger(*(a1 + 32));
    TIStatisticLogProactiveInfo(*(a1 + 48), v11, v12, *(a1 + 56));
    v13 = +[_TIStatisticsProactiveTracker sharedInstance];
    if ([*(a1 + 64) isEqualToString:@"suggestion"])
    {
      v14 = TIStatisticsDescriptionToLegacyDescriptionDictionary();
      v15 = [v14 allKeys];

      if ([v15 containsObject:*(a1 + 56)])
      {
        [v13 trackFailureWithDescription:objc_msgSend(*(a1 + 32) description:"triggerSourceType") categories:*(a1 + 56) locale:v12 fieldType:{*(a1 + 48), v7}];
      }
    }

    else
    {
      if (![*(a1 + 64) isEqualToString:@"engagement"])
      {
LABEL_16:

        goto LABEL_17;
      }

      v16 = TIStatisticsEngagementDescriptionToLegacyDescriptionDictionary();
      v15 = [v16 allKeys];

      if ([v15 containsObject:*(a1 + 56)])
      {
        [v13 trackEngagementFailureWithDescription:objc_msgSend(*(a1 + 32) description:"triggerSourceType") categories:*(a1 + 56) locale:v12 fieldType:{*(a1 + 48), v7}];
      }
    }

    goto LABEL_16;
  }

LABEL_17:

  objc_autoreleasePoolPop(v2);
}

void TIStatisticsLogProactiveTimeOnScreen(void *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a1;
  v7 = a2;
  v8 = a4;
  v9 = _TIQueueBackground();
  v13 = v8;
  v14 = v7;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  TIDispatchAsync();
}

void __TIStatisticsLogProactiveTimeOnScreen_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = @"NA";
  v4 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v3 = *(a1 + 32);
  }

  v5 = v3;
  v6 = TIStatisticsCategoriesForProactiveTrigger(v4);
  v7 = +[_TIStatisticsProactiveTracker sharedInstance];
  [v7 trackPredictionTimeWithSource:objc_msgSend(*(a1 + 40) time:"triggerSourceType") selected:*(a1 + 64) categories:v6 locale:*(a1 + 48) fieldType:{v5, *(a1 + 56)}];

  objc_autoreleasePoolPop(v2);
}

void __TIStatisticsLogCandidateAcceptance_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) personalizationWordAcceptanceTracker];
  [v3 trackEventWithPropertyValues:MEMORY[0x277CBEBF8]];

  objc_autoreleasePoolPop(v2);
}

void __TIStatisticsLogCandidateAcceptance_block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) personalizationOfferTracker];
  [v3 trackEventWithPropertyValues:MEMORY[0x277CBEBF8]];

  v4 = +[TITransientLexiconManager sharedInstance];
  v5 = [*(a1 + 40) candidate];
  [v4 provideFeedbackForString:v5 type:3 style:2];

  objc_autoreleasePoolPop(v2);
}

void __TIStatisticsLogCandidateAcceptance_block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) personalizationEngagementTracker];
  [v3 trackEventWithPropertyValues:MEMORY[0x277CBEBF8]];

  v4 = +[TITransientLexiconManager sharedInstance];
  v5 = [*(a1 + 40) candidate];
  [v4 provideFeedbackForString:v5 type:1 style:*(a1 + 48)];

  objc_autoreleasePoolPop(v2);
}

void __TIStatisticsLogCandidateAcceptance_block_invoke_4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = MEMORY[0x277D46BB8];
  v4 = *MEMORY[0x277D46BF0];
  v5 = [*(a1 + 32) normalizedIdentifier];
  v6 = TIInputModeGetBaseLanguage();
  [v3 incrementAggdKeyForCategory:0 forAction:v4 withLanguageID:v6];

  v7 = MEMORY[0x277D46BB8];
  v8 = [*(a1 + 40) responseKitCategory];
  v9 = [*(a1 + 32) normalizedIdentifier];
  v10 = TIInputModeGetBaseLanguage();
  [v7 incrementAggdKeyForCategory:v8 forAction:v4 withLanguageID:v10];

  objc_autoreleasePoolPop(v2);
}

void __TIStatisticsLogCandidateAcceptance_block_invoke_5(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = MEMORY[0x277D46BB8];
  v4 = *MEMORY[0x277D46BE8];
  v5 = [*(a1 + 32) normalizedIdentifier];
  v6 = TIInputModeGetBaseLanguage();
  [v3 incrementAggdKeyForCategory:0 forAction:v4 withLanguageID:v6];

  v7 = MEMORY[0x277D46BB8];
  v8 = [*(a1 + 40) responseKitCategory];
  v9 = [*(a1 + 32) normalizedIdentifier];
  v10 = TIInputModeGetBaseLanguage();
  [v7 incrementAggdKeyForCategory:v8 forAction:v4 withLanguageID:v10];

  objc_autoreleasePoolPop(v2);
}

const void ***std::unique_ptr<KB::StaticDictionary>::reset[abi:nn200100](const void ****a1, const void ***a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    KB::StaticDictionary::~StaticDictionary(result);

    JUMPOUT(0x2318BE270);
  }

  return result;
}

__n128 __Block_byref_object_copy__3300(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

id ___Z34nameVariationsForContactCollectionP12NSDictionaryIP8NSStringP10_ICContactE_block_invoke(void *a1)
{
  v1 = a1;
  if (v1 && ([MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v1, "stringByTrimmingCharactersInSet:", v2), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "length"), v3, v2, v4))
  {
    v5 = v1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ___Z34nameVariationsForContactCollectionP12NSDictionaryIP8NSStringP10_ICContactE_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 score];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 score];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

id fieldNameSuffices()
{
  v3[3] = *MEMORY[0x277D85DE8];
  v3[0] = @"_input";
  v3[1] = @"_autocorrection";
  v3[2] = @"_alternate";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:3];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id payloadForCandidate(void *a1, void *a2, void *a3)
{
  v59[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [@"sourceBitset" stringByAppendingString:v6];
  v58 = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v5, "sourceMask")}];
  v59[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:&v58 count:1];

  v11 = [MEMORY[0x277CBEB38] dictionary];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v49 = v10;
    v12 = v5;
    v13 = [@"geometryScore" stringByAppendingString:v6];
    v56[0] = v13;
    v14 = MEMORY[0x277CCABB0];
    [v12 geometryScore];
    v17 = fmax(v16, -10.0) * 10.0;
    if (v16 <= 0.0)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0.0;
    }

    LODWORD(v15) = vcvtmd_s64_f64(v18);
    v19 = [v14 numberWithInt:{v15, v49}];
    v57[0] = v19;
    v20 = [@"languageModelScore" stringByAppendingString:v6];
    v56[1] = v20;
    v21 = MEMORY[0x277CCABB0];
    [v12 wordScore];
    v24 = fmax(v23, -10.0) * 10.0;
    if (v23 <= 0.0)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0.0;
    }

    LODWORD(v22) = vcvtmd_s64_f64(v25);
    v26 = [v21 numberWithInt:v22];
    v57[1] = v26;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];
    [v11 addEntriesFromDictionary:v27];

    v28 = [v12 lexiconLocale];

    if (v28)
    {
      v29 = [@"language" stringByAppendingString:v6];
      v54 = v29;
      v30 = [v12 lexiconLocale];
      v55 = v30;
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      [v11 addEntriesFromDictionary:v31];
    }

    if (([v12 dynamicUsageCount] & 0x80000000) == 0)
    {
      v32 = [@"localUsageCount" stringByAppendingString:v6];
      v52[0] = v32;
      v33 = MEMORY[0x277CCABB0];
      v34 = [v12 dynamicUsageCount];
      if (v34 > 4095)
      {
        v35 = 4096;
      }

      else
      {
        do
        {
          v35 = v34;
          v34 = (v34 - 1) & v34;
        }

        while (v34);
      }

      v36 = [v33 numberWithInt:v35];
      v53[0] = v36;
      v37 = [@"localPenaltyCount" stringByAppendingString:v6];
      v52[1] = v37;
      v38 = MEMORY[0x277CCABB0];
      v39 = [v12 dynamicPenaltyCount];
      if (v39 > 4095)
      {
        v40 = 4096;
      }

      else
      {
        do
        {
          v40 = v39;
          v39 = (v39 - 1) & v39;
        }

        while (v39);
      }

      v41 = [v38 numberWithInt:v40];
      v53[1] = v41;
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];
      [v11 addEntriesFromDictionary:v42];
    }

    v10 = v50;
  }

  v51[0] = v10;
  v51[1] = v11;
  v43 = [v5 candidate];
  v44 = payloadForText(v43, v6, v7);

  v51[2] = v44;
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:3];
  v46 = mergeDicts(v45);

  v47 = *MEMORY[0x277D85DE8];

  return v46;
}

void KB::CandidateFilter::remove_candidates_satisfying_predicate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x100000;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  if (a2)
  {
    v8 = &v18;
    KB::String::ensure_capacity(&v18, 256);
  }

  else
  {
    v8 = 0;
  }

  *&v15 = a2;
  *(&v15 + 1) = a3;
  std::__function::__value_func<BOOL ()(KB::Candidate const&,KB::String *)>::__value_func[abi:nn200100](v16, a4);
  v17 = v8;
  v9 = *a1;
  v10 = *(a1 + 8);
  v13 = v15;
  std::__function::__value_func<BOOL ()(KB::Candidate const&,KB::String *)>::__value_func[abi:nn200100](v14, v16);
  v14[4] = v17;
  if (v9 != v10)
  {
    while ((KB::CandidateFilter::remove_candidates_satisfying_predicate(std::vector<KB::Candidate> &,__CFString *,char const*,std::function<BOOL ()(KB::Candidate const&,KB::String *)>)::$_0::operator()(&v13, v9) & 1) == 0)
    {
      v9 = (v9 + 1000);
      if (v9 == v10)
      {
        v9 = v10;
        goto LABEL_14;
      }
    }

    if (v9 != v10)
    {
      for (i = (v9 + 1000); i != v10; i += 125)
      {
        if ((KB::CandidateFilter::remove_candidates_satisfying_predicate(std::vector<KB::Candidate> &,__CFString *,char const*,std::function<BOOL ()(KB::Candidate const&,KB::String *)>)::$_0::operator()(&v13, i) & 1) == 0)
        {
          KB::Candidate::operator=(v9, i);
          v9 = (v9 + 1000);
        }
      }
    }
  }

LABEL_14:
  std::__function::__value_func<BOOL ()(KB::Candidate const&,KB::String *)>::~__value_func[abi:nn200100](v14);
  std::vector<KB::Candidate>::erase(a1, v9, *(a1 + 8));
  std::__function::__value_func<BOOL ()(KB::Candidate const&,KB::String *)>::~__value_func[abi:nn200100](v16);
  if (v21 && v20 == 1)
  {
    free(v21);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t std::__function::__value_func<BOOL ()(KB::Candidate const&,KB::String *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t KB::CandidateFilter::remove_candidates_satisfying_predicate(std::vector<KB::Candidate> &,__CFString *,char const*,std::function<BOOL ()(KB::Candidate const&,KB::String *)>)::$_0::operator()(uint64_t a1, KB::Candidate *a2)
{
  v26[2] = *MEMORY[0x277D85DE8];
  v4 = a1 + 40;
  v3 = *(a1 + 40);
  v24 = *(v4 + 8);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:nn200100]();
  }

  v6 = (*(*v3 + 48))(v3, a2, &v24);
  if (v6)
  {
    v7 = *a1;
    if (*a1)
    {
      KB::Candidate::capitalized_string(a2, &v24);
      v8 = v25;
      if (!v25)
      {
        v8 = v26;
      }

      v9 = "";
      if (v24)
      {
        v10 = v8;
      }

      else
      {
        v10 = "";
      }

      KB::Candidate::token_ids_as_string(a2, v20);
      v12 = v22;
      if (!v22)
      {
        v12 = &v23;
      }

      if (v20[0])
      {
        v13 = v12;
      }

      else
      {
        v13 = "";
      }

      v14 = *(a1 + 48);
      if (v14 && *v14)
      {
        v15 = *(v14 + 8);
        v16 = (v14 + 16);
        if (v15)
        {
          v9 = v15;
        }

        else
        {
          v9 = v16;
        }
      }

      KB::append_format(v7, "[%s] {%s} removed by %s (%s)\n", v11, v10, v13, *(a1 + 8), v9);
      if (v22 && v21 == 1)
      {
        free(v22);
      }

      if (v25 && BYTE6(v24) == 1)
      {
        free(v25);
      }
    }
  }

  v17 = *(a1 + 48);
  if (v17)
  {
    KB::String::clear(v17);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v6;
}

void KB::CandidateFilter::remove_candidates_with_input_mismatch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = a6;
  v8 = *(a5 + 16);
  if (v8)
  {
    atomic_fetch_add(v8, 1u);
  }

  v9 = *(v8 + 8) + 144;
  WTF::RefCounted<KB::DictionaryContainer>::deref(v8);
  v10 = *(a5 + 56);
  (*(*a1 + 16))(a1);
  operator new();
}

BOOL std::__function::__func<KB::CandidateFilter::remove_candidates_with_input_mismatch(std::vector<KB::Candidate> &,unsigned int,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&,char const*)::$_0,std::allocator<KB::CandidateFilter::remove_candidates_with_input_mismatch(std::vector<KB::Candidate> &,unsigned int,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&,char const*)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::operator()(uint64_t a1, void *a2, KB::String **a3)
{
  v5 = *a3;
  v6 = KB::Candidate::num_words_matching_input(a2, *(a1 + 16), *(a1 + 32));
  v7 = *(a1 + 24);
  if (*(v7 + 1000) == 1)
  {
    v8 = KB::Candidate::num_words_matching_input(a2, v7, *(a1 + 32));
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 8);
  v12 = v6 < v9 && v8 < v9 && v9 != 0;
  if (v5)
  {
    v13 = !v12;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    KB::String::append_format(v5, "# candidates words matching input == %u, converted input == %u < %u == required words matching input (%s)", v6, v8, *(a1 + 8), **(a1 + 40));
  }

  return v12;
}

__n128 std::__function::__func<KB::CandidateFilter::remove_candidates_with_input_mismatch(std::vector<KB::Candidate> &,unsigned int,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&,char const*)::$_0,std::allocator<KB::CandidateFilter::remove_candidates_with_input_mismatch(std::vector<KB::Candidate> &,unsigned int,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&,char const*)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FD79E8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t KB::CandidateFilter::is_suggestible_for_input(uint64_t *a1, void *a2, int a3, uint64_t a4, uint64_t a5, KB::String *a6)
{
  v45[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (a3 == 1)
    {
      v11 = *a1;
      v12 = a1[1];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 0x40000000;
      v38 = ___ZN2KB15CandidateFilter24is_suggestible_for_inputERKNS_9CandidateES3_NS0_19WordEquivalenceTypeERKNS_20WordSuggestionPolicyERKNSt3__18functionIFiRKNS_6StringESC_EEEPSA__block_invoke;
      v39 = &__block_descriptor_tmp_3716;
      v40 = a4;
      v41 = a6;
      if (v11)
      {
        v13 = (v12 + 240 * v11);
        v14 = 240 * v11;
        while (((v38)(v37, v12) & 1) == 0)
        {
          v12 = (v12 + 240);
          v14 -= 240;
          if (!v14)
          {
            v12 = v13;
            break;
          }
        }

        v15 = v12;
        v11 = *a1;
        v12 = a1[1];
      }

      else
      {
        v15 = v12;
      }

      v17 = (v12 + 240 * v11);
      if (a6 && v15 != v17)
      {
        KB::Word::capitalized_string(v15, v42);
        v18 = v44;
        if (!v44)
        {
          v18 = v45;
        }

        if (v42[0])
        {
          v19 = v18;
        }

        else
        {
          v19 = "";
        }

        KB::String::append_format(a6, " => '%s' is never suggestible", v19);
        if (v44 && v43 == 1)
        {
          free(v44);
        }
      }

      if (v15 != v17)
      {
        goto LABEL_73;
      }

      v16 = KB::Candidate::num_words_preserving_input(a1, a2, a5);
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = KB::Candidate::num_words_matching_input(a1, a2, a5);
  }

  if (*a1 <= v16)
  {
LABEL_52:
    result = 1;
    goto LABEL_74;
  }

  v20 = v16;
  v21 = v16 + 1;
  while (1)
  {
    v22 = a1[1] + 240 * v20;
    if ((*(v22 + 106) & 0x80) != 0)
    {
      if (!a6)
      {
        goto LABEL_73;
      }

      v33 = "out-of-vocabulary";
      goto LABEL_64;
    }

    if (KB::WordSuggestionPolicy::is_never_suggestible(a4, v22, a6))
    {
      break;
    }

    v24 = *(v22 + 104);
    if ((v24 & 0x2040000) == 0x2000000)
    {
      if (!KB::count_letters_if_word(v22, v23))
      {
        if (!a6)
        {
          goto LABEL_73;
        }

        v33 = "user acquired word is not learnable";
        goto LABEL_64;
      }

      v24 = *(v22 + 104);
      if ((v24 & 0x2000) == 0)
      {
        if (!a6)
        {
          goto LABEL_73;
        }

        v33 = "user acquired word that is not sufficiently learned";
        goto LABEL_64;
      }
    }

    if (((*(a4 + 4) | 0x200) & v24) == 0)
    {
      v25 = *a4 & v24;
      if ((v24 & 0x12000) == 0 && v25 != 0)
      {
        if (v25 != 0x20000000)
        {
          if ((v24 & 0x80020100) == 0 && *(v22 + 224) == 0)
          {
            if (!a6)
            {
              goto LABEL_73;
            }

            v33 = "suggest_if_learned under policy, but not sufficiently learned";
            goto LABEL_64;
          }

          goto LABEL_51;
        }

        v27 = *(v22 + 112);
        if (v27)
        {
          v28 = (v27 & *(a4 + 16)) == 0;
        }

        else
        {
          v28 = 0;
        }

        v29 = !v28;
        if (a6 && (v29 & 1) != 0)
        {
          v33 = "sensitivity category is prohibited";
LABEL_64:
          KB::String::append(a6, v33, 0xFFFFuLL);
          goto LABEL_65;
        }

        if (v29)
        {
          break;
        }
      }
    }

LABEL_51:
    v20 = v21;
    if (*a1 <= v21++)
    {
      goto LABEL_52;
    }
  }

  if (!a6)
  {
    goto LABEL_73;
  }

LABEL_65:
  KB::Word::capitalized_string(v22, v42);
  v34 = v44;
  if (!v44)
  {
    v34 = v45;
  }

  if (v42[0])
  {
    v35 = v34;
  }

  else
  {
    v35 = "";
  }

  KB::String::append_format(a6, " => '%s' does not preserve input and is not predictible", v35);
  if (v44 && v43 == 1)
  {
    free(v44);
  }

LABEL_73:
  result = 0;
LABEL_74:
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t KB::CandidateFilter::candidate_matches_input(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (!a1[444])
  {
    KB::Candidate::compute_string(a1);
  }

  if (!a2[444])
  {
    KB::Candidate::compute_string(a2);
  }

  v6 = *(a3 + 24);
  if (v6)
  {
    result = (*(*v6 + 48))(v6, a1 + 444, a2 + 444);
    if (result)
    {
      if (!a1[444])
      {
        KB::Candidate::compute_string(a1);
      }

      if (!a2[444])
      {
        KB::Candidate::compute_string(a2);
      }

      v12[1] = 1;
      v12[0] = &unk_283FDCF10;
      return KB::InputSegmentFilter::string_preserves_surface_form_features(v12, a1 + 444, a2 + 444, 0, 0);
    }
  }

  else
  {
    v8 = std::__throw_bad_function_call[abi:nn200100]();
    return KB::CandidateFilter::language_id_for_context_with_confidence(v8, v9, v11, v10);
  }

  return result;
}

uint64_t KB::CandidateFilter::language_id_for_context_with_confidence(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3, float a4)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = 0.0;
  v6 = (*(*a2 + 448))(a2, a1, &v8);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }

  if (v8 >= a4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t KB::CandidateFilter::language_id_for_context_and_candidate_with_confidence(KB::CandidateFilter *this, const KB::LanguageModelContext *a2, const KB::Candidate *a3, float a4, const KB::CandidateFilterResources *a5)
{
  v34 = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    v8 = 0;
    v9 = 240 * *a2;
    v10 = (*(a2 + 1) + 136);
    do
    {
      v11 = (*(v10 - 1) & 4) == 0;
      v12 = *v10;
      v10 += 30;
      v13 = v12 - 0x1F400000000;
      if (v11 && v13 < 0xFFFFFE0D00000000)
      {
        ++v8;
      }

      v9 -= 240;
    }

    while (v9);
  }

  else
  {
    v8 = 0;
  }

  KB::LanguageModelContext::LanguageModelContext(&v25, this);
  v15 = *a2;
  if (*a2)
  {
    v16 = 0;
    v17 = *(a2 + 1);
    v18 = 240 * v15;
    do
    {
      v19 = v16 + 1;
      if (v16 + 1 >= v8)
      {
        break;
      }

      if ((*(v17 + 135) & 4) == 0)
      {
        v20 = *(v17 + 136);
        KB::Word::capitalized_string(v17, &v32);
        v21 = v20;
        KB::LanguageModelContext::append(&v25, v21, &v32, 0);
        if (v33 && BYTE6(v32) == 1)
        {
          free(v33);
        }

        v16 = v19;
      }

      v17 += 240;
      v18 -= 240;
    }

    while (v18);
  }

  if (KB::LanguageModelContext::is_linguistically_void(&v25))
  {
    v22 = 0;
  }

  else
  {
    v22 = KB::CandidateFilter::language_id_for_context_with_confidence(&v25, *(a3 + 3), *(a3 + 4), a4);
  }

  v32 = &v31;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v32);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v30);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v29);
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v26);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t KB::CandidateFilter::candidate_static_words_from_same_language(KB::CandidateFilter *this, const Candidate *a2, int a3)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v8 = ___ZN2KB15CandidateFilter41candidate_static_words_from_same_languageERKNS_9CandidateEj_block_invoke;
  v9 = &__block_descriptor_tmp_6_3722;
  v10 = a3;
  if (!this)
  {
    return 1;
  }

  v4 = 240 * this - 240;
  do
  {
    result = v8(v7, a2);
    a2 = (a2 + 240);
    if (result)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    v4 -= 240;
  }

  while (!v6);
  return result;
}

uint64_t ___ZN2KB15CandidateFilter41candidate_static_words_from_same_languageERKNS_9CandidateEj_block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 106) & 4) == 0)
  {
    return 1;
  }

  v2 = *(a2 + 136);
  if (*(a1 + 32) == v2)
  {
    return 1;
  }

  v4 = (v2 - 0x100000000) >> 32 < 0x1F3;
  return (*(a2 + 135) & 4) != 0 || v4;
}

unsigned int *KB::CandidateFilter::_sortkey_for_string(KB::CandidateFilter *this, _LXLexicon *a2, atomic_uint *a3)
{
  if (a3)
  {
    atomic_fetch_add(a3, 1u);
  }

  KB::CollatorWrapper::sortkey_for_string((*(a3 + 1) + 72), a2, this);

  return WTF::RefCounted<KB::DictionaryContainer>::deref(a3);
}

CFTypeRef KB::LanguageModel::engine_string_to_surface_form@<X0>(CFTypeRef cf@<X1>, void *a2@<X8>)
{
  *a2 = cf;
  if (cf)
  {
    result = CFRetain(cf);
    *a2 = cf;
  }

  return result;
}

uint64_t KB::LanguageModel::id_for_dynamic_word(uint64_t a1, const __CFString *a2, uint64_t *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 16))(a1))
  {
    v5 = *a3;
    KB::utf8_string(a2, v9);
    KB::DynamicDictionary::word_with_string(v11, *(v5 + 24), v9);
    v6 = v12;
    KB::Word::~Word(v11);
    if (v10 && v9[6] == 1)
    {
      free(v10);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

double KB::DynamicDictionary::word_with_string(KB::DynamicDictionary *this, const KB::String *a2, uint64_t a3)
{
  if ((*(*a2 + 32))(a2))
  {
    v6 = *(*a2 + 56);

    v6(a2, a3);
  }

  else
  {
    *(this + 13) = 0u;
    *(this + 14) = 0u;
    *(this + 11) = 0u;
    *(this + 12) = 0u;
    *(this + 9) = 0u;
    *(this + 10) = 0u;
    *(this + 7) = 0u;
    *(this + 8) = 0u;
    *(this + 5) = 0u;
    *(this + 6) = 0u;
    *(this + 3) = 0u;
    *(this + 4) = 0u;
    *(this + 1) = 0u;
    *(this + 2) = 0u;
    *this = 0u;

    return KB::Word::Word(this);
  }

  return result;
}

void KB::LanguageModel::copyLinguisticDataFiles(CFDictionaryRef *a1@<X8>)
{
  v3 = *MEMORY[0x277CBECE8];
  values = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *a1 = CFDictionaryCreate(v3, MEMORY[0x277D23128], &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (values)
  {
    CFRelease(values);
  }
}

void KB::LanguageModel::synchronized_load(KB::LanguageModel *this)
{
  v1 = KB::LanguageModel::background_loading_queue(this);
  dispatch_assert_queue_not_V2(v1);

  v3 = KB::LanguageModel::background_loading_queue(v2);
  TIDispatchSync();
}

id KB::LanguageModel::background_loading_queue(KB::LanguageModel *this)
{
  if (KB::LanguageModel::background_loading_queue(void)::onceToken != -1)
  {
    dispatch_once(&KB::LanguageModel::background_loading_queue(void)::onceToken, &__block_literal_global_16);
  }

  v2 = KB::LanguageModel::background_loading_queue(void)::__queue;

  return v2;
}

void ___ZN2KB13LanguageModel24background_loading_queueEv_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v0 = dispatch_queue_create("com.apple.TextInput.language-model.loading", v2);
  v1 = KB::LanguageModel::background_loading_queue(void)::__queue;
  KB::LanguageModel::background_loading_queue(void)::__queue = v0;
}

BOOL KB::LanguageModel::lexicon_id_active(KB::LanguageModel *this, int a2)
{
  (*(*this + 48))(&v6);
  v3 = v7;
  v4 = v6;
  if (v6 != v7)
  {
    v4 = v6;
    while (*v4 != a2)
    {
      if (++v4 == v7)
      {
        v4 = v7;
        break;
      }
    }
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  return v4 != v3;
}

uint64_t KB::LanguageModel::get_prediction_count(KB::LanguageModel *this)
{
  v12 = *MEMORY[0x277D85DE8];
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"LanguageModelPredictionCount", @"com.apple.keyboard", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v2 = AppIntegerValue;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v7 = "get_prediction_count";
      v8 = 2080;
      v9 = "get_prediction_count";
      v10 = 2048;
      v11 = v2;
      _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  %s: prediction_count=%zu (overridden by user preferences)", buf, 0x20u);
    }
  }

  else
  {
    v2 = 50;
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t KB::LanguageModel::id_for_static_word_with_surface_form(uint64_t a1, const KB::String *a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6, uint64_t a7)
{
  v40 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 16))(a1))
  {
    (*(*a1 + 312))(&v36, a1, a2, a3, a4, (a6 >> 5) & 1, 1);
    if ((a6 & 3) == 0)
    {
      goto LABEL_57;
    }

    v14 = v36;
    v15 = v37;
    if (v36 != v37)
    {
      v17 = (a6 & 4) == 0 || a5 == 0;
      do
      {
        KB::Word::capitalized_string(v14, &v38);
        if (&v38 == a2)
        {
          if (v39)
          {
            v20 = BYTE6(v38) == 1;
          }

          else
          {
            v20 = 0;
          }

          if (v20)
          {
            free(v39);
          }
        }

        else
        {
          v18 = KB::String::equal(&v38, a2, 1);
          if (v39)
          {
            v19 = BYTE6(v38) == 1;
          }

          else
          {
            v19 = 0;
          }

          if (v19)
          {
            free(v39);
          }

          if (!v18)
          {
            goto LABEL_27;
          }
        }

        if (v17)
        {
          goto LABEL_70;
        }

        v21 = *(v14 + 17);
        if (v21 == a5)
        {
          goto LABEL_71;
        }

LABEL_27:
        v14 = (v14 + 240);
      }

      while (v14 != v15);
    }

    if ((a6 & 4) != 0)
    {
      v14 = v36;
      v22 = v37;
      if (v36 != v37)
      {
        v23 = v36;
        while (1)
        {
          KB::Word::capitalized_string(v23, &v38);
          if (&v38 == a2)
          {
            break;
          }

          v24 = KB::String::equal(&v38, a2, 1);
          if (v39)
          {
            v25 = BYTE6(v38) == 1;
          }

          else
          {
            v25 = 0;
          }

          if (v25)
          {
            free(v39);
          }

          if (v24)
          {
            v14 = v23;
            goto LABEL_70;
          }

          v23 = (v23 + 240);
          if (v23 == v22)
          {
            goto LABEL_40;
          }
        }

        v32 = v39;
        if (v39)
        {
          v33 = BYTE6(v38) == 1;
        }

        else
        {
          v33 = 0;
        }

        if (!v33)
        {
          goto LABEL_70;
        }

LABEL_61:
        free(v32);
LABEL_70:
        v21 = *(v14 + 17);
        goto LABEL_71;
      }
    }

LABEL_40:
    if ((a6 & 2) == 0)
    {
LABEL_57:
      if (v36 != v37)
      {
        v26 = 0;
        v27 = (a6 & 4) == 0 || a5 == 0;
        v28 = v27;
        v29 = 0.0;
        v30 = -1;
        v31 = v36;
        do
        {
          if (v28 || *(v31 + 34) == a5)
          {
            if (v30 == -1)
            {
              v30 = 0;
              v29 = *(v31 + 12);
            }

            else if (*(v31 + 12) > v29)
            {
              v29 = *(v31 + 12);
              v30 = v26;
            }

            ++v26;
          }

          v31 = (v31 + 240);
        }

        while (v31 != v37);
        if ((v30 & 0x80000000) == 0)
        {
          if (0xEEEEEEEEEEEEEEEFLL * ((v37 - v36) >> 4) <= v30)
          {
            std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
          }

          v14 = (v36 + 240 * v30);
          KB::Word::capitalized_string(v14, &v38);
          KB::String::operator=(a7, &v38);
          v32 = v39;
          if (!v39 || BYTE6(v38) != 1)
          {
            goto LABEL_70;
          }

          goto LABEL_61;
        }
      }
    }

    v21 = 0;
LABEL_71:
    v38 = &v36;
    std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v38);
    goto LABEL_72;
  }

  v21 = 0;
LABEL_72:
  v34 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t KB::LanguageModel::id_for_static_word(uint64_t a1, const KB::String *a2, uint64_t a3, uint64_t a4, int a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0x100000;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  if (a5)
  {
    v9 = 45;
  }

  else
  {
    v9 = 13;
  }

  v10 = (*(*a1 + 440))(a1, a4);
  v11 = KB::LanguageModel::id_for_static_word_with_surface_form(a1, a2, a3, a4, v10, v9, &v14);
  if (v17 && v16 == 1)
  {
    free(v17);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t KB::LanguageModel::id_for_maximum_likelihood_static_word(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *a1 + 240;
  if (*a1 != v2 && v3 != v2)
  {
    do
    {
      if (*(v1 + 48) < *(v3 + 48))
      {
        v1 = v3;
      }

      v3 += 240;
    }

    while (v3 != v2);
  }

  if (v1 == v2)
  {
    return 0;
  }

  else
  {
    return *(v1 + 136);
  }
}

unint64_t KB::LanguageModel::id_for_maximum_likelihood_word(uint64_t a1, KB::Word **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v9 = *a2;
  v10 = a2[1];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v18 = ___ZN2KB13LanguageModel30id_for_maximum_likelihood_wordERKNSt3__16vectorINS_4WordENS1_9allocatorIS3_EEEERKN3WTF6RefPtrINS_19DictionaryContainerEEERKNS_20LanguageModelContextERNS_6StringE_block_invoke;
  v19 = &__block_descriptor_48_e15_B24__0r_v8r_v16l;
  v20 = a1;
  v21 = a4;
  v11 = v17;
  v12 = (v9 + 240);
  if (v9 != v10 && v12 != v10)
  {
    do
    {
      if (v18(v11, v9, v12))
      {
        v9 = v12;
      }

      v12 = (v12 + 240);
    }

    while (v12 != v10);
  }

  if (v9 == a2[1])
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v9 + 17);
    if (!HIDWORD(v14))
    {
      KB::Word::capitalized_string(v9, v22);
      v14 = KB::LanguageModel::id_for_dynamic_engine_word(a1, v22, a3);
      if (v24)
      {
        if (v23 == 1)
        {
          free(v24);
        }
      }
    }

    KB::Word::capitalized_string(v9, v22);
    KB::String::operator=(a5, v22);
    if (v24 && v23 == 1)
    {
      free(v24);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t ___ZN2KB13LanguageModel30id_for_maximum_likelihood_wordERKNSt3__16vectorINS_4WordENS1_9allocatorIS3_EEEERKN3WTF6RefPtrINS_19DictionaryContainerEEERKNS_20LanguageModelContextERNS_6StringE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  result = (*(a3 + 106) >> 2) & 1;
  if (result == (*(a2 + 106) & 4) >> 2)
  {
    v7 = *(a1 + 32);
    if (*(a2 + 52) == 1.0)
    {
      KB::Word::capitalized_string(a2, v16);
      v12 = *(a2 + 136);
      v8.n128_u32[0] = *(a2 + 52);
      (*(*v7 + 424))(v13, v7, v16, &v12, *(a1 + 40), 0, v8);
      if (v18 && v17 == 1)
      {
        free(v18);
      }

      *(a2 + 52) = v13[0];
      if (v15 < 0)
      {
        operator delete(__p);
      }
    }

    v9 = *(a3 + 52);
    if (v9 == 1.0)
    {
      KB::Word::capitalized_string(a3, v16);
      v12 = *(a3 + 136);
      v10.n128_u32[0] = *(a3 + 52);
      (*(*v7 + 424))(v13, v7, v16, &v12, *(a1 + 40), 0, v10);
      if (v18 && v17 == 1)
      {
        free(v18);
      }

      v9 = *v13;
      *(a3 + 52) = v13[0];
      if (v15 < 0)
      {
        operator delete(__p);
        v9 = *(a3 + 52);
      }
    }

    result = *(a2 + 52) < v9;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t KB::LanguageModel::id_for_dynamic_engine_word(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  KB::cf_string_impl<KB::String>(&v8, a2);
  v5 = v8;
  (*(*a1 + 568))(&cf, a1, v8);
  if (v5)
  {
    CFRelease(v5);
  }

  if (!cf)
  {
    return 0;
  }

  v6 = (*(*a1 + 320))(a1, cf, a3);
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t KB::LanguageModel::is_language_appropriate_vocabulary_word(KB::LanguageModel *this, __CFString *a2)
{
  if (![(__CFString *)a2 hasSuffix:@"'s"])
  {
    return 1;
  }

  v3 = *(*this + 64);

  return v3(this);
}

uint64_t KB::LanguageModel::find_vocabulary_words(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, KB::Word **a5, uint64_t a6)
{
  v18 = *MEMORY[0x277D85DE8];
  result = LMVocabularyGetSharedVocabulary();
  for (i = *a5; i != a5[1]; i = (i + 240))
  {
    if (!HIDWORD(*(i + 17)))
    {
      KB::Word::capitalized_string(i, v15);
      KB::LanguageModel::id_for_dynamic_engine_word(a1, v15, a3);
      if (v17 && v16 == 1)
      {
        free(v17);
      }
    }

    result = LMVocabularyGetClassForTokenID();
    if (result)
    {
      if (![a2 hasSuffix:@"'s"] || (result = (*(*a1 + 64))(a1), result))
      {
        result = std::vector<KB::Word>::push_back[abi:nn200100](a6, i);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::vector<KB::Word>::push_back[abi:nn200100](uint64_t a1, size_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = 0xEEEEEEEEEEEEEEEFLL * ((v3 - *a1) >> 4);
    if (v7 + 1 > 0x111111111111111)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v8 = 0xEEEEEEEEEEEEEEEFLL * ((v4 - *a1) >> 4);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x88888888888888)
    {
      v10 = 0x111111111111111;
    }

    else
    {
      v10 = v9;
    }

    v16[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Word>>(v10);
    }

    v11 = (240 * v7);
    KB::Word::Word(v11, a2);
    v6 = v11 + 240;
    v12 = *(a1 + 8);
    v13 = v11 + *a1 - v12;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::Word>,KB::Word*>(*a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11 + 240;
    v15 = *(a1 + 16);
    *(a1 + 16) = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<KB::Word>::~__split_buffer(v16);
  }

  else
  {
    result = KB::Word::Word(v3, a2);
    v6 = (result + 240);
  }

  *(a1 + 8) = v6;
  return result;
}

void KB::LanguageModel::find_words_for_sentence_beginning(int a1, __CFString *this, uint64_t *a3, uint64_t a4, char a5, uint64_t *a6)
{
  v43 = *MEMORY[0x277D85DE8];
  KB::utf8_string(this, v41);
  v11 = [(__CFString *)this lowercaseStringWithLocale:a4];
  KB::utf8_string(v11, v39);
  v12 = this;
  KB::utf8_string(v12, v37);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v13 = *a3;
  if (*a3 == a3[1])
  {
    v25 = *a6;
    v24 = a6[1];
LABEL_30:
    if (a6 != a3 && (a5 & 2) == 0 && v24 == v25)
    {
      std::vector<KB::Word>::__assign_with_size[abi:nn200100]<KB::Word*,KB::Word*>(a6, *a3, a3[1], 0xEEEEEEEEEEEEEEEFLL * ((a3[1] - *a3) >> 4));
    }

    goto LABEL_34;
  }

  do
  {
    KB::Word::capitalized_string(v13, &v35);
    v14 = KB::String::equal(&v35, v39, 1);
    if (v36)
    {
      v15 = BYTE6(v35) == 1;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      free(v36);
    }

    if (v14)
    {
      std::vector<KB::Word>::push_back[abi:nn200100](&v32, v13);
    }

    KB::Word::capitalized_string(v13, &v35);
    v16 = KB::String::equal(&v35, v37, 1);
    if (v36 && BYTE6(v35) == 1)
    {
      free(v36);
    }

    if (v16)
    {
      std::vector<KB::Word>::push_back[abi:nn200100](&v29, v13);
    }

    v13 = (v13 + 240);
  }

  while (v13 != a3[1]);
  v18 = v32;
  v17 = v33;
  v20 = v29;
  v19 = v30;
  v21 = v33 == v32;
  if (v33 != v32 && v30 != v29)
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = ___ZN2KB13LanguageModel33find_words_for_sentence_beginningEPK10__CFStringRKNSt3__16vectorINS_4WordENS4_9allocatorIS6_EEEEPK10__CFLocalejRS9__block_invoke;
    v28[3] = &__block_descriptor_40_e10_v16__0r_v8l;
    v28[4] = a6;
    v22 = std::for_each[abi:nn200100]<std::__wrap_iter<KB::Word *>,void({block_pointer} {__strong})(KB::Word const&)>(v29, v30, v28);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = ___ZN2KB13LanguageModel33find_words_for_sentence_beginningEPK10__CFStringRKNSt3__16vectorINS_4WordENS4_9allocatorIS6_EEEEPK10__CFLocalejRS9__block_invoke_2;
    v27[3] = &__block_descriptor_40_e10_v16__0r_v8l;
    v27[4] = a6;
    v23 = std::for_each[abi:nn200100]<std::__wrap_iter<KB::Word *>,void({block_pointer} {__strong})(KB::Word const&)>(v32, v33, v27);
  }

  v25 = *a6;
  v24 = a6[1];
  if (v17 != v18 && &v32 != a6 && v24 == v25)
  {
    std::vector<KB::Word>::__assign_with_size[abi:nn200100]<KB::Word*,KB::Word*>(a6, v32, v33, 0xEEEEEEEEEEEEEEEFLL * ((v33 - v32) >> 4));
    v25 = *a6;
    v24 = a6[1];
  }

  if (&v29 != a6 && v24 == v25 && v19 != v20)
  {
    std::vector<KB::Word>::__assign_with_size[abi:nn200100]<KB::Word*,KB::Word*>(a6, v29, v30, 0xEEEEEEEEEEEEEEEFLL * ((v30 - v29) >> 4));
    v25 = *a6;
    v24 = a6[1];
  }

  if (v21)
  {
    goto LABEL_30;
  }

LABEL_34:
  v35 = &v29;
  std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v35);
  v35 = &v32;
  std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v35);
  if (v38 && v37[6] == 1)
  {
    free(v38);
  }

  if (v40 && v39[6] == 1)
  {
    free(v40);
  }

  if (v42 && v41[6] == 1)
  {
    free(v42);
  }

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t ___ZN2KB13LanguageModel33find_words_for_sentence_beginningEPK10__CFStringRKNSt3__16vectorINS_4WordENS4_9allocatorIS6_EEEEPK10__CFLocalejRS9__block_invoke(uint64_t result, uint64_t a2)
{
  if ((*(a2 + 104) & 0x2080) != 0x80)
  {
    return std::vector<KB::Word>::push_back[abi:nn200100](*(result + 32), a2);
  }

  return result;
}

id std::for_each[abi:nn200100]<std::__wrap_iter<KB::Word *>,void({block_pointer} {__strong})(KB::Word const&)>(uint64_t a1, uint64_t a2, void *a3)
{
  for (i = a3; a1 != a2; a1 += 240)
  {
    i[2](i, a1);
  }

  v6 = _Block_copy(i);

  return v6;
}

uint64_t ___ZN2KB13LanguageModel33find_words_for_sentence_beginningEPK10__CFStringRKNSt3__16vectorINS_4WordENS4_9allocatorIS6_EEEEPK10__CFLocalejRS9__block_invoke_2(uint64_t result, uint64_t a2)
{
  if ((*(a2 + 104) & 0x2080) != 0x80)
  {
    return std::vector<KB::Word>::push_back[abi:nn200100](*(result + 32), a2);
  }

  return result;
}

void std::vector<KB::Word>::__assign_with_size[abi:nn200100]<KB::Word*,KB::Word*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = *a1;
  if (0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    std::vector<KB::Word>::__vdeallocate(a1);
    if (a4 <= 0x111111111111111)
    {
      v8 = 0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 4);
      if (v8 <= a4)
      {
        v8 = a4;
      }

      if (0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 16) - *a1) >> 4) >= 0x88888888888888)
      {
        v9 = 0x111111111111111;
      }

      else
      {
        v9 = v8;
      }

      if (v9 <= 0x111111111111111)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Word>>(v9);
      }
    }

    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  v10 = *(a1 + 8) - v7;
  if (0xEEEEEEEEEEEEEEEFLL * (v10 >> 4) >= a4)
  {
    v14 = std::__copy_impl::operator()[abi:nn200100]<KB::Word *,KB::Word *,KB::Word *>(a2, a3, v7);
      ;
    }

    *(a1 + 8) = v14;
  }

  else
  {
    v11 = (a2 + v10);
    std::__copy_impl::operator()[abi:nn200100]<KB::Word *,KB::Word *,KB::Word *>(a2, a2 + v10, v7);
    v12 = *(a1 + 8);
    while (v11 != a3)
    {
      v13 = KB::Word::Word(v12, v11);
      v11 += 30;
      v12 = (v13 + 240);
    }

    *(a1 + 8) = v12;
  }
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<KB::Word *,KB::Word *,KB::Word *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a3 + v6;
      v8 = a1 + v6;
      KB::String::operator=((a3 + v6), (a1 + v6));
      KB::ByteString::operator=((a3 + v6 + 32), (a1 + v6 + 32));
      v9 = *(a1 + v6 + 48);
      *(v7 + 56) = *(a1 + v6 + 56);
      *(v7 + 48) = v9;
      KB::String::operator=((a3 + v6 + 64), (a1 + v6 + 64));
      v10 = *(a1 + v6 + 96);
      v11 = *(a1 + v6 + 112);
      v12 = *(a1 + v6 + 144);
      *(v7 + 128) = *(a1 + v6 + 128);
      *(v7 + 144) = v12;
      *(v7 + 96) = v10;
      *(v7 + 112) = v11;
      KB::String::operator=((a3 + v6 + 160), (a1 + v6 + 160));
      *(v7 + 192) = *(a1 + v6 + 192);
      if (a1 != a3)
      {
        *(v7 + 232) = *(v8 + 232);
        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>((v7 + 200), *(v8 + 216));
      }

      v6 += 240;
    }

    while (a1 + v6 != a2);
    a3 += v6;
  }

  return a3;
}

void std::vector<KB::Word>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        KB::Word::~Word((v3 - 240));
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

BOOL KB::LanguageModel::lexicon_match(KB::LanguageModel *this, int a2, const KB::Word *a3)
{
  if (!a2)
  {
    return 1;
  }

  v3 = *(a3 + 34);
  return v3 == -2 || v3 == 0 || v3 == a2;
}

void KB::LanguageModel::merge_words(uint64_t a1, size_t **a2, uint64_t *a3, int a4, void *a5)
{
  if ((*(*a1 + 32))(a1))
  {
    v10 = *a2;
    v9 = a2[1];
    while (v10 != v9)
    {
      if (!a4 || ((v11 = *(v10 + 34), v11 != -2) ? (v12 = v11 == 0) : (v12 = 1), !v12 ? (v13 = v11 == a4) : (v13 = 1), v13))
      {
        std::vector<KB::Word>::push_back[abi:nn200100](a5, v10);
        v9 = a2[1];
      }

      v10 += 30;
    }

    v42 = 0;
    v43 = 0;
    v41 = &v42;
    if (a4)
    {
      if (a5[1] == *a5)
      {
        v29 = *a2;
        if (*a2 != v9)
        {
          do
          {
            std::vector<KB::Word>::push_back[abi:nn200100](a5, v29);
            std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int>(&v41, HIDWORD(v29[17]));
            v29 += 30;
          }

          while (v29 != a2[1]);
        }
      }
    }

    v31 = *a3;
    v30 = a3[1];
    if (*a3 != v30)
    {
      do
      {
        if ((*(v31 + 104) & 0x42000) != 0x40000)
        {
          if (!a4)
          {
            goto LABEL_81;
          }

          v32 = *(v31 + 136);
          v33 = v32 == -2 || v32 == 0;
          if (v33 || v32 == a4)
          {
            goto LABEL_81;
          }

          v35 = v42;
          if (v42)
          {
            v36 = HIDWORD(v32);
            v37 = &v42;
            do
            {
              v38 = v35;
              v39 = v37;
              v40 = *(v35 + 7);
              if (v40 >= v36)
              {
                v37 = v35;
              }

              v35 = v35[v40 < v36];
            }

            while (v35);
            if (v37 != &v42)
            {
              if (v40 < v36)
              {
                v38 = v39;
              }

              if (*(v38 + 7) <= v36)
              {
LABEL_81:
                std::vector<KB::Word>::push_back[abi:nn200100](a5, v31);
                v30 = a3[1];
              }
            }
          }
        }

        v31 += 240;
      }

      while (v31 != v30);
    }
  }

  else
  {
    v42 = 0;
    v43 = 0;
    v41 = &v42;
    v14 = *a3;
    v15 = a3[1];
    if (*a3 != v15)
    {
      do
      {
        if ((*(v14 + 106) & 4) != 0)
        {
          if (!a4 || ((v16 = *(v14 + 136), v16 != -2) ? (v17 = v16 == 0) : (v17 = 1), !v17 ? (v18 = v16 == a4) : (v18 = 1), v18))
          {
            std::vector<KB::Word>::push_back[abi:nn200100](a5, v14);
            std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int>(&v41, *(v14 + 136));
          }
        }

        v14 += 240;
      }

      while (v14 != v15);
      v14 = *a3;
      v15 = a3[1];
    }

    if (a4)
    {
      if (*a5 == a5[1] && v14 != v15)
      {
        do
        {
          if ((*(v14 + 106) & 4) != 0)
          {
            std::vector<KB::Word>::push_back[abi:nn200100](a5, v14);
            std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int>(&v41, *(v14 + 136));
          }

          v14 += 240;
        }

        while (v14 != v15);
        v14 = *a3;
        v15 = a3[1];
      }
    }

    if (v43)
    {
      while (v14 != v15)
      {
        if ((*(v14 + 106) & 4) == 0)
        {
          v20 = v42;
          if (v42)
          {
            v21 = *(v14 + 136);
            v22 = &v42;
            do
            {
              v23 = v20;
              v24 = v22;
              v25 = *(v20 + 7);
              if (v25 >= v21)
              {
                v22 = v20;
              }

              v20 = v20[v25 < v21];
            }

            while (v20);
            if (v22 != &v42)
            {
              if (v25 < v21)
              {
                v23 = v24;
              }

              if (*(v23 + 7) <= v21)
              {
                std::vector<KB::Word>::push_back[abi:nn200100](a5, v14);
              }
            }
          }
        }

        v14 += 240;
      }
    }

    else
    {
      while (v14 != v15)
      {
        if ((*(v14 + 106) & 4) == 0)
        {
          if (!a4 || ((v26 = *(v14 + 136), v26 != -2) ? (v27 = v26 == 0) : (v27 = 1), !v27 ? (v28 = v26 == a4) : (v28 = 1), v28))
          {
            std::vector<KB::Word>::push_back[abi:nn200100](a5, v14);
          }
        }

        v14 += 240;
      }
    }
  }

  std::__tree<std::__value_type<float,int>,std::__map_value_compare<float,std::__value_type<float,int>,std::less<float>,true>,std::allocator<std::__value_type<float,int>>>::destroy(v42);
}

uint64_t std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int>(uint64_t result, unsigned int a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 28);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

unint64_t KB::LanguageModel::select_token_id_from_words(uint64_t a1, KB::Word **a2, uint64_t a3, uint64_t a4, KB::String *a5, uint64_t a6, char a7, char a8, uint64_t a9)
{
  v26 = *MEMORY[0x277D85DE8];
  v9 = *a2;
  if (a2[1] == *a2)
  {
LABEL_17:
    result = 0;
  }

  else
  {
    if (((a7 & 0x10) == 0 || (a8 & 1) == 0) && (a7 & 3) != 0)
    {
      v16 = *a2;
      do
      {
        KB::Word::capitalized_string(v16, v23);
        if (v23 == a5)
        {
          if (v25)
          {
            v21 = v24 == 1;
          }

          else
          {
            v21 = 0;
          }

          if (v21)
          {
            free(v25);
          }

          goto LABEL_26;
        }

        v17 = KB::String::equal(a5, v23, 1);
        if (v25)
        {
          v18 = v24 == 1;
        }

        else
        {
          v18 = 0;
        }

        if (v18)
        {
          free(v25);
        }

        if (v17)
        {
          v9 = v16;
LABEL_26:
          result = *(v9 + 17);
          if (!HIDWORD(result))
          {
            result = (*(*a1 + 320))(a1, a4, a3);
          }

          goto LABEL_18;
        }

        v16 = (v16 + 240);
      }

      while (v16 != a2[1]);
      if ((a7 & 2) != 0)
      {
        goto LABEL_17;
      }
    }

    result = KB::LanguageModel::id_for_maximum_likelihood_word(a1, a2, a3, a6, a9);
  }

LABEL_18:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t KB::LanguageModel::find_token_id_for_word(uint64_t a1, __CFString *a2, uint64_t *a3, uint64_t a4, unsigned int a5, uint64_t a6, KB::String *this, BOOL *a8)
{
  v58 = *MEMORY[0x277D85DE8];
  KB::String::clear(this);
  *a8 = 0;
  if (![(__CFString *)a2 length])
  {
    v17 = 0;
    goto LABEL_49;
  }

  if (KB::LanguageModelContext::is_linguistically_void(a4))
  {
    v16 = 0;
  }

  else
  {
    v16 = (*(*a1 + 440))(a1, a4);
  }

  KB::utf8_string(a2, v56);
  (*(*a1 + 312))(&v48, a1, v56, a3, a4, (a5 >> 5) & 1, 1);
  if (v48 != v49)
  {
    v18 = v48;
    while ((v18[13] & 2) == 0)
    {
      v18 += 30;
      if (v18 == v49)
      {
        goto LABEL_12;
      }
    }

    a5 = a5 & 0xFFFFFFFC | 1;
  }

LABEL_12:
  *a8 = v49 != v48;
  v46 = 0uLL;
  v47 = 0;
  if ((a5 & 8) == 0 || ((*(*a1 + 32))(a1) & 1) == 0)
  {
    v39 = v16;
    KB::DictionaryContainer::lookup(*a3, v50);
    std::vector<KB::Word>::__vdeallocate(&v46);
    v37 = *v50;
    v46 = *v50;
    v47 = v51;
    v50[1] = 0;
    v51 = 0;
    v50[0] = 0;
    v43 = v50;
    std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v43);
    v19 = *(&v37 + 1);
    v20 = v37;
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3321888768;
    v53 = ___ZN2KB13LanguageModel22find_token_id_for_wordEPK10__CFStringRKN3WTF6RefPtrINS_19DictionaryContainerEEERKNS_20LanguageModelContextEjPK10__CFLocaleRNS_6StringERb_block_invoke_2;
    v54 = &__block_descriptor_65_a8_32c16_ZTSN2KB6StringE_e10_B16__0r_v8l;
    KB::String::String(v55, v56);
    v55[32] = (a5 & 8) == 0;
    v21 = v52;
    if (v37 != *(&v37 + 1))
    {
      while (((v53)(v21, v20) & 1) == 0)
      {
        v20 += 240;
        if (v20 == *(&v37 + 1))
        {
          v20 = *(&v37 + 1);
          goto LABEL_25;
        }
      }

      if (v20 != *(&v37 + 1) && v20 + 240 != *(&v37 + 1))
      {
        v38 = a3;
        v22 = (v20 + 440);
        do
        {
          if (((v53)(v21, v22 - 25) & 1) == 0)
          {
            KB::String::operator=(v20, (v22 - 25));
            KB::ByteString::operator=((v20 + 32), v22 - 84);
            v23 = *(v22 - 19);
            *(v20 + 56) = *(v22 - 36);
            *(v20 + 48) = v23;
            KB::String::operator=(v20 + 64, (v22 - 17));
            v24 = *(v22 - 13);
            v25 = *(v22 - 11);
            v26 = *(v22 - 7);
            *(v20 + 128) = *(v22 - 9);
            *(v20 + 144) = v26;
            *(v20 + 96) = v24;
            *(v20 + 112) = v25;
            KB::String::operator=(v20 + 160, (v22 - 5));
            *(v20 + 192) = *(v22 - 8);
            std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__move_assign(v20 + 200, v22);
            v20 += 240;
          }

          v27 = v22 + 5;
          v22 += 30;
        }

        while (v27 != *(&v37 + 1));
        v19 = *(&v46 + 1);
        a3 = v38;
      }
    }

LABEL_25:

    std::vector<KB::Word>::erase(&v46, v20, v19);
    v28 = v21[5];
    v16 = v39;
    if (v28 && *(v21 + 38) == 1)
    {
      free(v28);
    }
  }

  v43 = 0;
  v44 = 0;
  v45 = 0;
  KB::LanguageModel::merge_words(a1, &v48, &v46, v16 & ((a5 << 29) >> 31), &v43);
  if (v44 == v43)
  {
    v17 = 0;
  }

  else
  {
    if ((a5 & 8) == 0)
    {
      v40 = 0;
      v41 = 0;
      v42 = 0;
      KB::LanguageModel::find_vocabulary_words(a1, a2, a3, v29, &v43, &v40);
      if (v41 != v40)
      {
        LODWORD(v50[0]) = 0x100000;
        WORD2(v50[0]) = 0;
        BYTE6(v50[0]) = 0;
        v50[1] = 0;
        LOBYTE(v51) = 0;
        v17 = KB::LanguageModel::select_token_id_from_words(a1, &v40, a3, a2, v56, a4, 1, 0, v50);
        if (v50[1] && BYTE6(v50[0]) == 1)
        {
          free(v50[1]);
        }

        v50[0] = &v40;
        std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](v50);
        goto LABEL_46;
      }

      v50[0] = &v40;
      std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](v50);
    }

    v30 = language_modeling::v1::LinguisticContext::tokenSpan((a4 + 64));
    if (v31 && *(v30 + 32 * v31 - 8) == 1)
    {
      v32 = [(__CFString *)a2 capitalizedStringWithLocale:a6];
      v33 = [(__CFString *)a2 isEqualToString:v32];
      if (v33)
      {
        v50[0] = 0;
        v50[1] = 0;
        v51 = 0;
        KB::LanguageModel::find_words_for_sentence_beginning(v33, a2, &v43, a6, a5, v50);
        if (v50[1] == v50[0] || (v17 = KB::LanguageModel::id_for_maximum_likelihood_word(a1, v50, a3, a4, this), !HIDWORD(v17)))
        {
          v17 = KB::LanguageModel::select_token_id_from_words(a1, v50, a3, a2, v56, a4, 1, 0, this);
        }

        v40 = v50;
        std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v40);

        goto LABEL_46;
      }
    }

    v34 = [(__CFString *)a2 uppercaseStringWithLocale:a6];
    v17 = KB::LanguageModel::select_token_id_from_words(a1, &v43, a3, a2, v56, a4, a5, [(__CFString *)a2 isEqualToString:v34], this);
  }

LABEL_46:
  v50[0] = &v43;
  std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](v50);
  v50[0] = &v46;
  std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](v50);
  v50[0] = &v48;
  std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](v50);
  if (v57 && v56[6] == 1)
  {
    free(v57);
  }

LABEL_49:
  v35 = *MEMORY[0x277D85DE8];
  return v17;
}

BOOL ___ZN2KB13LanguageModel22find_token_id_for_wordEPK10__CFStringRKN3WTF6RefPtrINS_19DictionaryContainerEEERKNS_20LanguageModelContextEjPK10__CFLocaleRNS_6StringERb_block_invoke_2(uint64_t a1, KB::String *this)
{
  if (!KB::String::equal(this, (a1 + 32), 0))
  {
    return 1;
  }

  if (*(a1 + 64))
  {
    return 0;
  }

  return (*(this + 106) & 4) == 0;
}

KB::Word *std::vector<KB::Word>::erase(void *a1, KB::Word *a2, KB::Word *a3)
{
  if (a3 != a2)
  {
    v5 = a1[1];
    if (a3 == v5)
    {
      v14 = a2;
    }

    else
    {
      v6 = -*a1;
      v7 = a2 + *a1;
      v8 = a3 + *a1;
      do
      {
        v9 = v7 + v6;
        KB::String::operator=(v7 + v6, &v8[v6]);
        KB::ByteString::operator=((v7 + v6 + 32), &v8[v6 + 32]);
        v10 = *&v8[v6 + 48];
        *(v9 + 56) = *&v8[v6 + 56];
        *(v9 + 48) = v10;
        KB::String::operator=(v7 + v6 + 64, &v8[v6 + 64]);
        v11 = *&v8[v6 + 96];
        v12 = *&v8[v6 + 112];
        v13 = *&v8[v6 + 144];
        *(v9 + 128) = *&v8[v6 + 128];
        *(v9 + 144) = v13;
        *(v9 + 96) = v11;
        *(v9 + 112) = v12;
        KB::String::operator=(v7 + v6 + 160, &v8[v6 + 160]);
        *(v9 + 192) = v8[v6 + 192];
        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__move_assign(v7 + v6 + 200, &v8[v6 + 200]);
        v7 += 240;
        v8 += 240;
      }

      while (&v8[v6] != v5);
      v14 = (v7 + v6);
      v5 = a1[1];
    }

    while (v5 != v14)
    {
      v5 = (v5 - 240);
      KB::Word::~Word(v5);
    }

    a1[1] = v14;
  }

  return a2;
}

void std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      do
      {
        v5 = *v4;
        operator delete(v4);
        v4 = v5;
      }

      while (v5);
    }

    *(a1 + 16) = 0;
    v6 = *(a1 + 8);
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }

  v8 = *a2;
  *a2 = 0;
  v9 = *a1;
  *a1 = v8;
  if (v9)
  {
    operator delete(v9);
  }

  v12 = a2[2];
  v11 = a2 + 2;
  v10 = v12;
  v13 = *(v11 - 1);
  *(a1 + 16) = v12;
  *(a1 + 8) = v13;
  *(v11 - 1) = 0;
  v14 = v11[1];
  *(a1 + 24) = v14;
  *(a1 + 32) = *(v11 + 4);
  if (v14)
  {
    v15 = *(v10 + 8);
    v16 = *(a1 + 8);
    if ((v16 & (v16 - 1)) != 0)
    {
      if (v15 >= v16)
      {
        v15 %= v16;
      }
    }

    else
    {
      v15 &= v16 - 1;
    }

    *(*a1 + 8 * v15) = a1 + 16;
    *v11 = 0;
    v11[1] = 0;
  }
}

void __destroy_helper_block_a8_32c16_ZTSN2KB6StringE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    if (*(a1 + 38) == 1)
    {
      free(v2);
    }
  }
}

void KB::LanguageModel::background_load(uint64_t *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v6 = *a1;
  v5 = a1[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = KB::LanguageModel::background_loading_queue(v3);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = v4;
  TIDispatchAsync();

  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
    std::__shared_weak_count::__release_weak(v5);
  }
}

uint64_t ___ZN2KB13LanguageModel15background_loadENSt3__110shared_ptrIS0_EEU13block_pointerFvvE_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = a1[5];
      if (v5 && ((*(*v5 + 16))(a1[5]) & 1) == 0)
      {
        (*(*v5 + 584))(v5);
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }

  result = a1[4];
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

void __destroy_helper_block_a8_40c43_ZTSNSt3__18weak_ptrIN2KB13LanguageModelEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t __copy_helper_block_a8_40c43_ZTSNSt3__18weak_ptrIN2KB13LanguageModelEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void KB::LanguageModel::clear_dynamic_learning_bundles(const void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = CFRetain(a1);
    v5 = KB::LanguageModel::background_loading_queue(v4);
    v6 = v3;
    TIDispatchAsync();
  }
}

void ___ZN2KB13LanguageModel30clear_dynamic_learning_bundlesEPK7__CFURLU13block_pointerFvbE_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = v3;
  TIDispatchSync();
  CFRelease(*(a1 + 40));
}

void KB::LanguageModel::perform_maintenance(void *a1)
{
  v1 = a1;
  v2 = KB::LanguageModel::background_loading_queue(v1);
  v4 = v1;
  v3 = v1;
  TIDispatchAsync();
}

void ___ZN2KB13LanguageModel19perform_maintenanceEU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  LMLanguageModelPerformMaintenance();
  KB::LanguageModelImplStub::enumerate_cached_wrappers(&__block_literal_global_15704);
  v2 = *(a1 + 32);
  TIDispatchSync();
}

void KB::LanguageModel::get_static_unigrams_filepath(KB *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = KB::ns_string(a1, a1);
  v3 = UIKeyboardStaticUnigramsFile(v4);
  KB::utf8_string(v3, a2);
}

float *KB::LanguageModel::PredictionInfo::PredictionInfo(void *a1, void *a2, uint64_t a3, int a4, float a5)
{
  result = std::vector<TITokenID>::vector[abi:nn200100](a1, a2);
  result[6] = a5;
  *(result + 4) = a3;
  *(result + 10) = a4;
  *(result + 19) = 0;
  *(result + 3) = 0u;
  *(result + 4) = 0u;
  *(result + 5) = 0u;
  *(result + 6) = 0u;
  *(result + 7) = 0u;
  *(result + 8) = 0u;
  if (*(result + 1) != *result)
  {
    result[36] = **result;
  }

  return result;
}

{
  result = std::vector<TITokenID>::vector[abi:nn200100](a1, a2);
  result[6] = a5;
  *(result + 4) = a3;
  *(result + 10) = a4;
  *(result + 19) = 0;
  *(result + 3) = 0u;
  *(result + 4) = 0u;
  *(result + 5) = 0u;
  *(result + 6) = 0u;
  *(result + 7) = 0u;
  *(result + 8) = 0u;
  if (*(result + 1) != *result)
  {
    result[36] = **result;
  }

  return result;
}

uint64_t KB::LanguageModel::PredictionInfo::PredictionInfo(uint64_t a1, __int128 *a2, int a3)
{
  v32 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (*(a2 + 72))
  {
    v6 = COERCE_DOUBLE(language_modeling::v1::InlineCompletion::probability((a2 + 4)));
    v7 = *(a2 + 72);
    v8 = v6;
    *(a1 + 24) = __exp10f(v8);
    *(a1 + 32) = 0;
    if (v7)
    {
      language_modeling::v1::InlineCompletion::probability((a2 + 4));
      v10 = v9 & 3;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v11 = *(a2 + 6);
    v12 = __exp10f(v11);
    v10 = 0;
    *(a1 + 24) = v12;
    *(a1 + 32) = 0;
  }

  *(a1 + 40) = v10;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 48), *a2, *(a2 + 1));
  }

  else
  {
    v13 = *a2;
    *(a1 + 64) = *(a2 + 2);
    *(a1 + 48) = v13;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 72), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v14 = *(a2 + 24);
    *(a1 + 88) = *(a2 + 5);
    *(a1 + 72) = v14;
  }

  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = a3;
  *(a1 + 149) = 0;
  *(a1 + 150) = *(a2 + 14) == 3;
  *(a1 + 152) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 1));
  }

  else
  {
    __p = *a2;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  KB::String::String(v30, p_p);
  v26 = 0;
  v27 = 0;
  v28 = " \t\n";
  v25 = 1048579;
  v29 = 0;
  KB::sbs_string_tokenize(v30, &v25, &v23);
  if (v28 && v27 == 1)
  {
    free(v28);
  }

  if (v30[1] && BYTE6(v30[0]) == 1)
  {
    free(v30[1]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v16 = v23;
  for (i = v24; v16 != i; v16 += 32)
  {
    if (*v16)
    {
      if (*(v16 + 8))
      {
        v18 = *(v16 + 8);
      }

      else
      {
        v18 = (v16 + 16);
      }
    }

    else
    {
      v18 = "";
    }

    std::string::basic_string[abi:nn200100]<0>(v30, v18);
    std::vector<std::string>::push_back[abi:nn200100](a1 + 96, v30);
    if (v31 < 0)
    {
      operator delete(v30[0]);
    }

    if (*v16)
    {
      if (*(v16 + 8))
      {
        v19 = *(v16 + 8);
      }

      else
      {
        v19 = (v16 + 16);
      }
    }

    else
    {
      v19 = "";
    }

    std::string::basic_string[abi:nn200100]<0>(v30, v19);
    std::vector<std::string>::push_back[abi:nn200100](a1 + 120, v30);
    if (v31 < 0)
    {
      operator delete(v30[0]);
    }
  }

  v30[0] = &v23;
  std::vector<KB::String>::__destroy_vector::operator()[abi:nn200100](v30);
  v20 = *MEMORY[0x277D85DE8];
  return a1;
}

void std::vector<std::string>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v17.__end_cap_.__value_ = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v10);
    }

    v11 = 24 * v7;
    v12 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *v11 = v12;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = 24 * v7 + 24;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    v16 = *(a1 + 16);
    *(a1 + 16) = 0;
    v17.__end_ = v15;
    v17.__end_cap_.__value_ = v16;
    v17.__first_ = v15;
    v17.__begin_ = v15;
    std::__split_buffer<std::string>::~__split_buffer(&v17);
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = v3 + 24;
  }

  *(a1 + 8) = v6;
}

KB::LanguageModel::PredictionInfo *KB::LanguageModel::PredictionInfo::PredictionInfo(KB::LanguageModel::PredictionInfo *this, const language_modeling::v1::Prediction *a2, int a3)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v6 = COERCE_DOUBLE(language_modeling::v1::Prediction::probability(a2));
  *(this + 6) = __exp10f(v6);
  *(this + 4) = language_modeling::v1::Prediction::contextSize(a2);
  language_modeling::v1::Prediction::probability(a2);
  *(this + 10) = v7 & 3;
  language_modeling::v1::Prediction::string(a2);
  language_modeling::v1::Prediction::log(a2);
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 36) = a3;
  *(this + 148) = language_modeling::v1::Prediction::source(a2) == 8;
  *(this + 149) = language_modeling::v1::Prediction::source(a2) == 2;
  *(this + 19) = language_modeling::v1::Prediction::unique_id(a2);
  v8 = language_modeling::v1::Prediction::tokenSpan(a2);
  v10 = 32 * v9;
  if (32 * v9)
  {
    v11 = v8;
    do
    {
      if (*(v11 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v11, *(v11 + 8));
      }

      else
      {
        __p = *v11;
      }

      std::vector<std::string>::push_back[abi:nn200100](this + 96, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v11 += 32;
      v10 -= 32;
    }

    while (v10);
  }

  v12 = language_modeling::v1::Prediction::exactTokenSpan(a2);
  v14 = 32 * v13;
  if (32 * v13)
  {
    v15 = v12;
    do
    {
      if (*(v15 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v15, *(v15 + 8));
      }

      else
      {
        __p = *v15;
      }

      std::vector<std::string>::push_back[abi:nn200100](this + 120, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v15 += 32;
      v14 -= 32;
    }

    while (v14);
  }

  return this;
}

uint64_t TI_KB_USER_DIRECTORY()
{
  result = s_kb_user_directory;
  if (!s_kb_user_directory)
  {
    p_cache = TICoreAnalyticsEventDispatcher.cache;
    {
      p_cache = (TICoreAnalyticsEventDispatcher + 16);
      if (v2)
      {
        TI_KB_USER_DIRECTORY::default_kb_user_directory = CreateDefaultKeyboardUserDirectory();
        p_cache = (TICoreAnalyticsEventDispatcher + 16);
      }
    }

    return p_cache[179];
  }

  return result;
}

uint64_t CreateDefaultKeyboardUserDirectory(void)
{
  v0 = CPSharedResourcesDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"/Library/Keyboard"];

  return v1;
}

double KB::system_uptime(KB *this)
{
  v1 = [MEMORY[0x277CCAC38] processInfo];
  [v1 systemUptime];
  v3 = v2;

  return v3;
}

uint64_t TI_IS_INTERNAL_INSTALL()
{
  if (TI_IS_INTERNAL_INSTALL::once_token != -1)
  {
    dispatch_once(&TI_IS_INTERNAL_INSTALL::once_token, &__block_literal_global_3815);
  }

  return TI_IS_INTERNAL_INSTALL::is_internal_install;
}

void TI_SET_KB_USER_DIRECTORY(CFTypeRef cf)
{
  if (s_kb_user_directory != cf)
  {
    if (s_kb_user_directory)
    {
      CFRelease(s_kb_user_directory);
      s_kb_user_directory = 0;
    }

    if (cf)
    {
      s_kb_user_directory = CFRetain(cf);
    }
  }
}

double TIGetCurrentTime()
{
  if (TIGetCurrentTime::onceToken != -1)
  {
    dispatch_once(&TIGetCurrentTime::onceToken, &__block_literal_global_4);
  }

  return *&TIGetCurrentTime::time_scale * mach_absolute_time();
}

double __TIGetCurrentTime_block_invoke()
{
  if (!mach_timebase_info(&info))
  {
    LODWORD(result) = info.numer;
    LODWORD(v1) = info.denom;
    result = *&result / v1 * 0.000000001;
    TIGetCurrentTime::time_scale = *&result;
  }

  return result;
}

void TI_SET_DIALECT_LM_PATH(CFTypeRef cf)
{
  if (s_dialect_lm_path != cf)
  {
    if (s_dialect_lm_path)
    {
      CFRelease(s_dialect_lm_path);
      s_dialect_lm_path = 0;
    }

    if (cf)
    {
      s_dialect_lm_path = CFRetain(cf);
    }
  }
}

void *TI_DIALECT_LM_PATH()
{
  v0 = s_dialect_lm_path;
  if (!s_dialect_lm_path)
  {
    v0 = CPSharedResourcesDirectory();
  }

  return v0;
}

double TI_GET_SCALED_POINT(double a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8, double a9, CGFloat a10, double a11, CGFloat a12)
{
  v22.origin.x = a3;
  v22.origin.y = a4;
  v22.size.width = a5;
  v22.size.height = a6;
  v23.origin.x = a9;
  v23.origin.y = a10;
  v23.size.width = a11;
  v23.size.height = a12;
  if (!CGRectEqualToRect(v22, v23))
  {
    return a9 + (a1 - a3) / a5 * a11;
  }

  return a1;
}

uint64_t lookupVSeq(int a1, int a2, int a3)
{
  v5[0] = a1;
  v5[1] = a2;
  v5[2] = a3;
  v3 = bsearch(v5, &SortedVSeqList, 0x46uLL, 0x10uLL, tripleVowelCompare);
  if (v3)
  {
    return v3[3];
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t tripleVowelCompare(char *a1, char *a2)
{
  v2 = 0;
  while (1)
  {
    v3 = *&a1[v2];
    v4 = *&a2[v2];
    if (v3 < v4)
    {
      break;
    }

    if (v3 > v4)
    {
      return 1;
    }

    v2 += 4;
    if (v2 == 12)
    {
      return 0;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t tripleConCompare(char *a1, char *a2)
{
  v2 = 0;
  while (1)
  {
    v3 = *&a1[v2];
    v4 = *&a2[v2];
    if (v3 < v4)
    {
      break;
    }

    if (v3 > v4)
    {
      return 1;
    }

    v2 += 4;
    if (v2 == 12)
    {
      return 0;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t UkEngine::processRoof(uint64_t a1, int *a2)
{
  if (*(*(a1 + 8) + 4))
  {
    v4 = *(a1 + 28);
    if ((v4 & 0x80000000) == 0)
    {
      v5 = a1 + 3144;
      v6 = *(a1 + 3144 + 36 * v4 + 8);
      if ((v6 & 0x80000000) == 0)
      {
        v7 = *a2;
        if (*a2 == 1)
        {
          v8 = 0;
          v9 = 13;
        }

        else if (v7 == 3)
        {
          v8 = 0;
          v9 = 109;
        }

        else
        {
          if (v7 != 2)
          {
            v70 = -1;
            v8 = 1;
LABEL_15:
            v11 = *(v5 + 36 * (v4 - v6) + 16);
            v12 = (&VSeqList + 52 * v11);
            v13 = *v12;
            v68 = v4 - v6;
            v14 = v4 - v6 - *v12 + 1;
            TonePosition = UkEngine::getTonePosition(a1, v11, v6 == 0);
            v16 = v14;
            v17 = v14 + TonePosition;
            v18 = TonePosition;
            v66 = v17;
            v19 = v5 + 36 * v17;
            v67 = (v19 + 24);
            v20 = v11 - 43 > 0x17 || ((1 << (v11 - 43)) & 0xA00003) == 0;
            v69 = *(v19 + 24);
            if (v20)
            {
              v24 = 0;
              v23 = v12[10];
            }

            else
            {
              v21 = v12[5];
              __key = 0x6D0000008FLL;
              v72 = v21;
              v22 = bsearch(&__key, &SortedVSeqList, 0x46uLL, 0x10uLL, tripleVowelCompare);
              if (v22)
              {
                v23 = v22[3];
              }

              else
              {
                v23 = -1;
              }

              v24 = 1;
            }

            if (v23 == -1)
            {
              v29 = v12[9];
              if (v29 != -1)
              {
                v30 = v29 + v16;
                v31 = v5 + 36 * (v29 + v16);
                v34 = *(v31 + 28);
                v33 = (v31 + 28);
                v32 = v34;
                v35 = v34 == v70 ? 1 : v8;
                if (v35)
                {
                  v36 = v32 == 57 ? 45 : 97;
                  v37 = v32 == 13 ? 1 : v36;
                  if (*(*(a1 + 8) + 12) || v30 == *(a1 + 28))
                  {
                    v38 = *(a1 + 16);
                    if (v38 > v30)
                    {
                      v39 = *(a1 + 20) + UkEngine::getSeqSteps(a1, v30, v38 - 1);
                      *(a1 + 16) = v30;
                      *(a1 + 20) = v39;
                    }

                    *v33 = v37;
                    v40 = v16;
                    v41 = v16;
                    v42 = *(v5 + 36 * v16 + 28);
                    if (v13 == 2)
                    {
                      v55 = lookupVSeq(v42, *(v5 + 36 * v16 + 64), -1);
                      v44 = v68;
                      v43 = v69;
                    }

                    else
                    {
                      v44 = v68;
                      v43 = v69;
                      if (v13 == 3)
                      {
                        v45 = v5 + 36 * v41;
                        v46 = *(v45 + 64);
                        v47 = *(v45 + 100);
                      }

                      else
                      {
                        v46 = -1;
                        v47 = -1;
                      }

                      v55 = lookupVSeq(v42, v46, v47);
                    }

                    v25 = &VSeqList + 52 * v55;
                    goto LABEL_68;
                  }
                }
              }
            }

            else
            {
              v25 = &VSeqList + 52 * v23;
              if ((v8 & 1) != 0 || *&v25[4 * *(v25 + 9) + 12] == v70)
              {
                v26 = *(a1 + 28);
                v27 = *(v5 + 36 * v26 + 4);
                v28 = v27 == -1 ? -1 : *(v5 + 36 * (v26 - v27) + 16);
                v40 = v16;
                v48 = *(v5 + 36 * v26 + 12);
                v49 = v48 == -1 ? -1 : *(v5 + 36 * (v26 - v48) + 16);
                if (isValidCVC(v28, v23, v49))
                {
                  v50 = v16;
                  if ((v24 & 1) == 0)
                  {
                    v50 = *(v25 + 9) + v16;
                  }

                  if (*(*(a1 + 8) + 12) || v50 == *(a1 + 28))
                  {
                    v51 = *(a1 + 16);
                    if (v51 > v50)
                    {
                      v52 = *(a1 + 20) + UkEngine::getSeqSteps(a1, v50, v51 - 1);
                      *(a1 + 16) = v50;
                      *(a1 + 20) = v52;
                    }

                    if (v24)
                    {
                      v53 = v5 + 36 * v16;
                      *(v53 + 28) = 143;
                      *(v53 + 64) = 109;
                    }

                    else
                    {
                      *(v5 + 36 * v50 + 28) = *&v25[4 * *(v25 + 9) + 12];
                    }

                    v55 = v23;
                    v44 = v68;
                    v43 = v69;
LABEL_68:
                    v56 = *v25;
                    if (v56 >= 1)
                    {
                      v57 = (v25 + 24);
                      v58 = (a1 + 36 * v40 + 3160);
                      do
                      {
                        v59 = *v57++;
                        *v58 = v59;
                        v58 += 9;
                        --v56;
                      }

                      while (v56);
                    }

                    v60 = UkEngine::getTonePosition(a1, v55, v44 == *(a1 + 28));
                    if (v18 != v60 && v43 != 0)
                    {
                      v62 = v60 + v40;
                      v63 = *(a1 + 16);
                      if (v63 > v60 + v40)
                      {
                        v64 = *(a1 + 20) + UkEngine::getSeqSteps(a1, v62, v63 - 1);
                        *(a1 + 16) = v62;
                        *(a1 + 20) = v64;
                        v63 = v62;
                      }

                      *(v5 + 36 * v62 + 24) = v43;
                      if (v63 > v66)
                      {
                        v65 = *(a1 + 20) + UkEngine::getSeqSteps(a1, v66, v63 - 1);
                        *(a1 + 16) = v66;
                        *(a1 + 20) = v65;
                      }

                      *v67 = 0;
                    }

                    v54 = 1;
                    if (v23 == -1)
                    {
                      *(a1 + 32) = 0;
                      UkEngine::processAppend(a1, a2);
                      *(a1 + 3137) = 1;
                    }

                    return v54;
                  }
                }
              }
            }

            return UkEngine::processAppend(a1, a2);
          }

          v8 = 0;
          v9 = 57;
        }

        v70 = v9;
        goto LABEL_15;
      }
    }
  }

  return UkEngine::processAppend(a1, a2);
}

uint64_t UkEngine::processAppend(UkEngine *this, _DWORD *a2)
{
  v4 = 0;
  v131[8] = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (v5 == 3)
      {
        v4 = 0;
        *(this + 778) = -1;
        *(this + 28) = 0xFFFFFFFFLL;
        *(this + 3116) = 0;
      }

      goto LABEL_185;
    }

    v44 = *(this + 1);
    if (*(v44 + 4))
    {
      if (*(v44 + 2104) == 10)
      {
        v45 = *(this + 7);
        if ((v45 & 0x80000000) != 0)
        {
          goto LABEL_125;
        }

        v46 = (this + 36 * v45 + 3144);
        if ((*v46 - 3) < 2)
        {
          v47 = a2[3];
          if (v47 <= 62)
          {
            if (v47 <= 42)
            {
              if (v47 != 39)
              {
                if (v47 != 40 || v46[7] != 1)
                {
                  goto LABEL_125;
                }

                goto LABEL_91;
              }

              goto LABEL_124;
            }

            if (v47 != 43)
            {
              if (v47 != 46)
              {
                goto LABEL_125;
              }

              goto LABEL_124;
            }

            v93 = v46[7];
            v91 = v93 == 143;
            if (v93 == 97)
            {
              goto LABEL_188;
            }

LABEL_146:
            if (v91)
            {
              goto LABEL_188;
            }

            goto LABEL_125;
          }

          if (v47 > 95)
          {
            if (v47 != 96 && v47 != 126)
            {
              goto LABEL_125;
            }
          }

          else if (v47 != 63)
          {
            if (v47 != 94)
            {
              goto LABEL_125;
            }

            v69 = v46[7];
            if (v69 != 1 && v69 != 45 && v69 != 97)
            {
              goto LABEL_125;
            }

LABEL_188:
            v116 = *(this + 7);
            v117 = this + 36 * v116 + 3180;
            v118 = a2[1] == 1;
            *v117 = v118;
            *(v117 + 3) = -1;
            *(v117 + 4) = -1;
            *(v117 + 28) = 0x3FFFFFFFFFLL;
            *(this + 7) = v116 + 2;
            *(v117 + 9) = v118;
            *(v117 + 12) = -1;
            *(v117 + 5) = -1;
            *(v117 + 16) = -1;
            *(v117 + 17) = v47;
            **(this + 390) = 92;
            *(*(this + 390) + 1) = a2[3];
            **(this + 391) = 2;
            v4 = 1;
            *(this + 3136) = 1;
            goto LABEL_185;
          }

LABEL_124:
          if (!v46[6])
          {
            goto LABEL_188;
          }

          goto LABEL_125;
        }

        if (*v46)
        {
          goto LABEL_125;
        }

        v65 = __toupper(v46[8]);
        v47 = a2[3];
        if (v47 > 62)
        {
          if (v47 > 95)
          {
            if (v47 != 96 && v47 != 126)
            {
              goto LABEL_125;
            }
          }

          else if (v47 != 63)
          {
            if (v47 == 94)
            {
              if (v65 == 65 || v65 == 79)
              {
                goto LABEL_188;
              }

              if (v65 == 69)
              {
                v47 = 94;
                goto LABEL_188;
              }
            }

LABEL_125:
            v44 = *(this + 1);
            v56 = a2[1] == 1;
            v57 = *(v44 + 4) == 0;
            goto LABEL_126;
          }
        }

        else if (v47 > 42)
        {
          if (v47 == 43)
          {
            if (v65 != 79 && v65 != 85)
            {
              goto LABEL_125;
            }

            goto LABEL_188;
          }

          if (v47 != 46)
          {
            goto LABEL_125;
          }
        }

        else if (v47 != 39)
        {
          if (v47 != 40 || v65 != 65)
          {
            goto LABEL_125;
          }

LABEL_91:
          v47 = 40;
          goto LABEL_188;
        }

        if ((v65 & 0xFB) == 0x41)
        {
          goto LABEL_188;
        }

        v91 = v65 == 89;
        if (v65 - 73 <= 0xC && ((1 << (v65 - 73)) & 0x1041) != 0)
        {
          goto LABEL_188;
        }

        goto LABEL_146;
      }

      v57 = 0;
      v56 = 0;
    }

    else
    {
      v56 = 0;
      v57 = 1;
    }

LABEL_126:
    v82 = *(this + 7);
    v83 = v82 + 1;
    *(this + 7) = v82 + 1;
    v84 = this + 36 * v82;
    *(v84 + 795) = v56;
    *(v84 + 798) = -1;
    *(v84 + 398) = -1;
    *(v84 + 803) = a2[3];
    v85 = a2[2];
    *(v84 + 802) = v85 | 1;
    *(v84 + 801) = 0;
    *(v84 + 800) = (v85 | 1) != v85;
    if (!v57 && *(v44 + 2104) == 6)
    {
      v86 = *(this + 4);
      if (v86 > v83)
      {
        v87 = *(this + 5) + UkEngine::getSeqSteps(this, v83, v86 - 1);
        *(this + 4) = v83;
        *(this + 5) = v87;
      }

      goto LABEL_184;
    }

    goto LABEL_181;
  }

  if (v5)
  {
    if (v5 == 1)
    {
      *(this + 8) = 0;
      v6 = *(this + 1);
      if (v6[5])
      {
        v128 = 0;
        v129 = 0;
        if (!*this || ((*this)(&v128, &v129), !v128) || (v7 = a2[3], v7 != 13) && v7 != 32)
        {
          v8 = *(this + 7);
          if ((v8 & 0x80000000) == 0)
          {
            while (1)
            {
              v9 = *(this + 7);
              v10 = v9 - v8;
              if (v9 - v8 > 14)
              {
                goto LABEL_39;
              }

              while (1)
              {
                v11 = (this + 36 * v8 + 3144);
                v12 = *v11;
                if (*v11 == 1)
                {
                  break;
                }

                if (v10 > 14)
                {
                  goto LABEL_39;
                }

                ++v10;
                v13 = v8-- <= 0;
                if (v13)
                {
                  v8 = -1;
                  goto LABEL_23;
                }
              }

              v14 = v11[7];
              if (v14 == -1)
              {
                v18 = v11[8];
              }

              else
              {
                v16 = v11[5];
                v15 = v11[6];
                v17 = v16 ? 0xFFFF : 0x10000;
                v18 = v14 + v17 + 2 * v15;
              }

              __key = v18;
LABEL_23:
              v19 = v9 - v8;
              if (v9 <= v8)
              {
                v20 = v9 + 1;
              }

              else
              {
                v20 = v9 + 1;
                v21 = (this + 36 * v8 + 3212);
                v22 = v131;
                do
                {
                  v23 = *(v21 - 1);
                  if (v23 == -1)
                  {
                    v25 = *v21;
                  }

                  else
                  {
                    if (*(v21 - 3))
                    {
                      v24 = 0xFFFF;
                    }

                    else
                    {
                      v24 = 0x10000;
                    }

                    v25 = v23 + v24 + 2 * *(v21 - 2);
                  }

                  *v22++ = v25;
                  v21 += 9;
                  --v19;
                }

                while (v19);
              }

              *(&__key + v20 - v8) = 0;
              v26 = *(this + 1);
              v27 = v26 + 10300;
              MacCompareStartMem = v26 + 10300;
              v28 = bsearch(v131, (v26 + 2108), *(v26 + 141372), 8uLL, macKeyCompare);
              if (v28)
              {
                break;
              }

              if (v12 == 1)
              {
                v29 = *(this + 1);
                v30 = v29 + 10300;
                MacCompareStartMem = v29 + 10300;
                v31 = bsearch(&__key, (v29 + 2108), *(v29 + 141372), 8uLL, macKeyCompare);
                if (v31)
                {
                  v90 = (v30 + v31[1]);
                  goto LABEL_158;
                }
              }

              v13 = v8-- <= 0;
              if (v13)
              {
                goto LABEL_39;
              }
            }

            v90 = (v27 + v28[1]);
            ++v8;
LABEL_158:
            v97 = *(this + 4);
            if (v97 > v8)
            {
              v98 = *(this + 5) + UkEngine::getSeqSteps(this, v8, v97 - 1);
              *(this + 4) = v8;
              *(this + 5) = v98;
            }

            v99 = 0;
            do
            {
              v100 = v99;
            }

            while (v90[v99++]);
            v126 = **(this + 391);
            v127 = 4 * v100;
            VnConvert(*(*(this + 1) + 2104), v90, *(this + 390), &v127, &v126);
            v102 = v126;
            v103 = *(this + 391);
            if (*v103 > v126)
            {
              v126 = *v103 - v126;
              v104 = a2[2];
              if (v104 == -1)
              {
                v105 = a2[3];
              }

              else
              {
                v105 = v104 + 0x10000;
              }

              v125 = v105;
              v127 = 4;
              VnConvert(*(*(this + 1) + 2104), &v125, *(this + 390) + v102, &v127, &v126);
              v102 += v126;
              v103 = *(this + 391);
            }

            *(this + 778) = -1;
            *(this + 28) = 0xFFFFFFFFLL;
            *(this + 3116) = 0;
            v4 = 1;
            *(this + 3136) = 1;
            *v103 = v102;
            goto LABEL_185;
          }
        }

LABEL_39:
        v6 = *(this + 1);
      }

      if (v6[10] && !*(this + 8) && (*(this + 7) & 0x80000000) == 0 && *(this + 3139) != 1)
      {
        __key = 0;
        if (v6[11])
        {
          if (UkEngine::lastWordIsNonVn(this))
          {
            __key = **(this + 391);
            if (UkEngine::restoreKeyStrokes(this, this + 5, *(this + 390), &__key, this + 785))
            {
              *(this + 3138) = 1;
              *(this + 3136) = 1;
            }
          }
        }

        v60 = *(this + 7);
        *(this + 7) = v60 + 1;
        v61 = this + 36 * v60;
        *(v61 + 3180) = xmmword_22CC88A00;
        v62 = a2[3];
        *(v61 + 803) = v62;
        v63 = a2[2];
        *(v61 + 802) = v63 | 1;
        *(v61 + 800) = (v63 | 1) != v63;
        if (*(this + 3138) == 1)
        {
          v64 = __key;
          if (__key < **(this + 391))
          {
            *(*(this + 390) + __key) = v62;
            **(this + 391) = v64 + 1;
LABEL_184:
            v4 = 1;
            goto LABEL_185;
          }
        }

        goto LABEL_181;
      }

      v4 = 0;
      v32 = *(this + 7);
      *(this + 7) = v32 + 1;
      v33 = this + 36 * v32;
      *(v33 + 3180) = xmmword_22CC88A00;
      *(v33 + 803) = a2[3];
      v34 = a2[2];
      *(v33 + 802) = v34 | 1;
      *(v33 + 800) = (v34 | 1) != v34;
    }

LABEL_185:
    v115 = *MEMORY[0x277D85DE8];
    return v4;
  }

  v35 = a2[2];
  if (*(&IsVnVowel + v35) == 1)
  {
    if ((v36 = v35 | 1, v37 = StdVnNoTone[(v35 | 1)], v38 = *(this + 7), (v38 & 0x80000000) != 0) || (v39 = this + 36 * v38, *(v39 + 786) != 2) || ((v40 = *(v39 + 790), v40 != 20) || v37 != 143) && (v40 != 6 || v37 != 75))
    {
      v48 = *(this + 7);
      v49 = v38 + 1;
      *(this + 7) = v49;
      v50 = this + 3144;
      v51 = this + 36 * v49 + 3144;
      v52 = v36 - v37;
      v53 = (v36 - v37) / 2;
      *(v51 + 5) = v36 != v35;
      *(v51 + 6) = v53;
      *(v51 + 7) = v37;
      *(v51 + 8) = a2[3];
      if (v49 && *(*(this + 1) + 4))
      {
        v54 = &v50[36 * v48];
        v55 = *v54;
        if (*v54 <= 2)
        {
          if (v55)
          {
            if (v55 == 1)
            {
              *v51 = xmmword_22CC889F0;
              __key = v37;
              v131[0] = -1;
              v88 = bsearch(&__key, &SortedVSeqList, 0x46uLL, 0x10uLL, tripleVowelCompare);
              if (v88)
              {
                v89 = v88[3];
              }

              else
              {
                v89 = -1;
              }

              v96 = 16;
              goto LABEL_174;
            }

            if (v55 != 2)
            {
LABEL_175:
              v66 = *(this + 1);
              goto LABEL_176;
            }

            __key = v37;
            v131[0] = -1;
            v67 = bsearch(&__key, &SortedVSeqList, 0x46uLL, 0x10uLL, tripleVowelCompare);
            if (v67)
            {
              v68 = v67[3];
            }

            else
            {
              v68 = -1;
            }

            v94 = v54[4];
            if (isValidCV(v94, v68))
            {
              *v51 = xmmword_22CC889E0;
              *(v51 + 4) = v68;
              if (v94 == 8)
              {
                v95 = v54[6];
                if (v95)
                {
                  if (!*(v51 + 6))
                  {
                    *(v51 + 6) = v95;
                  }

                  UkEngine::markChange(this, *(this + 7) - 1);
                  v54[6] = 0;
                  goto LABEL_184;
                }
              }

              goto LABEL_175;
            }
          }
        }

        else
        {
          if ((v55 - 3) >= 2)
          {
            if ((v55 - 5) >= 2)
            {
              goto LABEL_175;
            }

            goto LABEL_173;
          }

          v70 = v54[4];
          v71 = (&VSeqList + 52 * v70);
          v124 = *v71;
          v72 = v49 - *v71;
          v73 = v72 + UkEngine::getTonePosition(this, v70, 1);
          v74 = &v50[36 * v73];
          v77 = *(v74 + 6);
          v76 = (v74 + 24);
          v75 = v77;
          if ((v36 == v37 || !v75) && v124 != 3)
          {
            v123 = v73;
            v78 = v75;
            if (v124 == 2)
            {
              v79 = v71[3];
              v80 = v71[4];
              v81 = v37;
            }

            else
            {
              v79 = v71[3];
              v80 = v37;
              v81 = -1;
            }

            v106 = lookupVSeq(v79, v80, v81);
            if (v106 != -1)
            {
              if (*v54 != 4)
              {
                v108 = v78;
                *v51 = *v54;
                v109 = -1;
LABEL_190:
                *(v51 + 1) = v109;
                *(v51 + 1) = 0xFFFFFFFF00000000;
                *(v51 + 4) = v106;
                *(v51 + 6) = 0;
                if (v108)
                {
                  v119 = *(this + 7) - v124 + UkEngine::getTonePosition(this, v106, 1);
                  if (v119 != v123)
                  {
                    UkEngine::markChange(this, v123);
                    *v76 = 0;
                    UkEngine::markChange(this, v119);
                    if ((v52 + 1) >= 3)
                    {
                      v122 = v53;
                    }

                    else
                    {
                      v122 = v78;
                    }

                    *&v50[36 * v119 + 24] = v122;
                    goto LABEL_184;
                  }

                  if ((v52 + 1) >= 3 && v53 != v78)
                  {
                    UkEngine::markChange(this, v123);
                    *v76 = v53;
                    goto LABEL_184;
                  }
                }

                else if ((v52 + 1) >= 3)
                {
                  v120 = v106;
                  v4 = 1;
                  v121 = *(this + 7) - v124 + UkEngine::getTonePosition(this, v120, 1);
                  UkEngine::markChange(this, v121);
                  *&v50[36 * v121 + 24] = v53;
                  goto LABEL_185;
                }

                goto LABEL_175;
              }

              v107 = v54[1];
              if (isValidCV(*&v50[36 * *(this + 7) + 16 + 36 * ~v107], v106))
              {
                v108 = v78;
                *v51 = 4;
                v109 = v107 + 1;
                goto LABEL_190;
              }
            }
          }
        }

LABEL_173:
        *v51 = 0;
        *(v51 + 1) = -1;
        v89 = -1;
        v96 = 4;
LABEL_174:
        *&v51[v96] = v89;
        goto LABEL_175;
      }

      *v51 = xmmword_22CC889F0;
      __key = v37;
      v131[0] = -1;
      v58 = bsearch(&__key, &SortedVSeqList, 0x46uLL, 0x10uLL, tripleVowelCompare);
      if (v58)
      {
        v59 = v58[3];
      }

      else
      {
        v59 = -1;
      }

      *(v51 + 4) = v59;
      v66 = *(this + 1);
      if (*(v66 + 4))
      {
LABEL_176:
        if (*(v66 + 2104) == 6 || ((v110 = *(v51 + 8), v110 <= 0x7F) ? (v111 = *(MEMORY[0x277D85DE0] + 4 * v110 + 60) & 0x100) : (v111 = __maskrune(v110, 0x100uLL)), !v111))
        {
          v112 = *(this + 7);
          v113 = *(this + 4);
          if (v113 > v112)
          {
            v114 = *(this + 5) + UkEngine::getSeqSteps(this, *(this + 7), v113 - 1);
            *(this + 4) = v112;
            *(this + 5) = v114;
          }

          goto LABEL_184;
        }
      }

LABEL_181:
      v4 = 0;
      goto LABEL_185;
    }
  }

  v41 = a2[3];
  v42 = *MEMORY[0x277D85DE8];

  return UkEngine::appendConsonnant(this, v35, v41);
}

uint64_t UkEngine::getTonePosition(uint64_t a1, unsigned int a2, int a3)
{
  v3 = (&VSeqList + 52 * a2);
  v4 = *v3;
  if (*v3 == 1)
  {
    return 0;
  }

  result = v3[9];
  if (result == -1)
  {
    v7 = v3[11];
    if (v7 == -1)
    {
      if (v4 == 3 || *(*(a1 + 8) + 16) && a2 <= 0x28 && ((1 << a2) & 0x1000A000000) != 0)
      {
        return 1;
      }

      else
      {
        return a3 ^ 1u;
      }
    }

    else
    {
      if (a2 - 44 > 0x17)
      {
        return v7;
      }

      result = 1;
      if (((1 << (a2 - 44)) & 0xC00001) == 0)
      {
        return v7;
      }
    }
  }

  return result;
}

uint64_t UkEngine::getSeqSteps(UkEngine *this, int a2, int a3)
{
  v3 = a3 - a2;
  if (a3 < a2)
  {
    return 0;
  }

  v7 = *(*(this + 1) + 2104);
  if (v7 == 12 || v7 == 0)
  {
    return (v3 + 1);
  }

  v18[0] = &unk_283FDA9D8;
  v18[1] = 0;
  v18[2] = 0;
  v19 = 0;
  v20 = 0;
  v17 = 0;
  VnCharset = CVnCharsetLib::getVnCharset(VnCharsetLibObj, v7);
  (*(*VnCharset + 8))(VnCharset);
  v10 = v3 + 1;
  v11 = (this + 36 * a2 + 3176);
  do
  {
    v12 = *(v11 - 1);
    if (v12 == -1)
    {
      v16 = *v11;
    }

    else
    {
      v13 = *(v11 - 2);
      if (*(v11 - 3))
      {
        v14 = 0xFFFF;
      }

      else
      {
        v14 = 0x10000;
      }

      v15 = v14 + v12;
      if (v13)
      {
        v16 = v15 + 2 * v13;
      }

      else
      {
        v16 = v15;
      }
    }

    if (v16 != -1)
    {
      (*(*VnCharset + 24))(VnCharset, v18, v16, &v17);
    }

    v11 += 9;
    --v10;
  }

  while (v10);
  if (*(*(this + 1) + 2104) == 4)
  {
    return (v19 / 2);
  }

  else
  {
    return v19;
  }
}

uint64_t isValidCVC(int a1, int a2, int a3)
{
  if (a2 == -1)
  {
    return a1 == -1 || a3 != -1;
  }

  if (a1 != -1)
  {
    valid = isValidCV(a1, a2);
    if (a3 != -1)
    {
      v7 = isValidVC(a2, a3);
      if (valid && v7)
      {
        return 1;
      }

      if (v7)
      {
        return 0;
      }

      if (a1 == 21 && a2 == 11)
      {
        valid = 1;
        if (a3 == 14 || a3 == 17)
        {
          return valid;
        }
      }

      return a1 == 8 && (a2 - 3) <= 1 && (a3 & 0xFFFFFFFE) == 0xE;
    }

    return valid;
  }

  return isValidVC(a2, a3);
}

BOOL isValidVC(int a1, int a2)
{
  if (a2 == -1)
  {
    return 1;
  }

  if (!*(&VSeqList + 13 * a1 + 2) || *(&CSeqList + 20 * a2 + 16) != 1)
  {
    return 0;
  }

  v6 = v2;
  v7 = v3;
  __key[0] = a1;
  __key[1] = a2;
  return bsearch(__key, &VCPairList, 0x99uLL, 8uLL, VCPairCompare) != 0;
}

BOOL isValidCV(int a1, int a2)
{
  result = 1;
  if (a1 != -1 && a2 != -1)
  {
    v4 = &VSeqList + 52 * a2;
    switch(a1)
    {
      case 8:
        v6 = *(v4 + 3) == 75;
        break;
      case 21:
        v6 = *(v4 + 3) == 143;
        break;
      case 10:
        v5 = 0;
        while (isValidCV(ConSeq,VowelSeq)::kVseq[v5] != a2)
        {
          if (++v5 == 12)
          {
            return 0;
          }
        }

        v6 = v5 == 12;
        break;
      default:
        return result;
    }

    return !v6;
  }

  return result;
}

uint64_t VCPairCompare(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  v3 = a1[1];
  v4 = a2[1];
  v5 = v3 < v4;
  v6 = v3 > v4;
  if (v5)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v6;
  }
}

uint64_t UkEngine::appendConsonnant(UkEngine *this, int a2, int a3)
{
  v4 = *(this + 7);
  v5 = v4 + 1;
  *(this + 7) = v4 + 1;
  v6 = this + 3144;
  v7 = this + 36 * v4 + 3180;
  *(v7 + 7) = a2 | 1;
  *(v7 + 8) = a3;
  *(v7 + 5) = (a2 | 1) != a2;
  *(v7 + 6) = 0;
  if (v4 == -1 || (v8 = *(this + 1), !*(v8 + 4)))
  {
    *v7 = xmmword_22CC889C0;
    *v54 = a2 | 1;
    *&v54[4] = -1;
    v16 = bsearch(v54, &SortedCSeqList, 0x1DuLL, 0x10uLL, tripleConCompare);
    if (v16)
    {
      v17 = v16[3];
    }

    else
    {
      v17 = -1;
    }

    *(v7 + 4) = v17;
    v18 = *(this + 1);
    if (!*(v18 + 4))
    {
      return 0;
    }

    goto LABEL_72;
  }

  v9 = &v6[36 * v4];
  v10 = *v9;
  if (*v9 > 6u)
  {
    goto LABEL_26;
  }

  if (((1 << v10) & 0x64) != 0)
  {
    v19 = &CSeqList + 20 * *(v9 + 4);
    if (*v19 == 3)
    {
      goto LABEL_66;
    }

    if (*v19 == 2)
    {
      *v54 = *(v19 + 4);
      *&v54[8] = a2 | 1;
      v20 = bsearch(v54, &SortedCSeqList, 0x1DuLL, 0x10uLL, tripleConCompare);
      if (!v20)
      {
        v21 = -1;
        goto LABEL_32;
      }
    }

    else
    {
      *v54 = *(v19 + 1);
      *&v54[4] = a2 | 1;
      v21 = -1;
      *&v54[8] = -1;
      v20 = bsearch(v54, &SortedCSeqList, 0x1DuLL, 0x10uLL, tripleConCompare);
      if (!v20)
      {
        goto LABEL_32;
      }
    }

    v21 = v20[3];
LABEL_32:
    if (v21 != -1)
    {
      v24 = *v9;
      if ((*v9 - 5) > 1)
      {
LABEL_63:
        if (v24 == 5)
        {
          *v7 = -4294967291;
          *(v7 + 3) = 0;
          v46 = *(v9 + 2) + 1;
        }

        else if (v24 == 2)
        {
          *v7 = 2;
          v46 = -1;
          *(v7 + 3) = -1;
        }

        else
        {
          v49 = *(v9 + 2);
          v50 = *(v9 + 1) + 1;
          *v7 = 6;
          *(v7 + 1) = v50;
          *(v7 + 3) = 0;
          v46 = v49 + 1;
        }

        v47 = 16;
        v48 = 8;
        goto LABEL_70;
      }

      v25 = *(v9 + 1);
      v26 = *(this + 7);
      if (v25 == -1)
      {
        v27 = -1;
      }

      else
      {
        v27 = *&v6[36 * v26 + 16 + 36 * ~v25];
      }

      if (isValidCVC(v27, *&v6[36 * v26 + 16 + 36 * ~*(v9 + 2)], v21))
      {
        v24 = *v9;
        goto LABEL_63;
      }
    }

LABEL_66:
    *v7 = 0;
    v46 = -1;
    *(v7 + 2) = -1;
    v47 = 4;
    v48 = 12;
    v21 = -1;
LABEL_70:
    *&v7[v48] = v46;
    *&v7[v47] = v21;
    goto LABEL_71;
  }

  if (((1 << v10) & 0x18) == 0)
  {
    if (v10 == 1)
    {
      *v7 = xmmword_22CC889C0;
      *v54 = a2 | 1;
      *&v54[4] = -1;
      v22 = bsearch(v54, &SortedCSeqList, 0x1DuLL, 0x10uLL, tripleConCompare);
      if (v22)
      {
        v23 = v22[3];
      }

      else
      {
        v23 = -1;
      }

      *(v7 + 4) = v23;
      goto LABEL_71;
    }

LABEL_26:
    if (!v10)
    {
      *v7 = xmmword_22CC88A10;
    }

    if (*(v8 + 2104) == 6)
    {
      goto LABEL_74;
    }

    return 0;
  }

  v11 = *(v9 + 4);
  if (v11 == 43 || v11 == 38)
  {
    v13 = 44;
  }

  else
  {
    v13 = *(v9 + 4);
  }

  v14 = *(v9 + 1);
  if (v14 == -1)
  {
    v15 = -1;
  }

  else
  {
    v15 = *&v6[36 * (v4 - v14) + 16];
  }

  *v54 = a2 | 1;
  *&v54[4] = -1;
  v28 = bsearch(v54, &SortedCSeqList, 0x1DuLL, 0x10uLL, tripleConCompare);
  if (v28)
  {
    v29 = v28[3];
  }

  else
  {
    v29 = -1;
  }

  if (isValidCVC(v15, v13, v29))
  {
    if (v11 == 43)
    {
      v30 = *(this + 7);
      v31 = *(this + 4);
      if (v31 >= v30)
      {
        v32 = v30 - 1;
        v33 = *(this + 5) + UkEngine::getSeqSteps(this, v30 - 1, v31 - 1);
        *(this + 4) = v32;
        *(this + 5) = v33;
      }

      *(v9 + 7) = 121;
    }

    else
    {
      if (v11 != 38)
      {
        v35 = 0;
        goto LABEL_52;
      }

      UkEngine::markChange(this, *(this + 7) - 2);
      v34 = &v6[36 * *(this + 7)];
      *(v34 - 11) = 155;
      *(v34 - 14) = 10;
    }

    *(v9 + 4) = 44;
    v35 = 1;
LABEL_52:
    if (*v9 == 3)
    {
      v36 = -1;
      v37 = 5;
    }

    else
    {
      v36 = *(v9 + 1) + 1;
      v37 = 6;
    }

    *v7 = v37;
    *(v7 + 1) = v36;
    *(v7 + 1) = 1;
    *(v7 + 4) = v29;
    v38 = *(this + 7);
    v39 = v38 - *(&VSeqList + 13 * v11);
    v40 = v39 + UkEngine::getTonePosition(this, v11, 1);
    v41 = &v6[36 * v40];
    v43 = *(v41 + 6);
    v42 = v41 + 24;
    if (v43)
    {
      v44 = v38 - *(&VSeqList + 13 * v13);
      v45 = v44 + UkEngine::getTonePosition(this, v13, 0);
      if (v45 != v40)
      {
        UkEngine::markChange(this, v45);
        *&v6[36 * v45 + 24] = *v42;
        UkEngine::markChange(this, v40);
        *v42 = 0;
        return 1;
      }
    }

    if (v35)
    {
      return 1;
    }

    goto LABEL_71;
  }

  *v7 = xmmword_22CC88A10;
LABEL_71:
  v18 = *(this + 1);
LABEL_72:
  if (*(v18 + 2104) == 6)
  {
    v5 = *(this + 7);
LABEL_74:
    v51 = *(this + 4);
    if (v51 > v5)
    {
      v52 = *(this + 5) + UkEngine::getSeqSteps(this, v5, v51 - 1);
      *(this + 4) = v5;
      *(this + 5) = v52;
    }

    return 1;
  }

  return 0;
}

_DWORD *UkEngine::markChange(_DWORD *this, int a2)
{
  v2 = this[4];
  if (v2 > a2)
  {
    v4 = this;
    this = UkEngine::getSeqSteps(this, a2, v2 - 1);
    v5 = v4[5] + this;
    v4[4] = a2;
    v4[5] = v5;
  }

  return this;
}

BOOL UkEngine::lastWordIsNonVn(UkEngine *this)
{
  v1 = *(this + 7);
  if ((v1 & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = this + 3144;
  v4 = (this + 36 * v1 + 3144);
  v5 = *v4;
  result = 1;
  if (*v4 > 6)
  {
    goto LABEL_11;
  }

  if (((1 << v5) & 6) != 0)
  {
    return 0;
  }

  if (((1 << v5) & 0x18) != 0)
  {
    return *(&VSeqList + 13 * *&v3[36 * v1 + 16] + 1) == 0;
  }

  if (((1 << v5) & 0x60) == 0)
  {
LABEL_11:
    if (!v5)
    {
      return result;
    }

    return 0;
  }

  v7 = v1 - v4[2];
  v8 = *&v3[36 * v7 + 16];
  v9 = (&VSeqList + 52 * v8);
  if (v9[1])
  {
    v10 = v4[4];
    v11 = v4[1];
    v12 = v11 == -1 ? -1 : *&v3[36 * (v1 - v11) + 16];
    valid = isValidCVC(v12, *&v3[36 * v7 + 16], v10);
    result = 1;
    if (valid)
    {
      v14 = v10 > 0x18 || ((1 << v10) & 0x1040006) == 0;
      return !v14 && (*&v3[36 * (v7 + UkEngine::getTonePosition(this, v8, 0) - *v9 + 1) + 24] - 2) < 3;
    }
  }

  return result;
}

uint64_t UkEngine::restoreKeyStrokes(UkEngine *this, _DWORD *a2, uint64_t a3, _DWORD *a4, _DWORD *a5)
{
  *a5 = 1;
  v8 = *(this + 7);
  if ((v8 & 0x80000000) == 0)
  {
    v10 = this + 3144;
    v11 = *(this + 7);
    do
    {
      v12 = &v10[36 * v11];
      if (*v12 == 1)
      {
        break;
      }

      v13 = *(v12 + 7);
      if (v13 != -1 && (*(&IsVnVowel + v13) == 1 && *(v12 + 6) || v13 != StdVnRootChar[v13]))
      {
        *(this + 2) = (v8 + 1);
        v15 = *(this + 778);
        if ((v15 & 0x80000000) == 0)
        {
          v16 = 0;
          while (1)
          {
            v17 = this + 24 * v15 + 40;
            if (*(v17 + 1) == 1)
            {
              break;
            }

            v16 |= v17[20];
            v14 = v15-- <= 0;
            if (v14)
            {
              v15 = -1;
              break;
            }
          }

          if (v16)
          {
            v18 = v8;
            while (*&v10[36 * v18] != 1)
            {
              *(this + 7) = v18 - 1;
              v14 = v18-- <= 0;
              if (v14)
              {
                v18 = -1;
                break;
              }
            }

            if (v8 <= v18)
            {
              v20 = 0;
            }

            else
            {
              v19 = v18 + 1;
              v20 = *(this + 5) + UkEngine::getSeqSteps(this, v18 + 1, v8);
              *(this + 4) = v19;
              *(this + 5) = v20;
            }

            *a2 = v20;
            *(this + 3139) = 1;
            if (v15 >= *(this + 778))
            {
              v22 = 0;
            }

            else
            {
              v22 = 0;
              v23 = v15;
              v24 = (this + 24 * v15 + 76);
              do
              {
                if (v22 < *a4)
                {
                  *(a3 + v22++) = *v24;
                }

                v25 = *v24;
                if (v25 < 256)
                {
                  v27 = *(&IsoVnLexiMap + v25);
                  if (v25 < 0x100)
                  {
                    v26 = UkcMap[v25];
                  }

                  else
                  {
                    *(&IsoVnLexiMap + v25);
                  }
                }

                ++v23;
                *(v24 + 8) = 0;
                UkEngine::processAppend(this);
                v24 += 6;
              }

              while (v23 < *(this + 778));
            }

            *a4 = v22;
            *(this + 3139) = 0;
            return 1;
          }
        }

        break;
      }

      v14 = v11-- <= 0;
    }

    while (!v14);
  }

  result = 0;
  *a2 = 0;
  *a4 = 0;
  return result;
}

uint64_t UkEngine::processHook(UkEngine *this, int *a2)
{
  v4 = *(this + 1);
  if (!*(v4 + 4))
  {
    goto LABEL_91;
  }

  v5 = *(this + 7);
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_91;
  }

  v6 = this + 3144;
  v7 = *(this + 9 * v5 + 788);
  if (v7 < 0)
  {
    goto LABEL_91;
  }

  v8 = v5 - v7;
  v9 = *&v6[36 * (v5 - v7) + 16];
  v10 = (&VSeqList + 52 * v9);
  v11 = *v10;
  v12 = *a2;
  v13 = *v10 < 2 || v12 == 8;
  v129 = this + 3144;
  if (v13 || (v14 = v10[3], v14 != 155) && v14 != 143 || ((v15 = v10[4] - 97, v16 = v15 > 0x18, v17 = (1 << v15) & 0x1001001, !v16) ? (v18 = v17 == 0) : (v18 = 1), v18))
  {
    TonePosition = UkEngine::getTonePosition(this, v9, v7 == 0);
    v128 = v8 - v11 + 1;
    v31 = TonePosition + v128;
    v32 = &v129[36 * TonePosition + 36 * v128];
    v35 = *(v32 + 6);
    v34 = v32 + 24;
    v33 = v35;
    v36 = v10[12];
    if (v36 != -1)
    {
      v37 = &VSeqList + 52 * v36;
      if (v12 > 6)
      {
        if (v12 == 7)
        {
          if (*&v37[4 * *(v37 + 11) + 12] != 121)
          {
            goto LABEL_91;
          }
        }

        else if (v12 == 8 && *&v37[4 * *(v37 + 11) + 12] != 25)
        {
          goto LABEL_91;
        }
      }

      else if (v12 == 5)
      {
        if (*&v37[4 * *(v37 + 11) + 12] == 25)
        {
          goto LABEL_91;
        }
      }

      else if (v12 == 6 && *&v37[4 * *(v37 + 11) + 12] != 155)
      {
        goto LABEL_91;
      }

      v126 = TonePosition;
      v47 = *&v129[36 * v5 + 4];
      if (v47 == -1)
      {
        v48 = -1;
      }

      else
      {
        v48 = *&v129[36 * (v5 - v47) + 16];
      }

      v49 = *&v129[36 * v5 + 12];
      v124 = v31;
      v50 = v33;
      if (v49 == -1)
      {
        v51 = -1;
      }

      else
      {
        v51 = *&v129[36 * (v5 - v49) + 16];
      }

      if ((isValidCVC(v48, v36, v51) & 1) == 0)
      {
        goto LABEL_91;
      }

      v52 = *(v37 + 11);
      v53 = v52 + v128;
      if (!*(*(this + 1) + 12) && v53 != *(this + 7))
      {
        goto LABEL_91;
      }

      v54 = *(this + 4);
      if (v54 > v53)
      {
        v55 = *(this + 5) + UkEngine::getSeqSteps(this, v52 + v128, v54 - 1);
        *(this + 4) = v53;
        *(this + 5) = v55;
      }

      *&v129[36 * v53 + 28] = *&v37[4 * v52 + 12];
      v56 = v36;
LABEL_113:
      v90 = *v37;
      if (v90 >= 1)
      {
        v91 = (v37 + 24);
        v92 = (this + 36 * v128 + 3160);
        do
        {
          v93 = *v91++;
          *v92 = v93;
          v92 += 9;
          --v90;
        }

        while (v90);
      }

      v94 = UkEngine::getTonePosition(this, v56, v8 == *(this + 7));
      if (v126 != v94 && v50 != 0)
      {
        v96 = v94 + v128;
        v97 = *(this + 4);
        if (v97 > v94 + v128)
        {
          v98 = *(this + 5) + UkEngine::getSeqSteps(this, v96, v97 - 1);
          *(this + 4) = v96;
          *(this + 5) = v98;
          v97 = v96;
        }

        *&v129[36 * v96 + 24] = v50;
        if (v97 > v124)
        {
          v99 = *(this + 5) + UkEngine::getSeqSteps(this, v124, v97 - 1);
          *(this + 4) = v124;
          *(this + 5) = v99;
        }

        *v34 = 0;
      }

      if (v36 != -1)
      {
        return 1;
      }

LABEL_161:
      *(this + 8) = 0;
      UkEngine::processAppend(this, a2);
      *(this + 3137) = 1;
      return 1;
    }

    v38 = v10[11];
    if (v38 == -1)
    {
      goto LABEL_91;
    }

    v39 = v38 + v128;
    v40 = &v129[36 * v38 + 36 * v128];
    v43 = *(v40 + 7);
    v42 = (v40 + 28);
    v41 = v43;
    v44 = v43 == 155 ? 143 : 97;
    v45 = v41 == 25 ? 1 : v44;
    if (v39 != v5 && *(v4 + 12) == 0)
    {
      goto LABEL_91;
    }

    switch(v12)
    {
      case 8:
        if (v41 != 25)
        {
          goto LABEL_91;
        }

        break;
      case 7:
        if (v41 != 121)
        {
          goto LABEL_91;
        }

        break;
      case 6:
        if (v41 != 155)
        {
          goto LABEL_91;
        }

        break;
      default:
        if (v12 == 5 && v41 == 25)
        {
          goto LABEL_91;
        }

        break;
    }

    v124 = TonePosition + v128;
    v126 = TonePosition;
    v50 = v33;
    v74 = v45;
    UkEngine::markChange(this, v39);
    *v42 = v74;
    if (v11 == 2)
    {
      v76 = *&v129[36 * v128 + 64];
    }

    else
    {
      if (v11 == 3)
      {
        v75 = &v129[36 * v128];
        v76 = *(v75 + 16);
        v77 = *(v75 + 25);
LABEL_112:
        v56 = lookupVSeq(*&v129[36 * v128 + 28], v76, v77);
        v37 = &VSeqList + 52 * v56;
        goto LABEL_113;
      }

      v76 = -1;
    }

    v77 = -1;
    goto LABEL_112;
  }

  if (*(v4 + 12) || !v7)
  {
    v19 = *&v6[36 * (v5 - v7) + 16];
    v20 = (&VSeqList + 52 * v19);
    v21 = *v20;
    v127 = v5 - v7;
    v22 = v5 - v7 - *v20 + 1;
    v23 = UkEngine::getTonePosition(this, v19, v7 == 0);
    v24 = v129;
    v123 = v22 + v23;
    v125 = v23;
    v25 = &v129[36 * v22 + 36 * v23];
    v28 = *(v25 + 6);
    v26 = v25 + 24;
    v27 = v28;
    if (v12 == 7)
    {
      v57 = v20[4];
      if (v57 != 109 && v57 != 97)
      {
        v29 = v26;
        v78 = v20[5];
        __key = 0x610000008FLL;
        v131 = v78;
        v79 = bsearch(&__key, &SortedVSeqList, 0x46uLL, 0x10uLL, tripleVowelCompare);
        if (v79)
        {
          v58 = v79[3];
        }

        else
        {
          v58 = -1;
        }

        v68 = v27;
        v24 = v129;
        v86 = v125;
        v85 = v127;
        if (v20[3] != 155)
        {
          v59 = v22 + 1;
          v109 = *(this + 4);
          if (v109 > v22 + 1)
          {
            SeqSteps = UkEngine::getSeqSteps(this, v22 + 1, v109 - 1);
            v24 = v129;
            v111 = *(this + 5) + SeqSteps;
            *(this + 4) = v59;
            *(this + 5) = v111;
          }

          goto LABEL_108;
        }

LABEL_105:
        v87 = *(this + 4);
        if (v87 > v22)
        {
          v88 = UkEngine::getSeqSteps(this, v22, v87 - 1);
          v24 = v129;
          v89 = *(this + 5) + v88;
          *(this + 4) = v22;
          *(this + 5) = v89;
        }

        *&v24[36 * v22 + 28] = 143;
        v59 = v22 + 1;
LABEL_108:
        v62 = 1;
        v84 = 97;
        goto LABEL_148;
      }

      if (v7 || v21 != 2 || *&v129[36 * v5] != 4 || *&v129[36 * v5 - 56] != 25)
      {
        v29 = v26;
        v65 = v20[5];
        __key = 0x790000009BLL;
        v131 = v65;
        v66 = bsearch(&__key, &SortedVSeqList, 0x46uLL, 0x10uLL, tripleVowelCompare);
        if (v66)
        {
          v58 = v66[3];
        }

        else
        {
          v58 = -1;
        }

        v24 = v129;
        v68 = v27;
        if (v20[3] == 143)
        {
          v100 = *(this + 4);
          v86 = v125;
          v85 = v127;
          if (v100 > v22)
          {
            v101 = UkEngine::getSeqSteps(this, v22, v100 - 1);
            v24 = v129;
            v102 = *(this + 5) + v101;
            *(this + 4) = v22;
            *(this + 5) = v102;
          }

          v62 = 0;
          *&v24[36 * v22 + 28] = 155;
          v59 = v22 + 1;
        }

        else
        {
          v59 = v22 + 1;
          v103 = *(this + 4);
          v86 = v125;
          v85 = v127;
          if (v103 <= v22 + 1)
          {
            v62 = 0;
          }

          else
          {
            v104 = UkEngine::getSeqSteps(this, v22 + 1, v103 - 1);
            v24 = v129;
            v62 = 0;
            v105 = *(this + 5) + v104;
            *(this + 4) = v59;
            *(this + 5) = v105;
          }
        }

        v84 = 121;
LABEL_148:
        *&v24[36 * v59 + 28] = v84;
        v112 = (&VSeqList + 52 * v58);
        v113 = *v112;
        if (v113 >= 1)
        {
          v114 = (v112 + 6);
          v115 = (this + 36 * v22 + 3160);
          do
          {
            v116 = *v114++;
            *v115 = v116;
            v115 += 9;
            --v113;
          }

          while (v113);
        }

        v117 = UkEngine::getTonePosition(this, v58, v85 == *(this + 7));
        if (v86 != v117 && v68 != 0)
        {
          v119 = v117 + v22;
          v120 = *(this + 4);
          if (v120 > v117 + v22)
          {
            v121 = *(this + 5) + UkEngine::getSeqSteps(this, v119, v120 - 1);
            *(this + 4) = v119;
            *(this + 5) = v121;
            v120 = v119;
          }

          *&v129[36 * v119 + 24] = v68;
          if (v120 > v123)
          {
            v122 = *(this + 5) + UkEngine::getSeqSteps(this, v123, v120 - 1);
            *(this + 4) = v123;
            *(this + 5) = v122;
          }

          *v29 = 0;
        }

        if (!v62)
        {
          return 1;
        }

        goto LABEL_161;
      }

      v29 = v26;
      v58 = v20[12];
      v59 = v22 + 1;
      v60 = *(this + 4);
      if (v60 <= v22 + 1)
      {
        v62 = 0;
      }

      else
      {
        v61 = UkEngine::getSeqSteps(this, v22 + 1, v60 - 1);
        v24 = v129;
        v62 = 0;
        v63 = *(this + 5) + v61;
        *(this + 4) = v59;
        *(this + 5) = v63;
      }
    }

    else
    {
      if (v12 == 6)
      {
        v29 = v26;
        if (v20[3] != 143)
        {
          goto LABEL_83;
        }

        goto LABEL_135;
      }

      v64 = v20[4];
      if (v20[3] != 143)
      {
        v29 = v26;
        if (v64 != 97)
        {
LABEL_83:
          v71 = v20[5];
          __key = 0x610000008FLL;
          v131 = v71;
          v72 = bsearch(&__key, &SortedVSeqList, 0x46uLL, 0x10uLL, tripleVowelCompare);
          v68 = v27;
          if (v72)
          {
            v58 = v72[3];
          }

          else
          {
            v58 = -1;
          }

          v24 = v129;
          v86 = v125;
          v85 = v127;
          goto LABEL_105;
        }

        v58 = v20[12];
        v59 = v22 + 1;
        v67 = *(this + 4);
        v68 = v27;
        if (v67 <= v22 + 1)
        {
          v62 = 0;
        }

        else
        {
          v69 = UkEngine::getSeqSteps(this, v22 + 1, v67 - 1);
          v24 = v129;
          v62 = 0;
          v70 = *(this + 5) + v69;
          *(this + 4) = v59;
          *(this + 5) = v70;
        }

        v84 = 121;
        goto LABEL_147;
      }

      if (v64 != 109 && v64 != 97)
      {
        v29 = v26;
LABEL_135:
        v58 = v20[12];
        v106 = *(this + 4);
        v68 = v27;
        if (v106 <= v22)
        {
          v62 = 0;
        }

        else
        {
          v107 = UkEngine::getSeqSteps(this, v22, v106 - 1);
          v24 = v129;
          v62 = 0;
          v108 = *(this + 5) + v107;
          *(this + 4) = v22;
          *(this + 5) = v108;
        }

        v84 = 155;
        v59 = v22;
        goto LABEL_147;
      }

      v29 = v26;
      if (!v7 && (v19 & 0xFFFFFFFE) == 0x24 && *&v129[36 * v5] == 4 && *&v129[36 * v5 - 56] == 25)
      {
        v59 = v22 + 1;
        UkEngine::markChange(this, v22 + 1);
        v24 = v129;
        v62 = 0;
        v58 = 38;
      }

      else
      {
        v80 = v20[12];
        v81 = *(this + 4);
        if (v81 > v22)
        {
          v82 = UkEngine::getSeqSteps(this, v22, v81 - 1);
          v24 = v129;
          v83 = *(this + 5) + v82;
          *(this + 4) = v22;
          *(this + 5) = v83;
        }

        v62 = 0;
        *&v24[36 * v22 + 28] = 155;
        v58 = *(&VSeqList + 13 * v80 + 12);
        v59 = v22 + 1;
      }
    }

    v84 = 121;
    v68 = v27;
LABEL_147:
    v86 = v125;
    v85 = v127;
    goto LABEL_148;
  }

LABEL_91:

  return UkEngine::processAppend(this, a2);
}

uint64_t UkEngine::processTone(UkEngine *this, _DWORD *a2)
{
  v4 = *(this + 7);
  if ((v4 & 0x80000000) == 0)
  {
    v5 = *(this + 1);
    if (v5[1])
    {
      v6 = this + 3144;
      v7 = (this + 36 * v4 + 3144);
      v8 = *v7;
      if (*v7 == 2 && (v9 = v7[4], (v9 & 0xFFFFFFFE) == 8))
      {
        v10 = v4 - (v9 != 8);
        v11 = &v6[36 * v10];
        v14 = *(v11 + 6);
        v13 = (v11 + 24);
        v12 = v14;
        v15 = a2[4];
        if (v14 | v15)
        {
          v16 = *(this + 4);
          if (v16 > v10)
          {
            v17 = *(this + 5) + UkEngine::getSeqSteps(this, v10, v16 - 1);
            *(this + 4) = v10;
            *(this + 5) = v17;
            v12 = *v13;
            v15 = a2[4];
          }

          if (v12 != v15)
          {
LABEL_30:
            *v13 = v15;
            return 1;
          }

          goto LABEL_27;
        }
      }

      else
      {
        v18 = *&v6[36 * v4 + 8];
        if ((v18 & 0x80000000) == 0)
        {
          v19 = v4 - v18;
          v20 = *&v6[36 * (v4 - v18) + 16];
          v21 = (&VSeqList + 52 * v20);
          if (!v5[10] || v5[3] || v21[1])
          {
            if ((v8 - 5) > 1 || ((v22 = *&v6[36 * v4 + 16], v23 = v22 > 0x18, v24 = (1 << v22) & 0x1040006, !v23) ? (v25 = v24 == 0) : (v25 = 1), v25 || (a2[4] - 2) > 2))
            {
              v26 = v19 + UkEngine::getTonePosition(this, v20, v18 == 0) - *v21 + 1;
              v27 = &v6[36 * v26];
              v29 = *(v27 + 6);
              v13 = (v27 + 24);
              v28 = v29;
              v15 = a2[4];
              if (v29 | v15)
              {
                v31 = *(this + 4);
                if (v28 != v15)
                {
                  if (v31 > v26)
                  {
                    v33 = *(this + 5) + UkEngine::getSeqSteps(this, v26, v31 - 1);
                    *(this + 4) = v26;
                    *(this + 5) = v33;
                    v15 = a2[4];
                  }

                  goto LABEL_30;
                }

                if (v31 > v26)
                {
                  v32 = *(this + 5) + UkEngine::getSeqSteps(this, v26, v31 - 1);
                  *(this + 4) = v26;
                  *(this + 5) = v32;
                }

LABEL_27:
                *v13 = 0;
                *(this + 8) = 0;
                UkEngine::processAppend(this, a2);
                *(this + 3137) = 1;
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return UkEngine::processAppend(this, a2);
}

uint64_t UkEngine::processDd(UkEngine *this, _DWORD *a2)
{
  v4 = *(this + 1);
  if (*(v4 + 4))
  {
    v5 = *(this + 7);
    if ((v5 & 0x80000000) == 0)
    {
      v6 = this + 3144;
      v7 = this + 36 * v5 + 3144;
      if (!*v7 && *(v7 + 7) == 41)
      {
        v8 = *&v6[36 * (v5 - 1) + 28];
        if (v8 == -1 || (*(&IsVnVowel + v8) & 1) == 0)
        {
          *(this + 8) = 1;
          v18 = *(this + 4);
          if (v18 > v5)
          {
            v19 = *(this + 5) + UkEngine::getSeqSteps(this, v5, v18 - 1);
            *(this + 4) = v5;
            *(this + 5) = v19;
          }

          *(v7 + 4) = 4;
          *(v7 + 7) = 43;
          *v7 = xmmword_22CC889C0;
          return 1;
        }
      }

      v9 = *&v6[36 * v5 + 4];
      if ((v9 & 0x80000000) == 0)
      {
        v10 = *(v4 + 12);
        if (!v9 || v10 != 0)
        {
          v12 = v5 - v9;
          v13 = &v6[36 * v12];
          v14 = *(v13 + 4);
          if (v14 == 4)
          {
            v20 = *(this + 4);
            if (v20 > v12)
            {
              v21 = *(this + 5) + UkEngine::getSeqSteps(this, v12, v20 - 1);
              *(this + 4) = v12;
              *(this + 5) = v21;
            }

            *(v13 + 4) = 3;
            *(v13 + 7) = 41;
            *(this + 8) = 0;
            UkEngine::processAppend(this, a2);
            *(this + 3137) = 1;
            return 1;
          }

          if (v14 == 3)
          {
            v15 = *(this + 4);
            if (v15 > v12)
            {
              v16 = *(this + 5) + UkEngine::getSeqSteps(this, v12, v15 - 1);
              *(this + 4) = v12;
              *(this + 5) = v16;
            }

            *(v13 + 4) = 4;
            *(v13 + 7) = 43;
            return 1;
          }
        }
      }
    }
  }

  return UkEngine::processAppend(this, a2);
}

uint64_t UkEngine::processMapChar(UkEngine *this, _DWORD *a2)
{
  v35 = 0;
  if (*this)
  {
    (*this)(&v35, &v35 + 4);
    if (HIDWORD(v35))
    {
      v4 = a2[2];
      v5 = v4 - 1;
      if ((v4 & 1) == 0)
      {
        v5 = v4 | 1;
      }

      if (v4 == -1)
      {
        v6 = -1;
      }

      else
      {
        v6 = v5;
      }

      a2[2] = v6;
    }
  }

  result = UkEngine::processAppend(this, a2);
  if (*(*(this + 1) + 4))
  {
    v8 = *(this + 7);
    if ((v8 & 0x80000000) != 0)
    {
      return 0;
    }

    v9 = this + 3144;
    if (*(this + 9 * v8 + 786) > 1u)
    {
      return 1;
    }

    v10 = v8 - 1;
    *(this + 7) = v10;
    v11 = &v9[36 * v10];
    if (*v11 < 2u)
    {
      goto LABEL_24;
    }

    v12 = *(v11 + 7);
    if (*(v11 + 5))
    {
      v13 = v12 - 1;
      if (v12 == a2[2])
      {
        a2[2] = v13;
        a2[3] = __toupper(a2[3]);
      }
    }

    else
    {
      v13 = *(v11 + 7);
    }

    if (v13 == a2[2])
    {
      v14 = *(this + 7);
      if (*v11 == 2)
      {
        v15 = *(this + 4);
        if (v15 > v14)
        {
          v16 = *(this + 5) + UkEngine::getSeqSteps(this, *(this + 7), v15 - 1);
          *(this + 4) = v14;
          *(this + 5) = v16;
          v14 = *(this + 7);
        }

        *(this + 7) = v14 - 1;
        goto LABEL_34;
      }

      v18 = *(v11 + 2);
      v19 = *&v9[36 * (v14 - v18) + 16];
      v20 = v14 - v18 - *(&VSeqList + 13 * v19) + 1;
      TonePosition = UkEngine::getTonePosition(this, v19, v18 == 0);
      v22 = &v9[36 * v20 + 36 * TonePosition];
      v25 = *(v22 + 6);
      v23 = v22 + 24;
      v24 = v25;
      v26 = *(this + 4);
      if (v26 > v14)
      {
        v27 = *(this + 5) + UkEngine::getSeqSteps(this, v14, v26 - 1);
        *(this + 4) = v14;
        *(this + 5) = v27;
        v14 = *(this + 7);
      }

      v28 = v14 - 1;
      *(this + 7) = v14 - 1;
      if (v24)
      {
        v29 = v14 < 1;
      }

      else
      {
        v29 = 1;
      }

      if (v29 || (*&v9[36 * v28] - 3) > 1)
      {
        goto LABEL_34;
      }

      v17 = 1;
      v30 = UkEngine::getTonePosition(this, *&v9[36 * v28 + 16], 1);
      if (v30 != TonePosition)
      {
        v31 = v30 + v20;
        UkEngine::markChange(this, v30 + v20);
        *&v9[36 * v31 + 24] = v24;
        UkEngine::markChange(this, v20 + TonePosition);
        *v23 = 0;
LABEL_34:
        v17 = 1;
      }
    }

    else
    {
LABEL_24:
      v17 = 0;
    }

    *a2 = 19;
    v32 = a2[3];
    if (v32 < 0x100)
    {
      v34 = UkcMap[v32];
      v33 = *(&IsoVnLexiMap + v32);
    }

    else if (v32 <= 255)
    {
      v33 = *(&IsoVnLexiMap + v32);
      v34 = 2 * (v33 == -1);
    }

    else
    {
      v33 = -1;
      v34 = 2;
    }

    a2[1] = v34;
    a2[2] = v33;
    result = UkEngine::processAppend(this, a2);
    if (v17)
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 3137) = 1;
    }
  }

  return result;
}

uint64_t UkEngine::processTelexW(UkEngine *this, int *a2)
{
  if (*(*(this + 1) + 4))
  {
    v13 = 0;
    if (*this)
    {
      (*this)(&v13, &v13 + 4);
    }

    if (UkEngine::processTelexW(UkKeyEvent &)::usedAsMapChar == 1)
    {
      *a2 = 17;
      v4 = a2[3];
      if (v4 <= 0x7F)
      {
        v5 = *(MEMORY[0x277D85DE0] + 4 * v4 + 60) & 0x8000;
      }

      else
      {
        v5 = __maskrune(v4, 0x8000uLL);
      }

      if (v5)
      {
        v10 = 154;
      }

      else
      {
        v10 = 155;
      }

      a2[2] = v10;
      if (HIDWORD(v13))
      {
        a2[2] = v10 & 1 ^ 0x9B;
      }

      a2[1] = 0;
      if (UkEngine::processMapChar(this, a2))
      {
        return 1;
      }

      v11 = *(this + 7);
      if ((v11 & 0x80000000) == 0)
      {
        *(this + 7) = v11 - 1;
      }

      UkEngine::processTelexW(UkKeyEvent &)::usedAsMapChar = 0;
      *a2 = 4;
      return UkEngine::processHook(this, a2);
    }

    else
    {
      *a2 = 4;
      UkEngine::processTelexW(UkKeyEvent &)::usedAsMapChar = 0;
      if (UkEngine::processHook(this, a2))
      {
        return 1;
      }

      v7 = *(this + 7);
      if ((v7 & 0x80000000) == 0)
      {
        *(this + 7) = v7 - 1;
      }

      *a2 = 17;
      v8 = a2[3];
      if (v8 <= 0x7F)
      {
        v9 = *(MEMORY[0x277D85DE0] + 4 * v8 + 60) & 0x8000;
      }

      else
      {
        v9 = __maskrune(v8, 0x8000uLL);
      }

      if (v9)
      {
        v12 = 154;
      }

      else
      {
        v12 = 155;
      }

      a2[2] = v12;
      if (HIDWORD(v13))
      {
        a2[2] = v12 & 1 ^ 0x9B;
      }

      a2[1] = 0;
      UkEngine::processTelexW(UkKeyEvent &)::usedAsMapChar = 1;
      return UkEngine::processMapChar(this, a2);
    }
  }

  else
  {

    return UkEngine::processAppend(this, a2);
  }
}

uint64_t UkEngine::processEscChar(UkEngine *this, _DWORD *a2)
{
  if (*(*(this + 1) + 4))
  {
    v2 = *(this + 7);
    if ((v2 & 0x80000000) == 0 && *(this + 9 * v2 + 786) >= 2u)
    {
      *(this + 3116) = 1;
    }
  }

  return UkEngine::processAppend(this, a2);
}

id phrasesFilePathForInputMode(uint64_t a1)
{
  v1 = [TIInputMode inputModeWithIdentifier:a1];
  v2 = UIKeyboardPhraseLexiconPathForInputMode(v1);

  return v2;
}

id dynamicFilePathForInputMode(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 length];
  v6 = 0;
  if (v4 && v5)
  {
    if ([v3 isEqualToString:@"en_US"])
    {
      v7 = @"dynamic-text.dat";
    }

    else
    {
      v8 = TIInputModeGetLanguageWithRegion();
      v7 = [v8 stringByAppendingString:@"-dynamic-text.dat"];
    }

    if ([(__CFString *)v7 length])
    {
      v6 = [v4 stringByAppendingPathComponent:v7];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

id deltaUnigramsFilePathForInputMode(uint64_t a1)
{
  v1 = [TIInputMode inputModeWithIdentifier:a1];
  v2 = UIKeyboardDeltaLexiconPathForInputMode(v1);

  return v2;
}

void __createAndLoadDictionaryContainer(NSString *a1, NSString *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    v5 = UIKeyboardDynamicDictionaryFileWithSiriMode(v3, v4, 0);
  }

  else
  {
    v5 = 0;
  }

  __getLexiconInfo(v3, v5, 1.0, v13);
  KB::String::String(&v6, v13);
  KB::String::String(&v7, &v14);
  KB::String::String(&v8, &v15);
  KB::String::String(&v9, &v16);
  KB::String::String(&v10, &v17);
  v11 = v18;
  v12 = v19;
  operator new();
}

void __getLexiconInfo(NSString *a1@<X0>, NSString *a2@<X1>, float a3@<S0>, uint64_t a4@<X8>)
{
  v7 = a2;
  v8 = a1;
  v12 = UIKeyboardStaticUnigramsFile(v8);
  v9 = deltaUnigramsFilePathForInputMode(v8);
  v10 = phrasesFilePathForInputMode(v8);
  v11 = dynamicFilePathForInputMode(v8, v7);

  LODWORD(v7) = TILexiconIDForLocaleIdentifier([(NSString *)v8 UTF8String]);
  KB::utf8_string(v8, a4);

  KB::utf8_string(v12, a4 + 32);
  KB::utf8_string(v9, a4 + 64);
  KB::utf8_string(v10, a4 + 96);
  KB::utf8_string(v11, a4 + 128);
  *(a4 + 160) = v7;
  *(a4 + 164) = 0;
  *(a4 + 168) = a3;
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:nn200100]<std::allocator<KB::LexiconInfo>,KB::LexiconInfo const*,KB::LexiconInfo const*,KB::LexiconInfo*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a3 + v6;
      KB::String::String((a3 + v6), (a1 + v6));
      KB::String::String((a3 + v6 + 32), (a1 + v6 + 32));
      KB::String::String((a3 + v6 + 64), (a1 + v6 + 64));
      KB::String::String((a3 + v6 + 96), (a1 + v6 + 96));
      KB::String::String((a3 + v6 + 128), (a1 + v6 + 128));
      v8 = *(a1 + v6 + 160);
      *(v7 + 168) = *(a1 + v6 + 168);
      *(v7 + 160) = v8;
      v6 += 176;
    }

    while (a1 + v6 != a2);
    a3 += v6;
  }

  return a3;
}

uint64_t std::construct_at[abi:nn200100]<KB::LexiconInfo,KB::String const&,KB::String,KB::String,KB::String,KB::String,unsigned int const&,BOOL,int,KB::LexiconInfo*>(uint64_t a1, const KB::String *a2, KB::String *a3, KB::String *a4, KB::String *a5, KB::String *a6, _BYTE *a7, int *a8)
{
  v15 = KB::String::String(a1, a2);
  *(v15 + 8) = 0x100000;
  *(a1 + 36) = 0;
  *(a1 + 38) = 0;
  *(a1 + 40) = 0;
  KB::String::operator=(v15 + 32, a3);
  *(a1 + 64) = 0x100000;
  *(a1 + 68) = 0;
  *(a1 + 70) = 0;
  *(a1 + 72) = 0;
  KB::String::operator=(a1 + 64, a4);
  *(a1 + 96) = 0x100000;
  *(a1 + 100) = 0;
  *(a1 + 102) = 0;
  *(a1 + 104) = 0;
  KB::String::operator=(a1 + 96, a5);
  *(a1 + 128) = 0x100000;
  *(a1 + 132) = 0;
  *(a1 + 134) = 0;
  *(a1 + 136) = 0;
  KB::String::operator=(a1 + 128, a6);
  *(a1 + 160) = -2;
  *(a1 + 164) = *a7;
  *(a1 + 168) = *a8;
  return a1;
}

void __createAndLoadLanguageModel(NSString *a1, NSString *a2, int a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEAF8];
  v6 = a2;
  v7 = a1;
  v8 = [v5 localeWithLocaleIdentifier:v7];
  v12[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  [TIInputMode inputModeWithIdentifier:v7];
  v10 = [objc_claimAutoreleasedReturnValue() doesSupportInlineCompletion];
  KB::LanguageModelConfig::LanguageModelConfig(&v11, v8, 0, v9, 0, v6, 0, 0, 0, a3 ^ 1, 0, 0, 1, 90, v10);
  operator new();
}

uint64_t std::__shared_ptr_pointer<KB::LanguageModelStr *,std::shared_ptr<KB::LanguageModel>::__shared_ptr_default_delete<KB::LanguageModel,KB::LanguageModelStr>,std::allocator<KB::LanguageModelStr>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<KB::LanguageModelStr *,std::shared_ptr<KB::LanguageModel>::__shared_ptr_default_delete<KB::LanguageModel,KB::LanguageModelStr>,std::allocator<KB::LanguageModelStr>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

uint64_t KB::LanguageModelConfig::LanguageModelConfig(uint64_t a1, CFTypeRef cf, char a3, CFTypeRef a4, CFTypeRef a5, CFTypeRef a6, CFTypeRef a7, CFTypeRef a8, CFTypeRef cfa, int a10, char a11, int a12, int a13, int a14, char a15)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
    *a1 = cf;
  }

  *(a1 + 8) = a4;
  if (a4)
  {
    CFRetain(a4);
    *(a1 + 8) = a4;
  }

  *(a1 + 16) = cfa;
  if (cfa)
  {
    CFRetain(cfa);
    *(a1 + 16) = cfa;
  }

  *(a1 + 24) = a5;
  if (a5)
  {
    CFRetain(a5);
    *(a1 + 24) = a5;
  }

  *(a1 + 32) = a6;
  if (a6)
  {
    CFRetain(a6);
    *(a1 + 32) = a6;
  }

  *(a1 + 40) = a7;
  if (a7)
  {
    CFRetain(a7);
    *(a1 + 40) = a7;
  }

  *(a1 + 48) = a8;
  if (a8)
  {
    CFRetain(a8);
    *(a1 + 48) = a8;
  }

  *(a1 + 56) = a12;
  *(a1 + 60) = a10;
  *(a1 + 64) = a13;
  *(a1 + 72) = a3;
  *(a1 + 73) = a11;
  *(a1 + 86) = a15;
  if (TIGetKeyboardLanguageModelingDisableDynamicLanguageModelsValue(void)::onceToken != -1)
  {
    dispatch_once(&TIGetKeyboardLanguageModelingDisableDynamicLanguageModelsValue(void)::onceToken, &__block_literal_global_4152);
  }

  v23 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v24 = [v23 valueForPreferenceKey:@"KeyboardLanguageModelingDisableDynamicLanguageModels"];

  LOBYTE(v23) = [v24 BOOLValue];
  *(a1 + 74) = v23;
  v25 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v26 = [v25 valueForPreferenceKey:*MEMORY[0x277D6F9D0]];
  v27 = [v26 integerValue];

  if (v27 > 2)
  {
    v28 = 2;
  }

  else
  {
    v28 = dword_22CC89E4C[v27];
  }

  *(a1 + 68) = v28;
  v29 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v30 = [v29 valueForPreferenceKey:*MEMORY[0x277D6F880]];
  v31 = [v30 BOOLValue];

  *(a1 + 75) = v31;
  v32 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v33 = [v32 valueForPreferenceKey:*MEMORY[0x277D6F890]];
  v34 = [v33 integerValue];

  *(a1 + 80) = v34;
  v35 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v36 = [v35 valueForPreferenceKey:*MEMORY[0x277D6F888]];
  v37 = [v36 integerValue];

  *(a1 + 76) = v37;
  *(a1 + 88) = a14;
  *(a1 + 84) = 1;
  *(a1 + 85) = _os_feature_enabled_impl();
  return a1;
}

{
  return KB::LanguageModelConfig::LanguageModelConfig(a1, cf, a3, a4, a5, a6, a7, a8, cfa, a10, a11, a12, a13, a14, a15);
}

void ___ZL62TIGetKeyboardLanguageModelingDisableDynamicLanguageModelsValuev_block_invoke()
{
  v0 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v0 _configureKey:@"KeyboardLanguageModelingDisableDynamicLanguageModels" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x277CBEC28]];
}

void KB::LanguageModelConfig::trial_parameters(KB::LanguageModelConfig *this@<X0>, const __CFDictionary *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(this + 2);
  if (v4)
  {
    LM::TrialParameters::createWithEncodedRepresentation(__p, v4, a2);
    *a3 = *__p;
    v5 = v11;
    v6 = v12;
    __p[1] = 0;
    v11 = 0;
    __p[0] = 0;
    *(a3 + 16) = v5;
    *(a3 + 24) = v6;
    v7 = v13;
    v8 = v14;
    *(a3 + 32) = v13;
    v9 = a3 + 32;
    *(a3 + 40) = v8;
    if (v8)
    {
      v7[2] = v9;
      v12 = &v13;
      v13 = 0;
      v14 = 0;
      v7 = 0;
    }

    else
    {
      *(a3 + 24) = v9;
    }

    *(a3 + 48) = 1;
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v7);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 48) = 0;
  }
}

uint64_t __Block_byref_object_copy__50(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

const void ****std::unique_ptr<KB::StaticDictionary>::~unique_ptr[abi:nn200100](const void ****a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    KB::StaticDictionary::~StaticDictionary(v2);
    MEMORY[0x2318BE270]();
  }

  return a1;
}

uint64_t __Block_byref_object_copy__4272(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<KB::String,_LXLexicon const*>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,_LXLexicon const*>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,_LXLexicon const*>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,_LXLexicon const*>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  while (v2)
  {
    v3 = v2;
    v2 = *v2;
    v4 = v3[3];
    if (v4 && *(v3 + 22) == 1)
    {
      free(v4);
    }

    operator delete(v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t TITransientLexiconManagerGetNamedEntitiesForLocale(uint64_t a1)
{
  v2 = +[TITransientLexiconManager sharedInstance];
  v3 = [v2 namedEntityLexiconForLocale:a1];

  return v3;
}

id TITypologyProfileStateLog()
{
  if (TITypologyProfileStateLog_onceToken != -1)
  {
    dispatch_once(&TITypologyProfileStateLog_onceToken, &__block_literal_global_4408);
  }

  v1 = TITypologyProfileStateLog_log;

  return v1;
}

uint64_t __TITypologyProfileStateLog_block_invoke()
{
  TITypologyProfileStateLog_log = os_log_create("com.apple.TextInput", "typologyProfileState");

  return MEMORY[0x2821F96F8]();
}

uint64_t _areValidFieldValues(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v5;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([MEMORY[0x277CBEAA8] distantPast], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToDate:", v9), v9, !v10))
  {
    v13 = [MEMORY[0x277CBEAA8] now];
    v14 = [v8 laterDate:v13];

    if (v14 != v8)
    {
      v15 = v6;
      if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {

        goto LABEL_5;
      }

      v16 = [MEMORY[0x277CBEAA8] now];
      v17 = [v15 laterDate:v16];

      if (v17 != v15)
      {
        v18 = v7;
        if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {

          goto LABEL_5;
        }

        if (([v18 isEqualToString:@"None"] & 1) != 0 || (objc_msgSend(v18, "isEqualToString:", @"Enable") & 1) != 0 || objc_msgSend(v18, "isEqualToString:", @"NotNow"))
        {
        }

        else
        {
          v22 = [v18 isEqualToString:@"Disabled"];

          if (!v22)
          {
            goto LABEL_5;
          }
        }

        v19 = [MEMORY[0x277CBEAA8] distantPast];
        v20 = [v15 isEqualToDate:v19];

        if (v20)
        {
          if (([v18 isEqualToString:@"None"] & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v21 = [v8 laterDate:v15];

          if (v21 == v8)
          {
            goto LABEL_5;
          }
        }

        v11 = 1;
        goto LABEL_6;
      }
    }
  }

  else
  {
  }

LABEL_5:
  v11 = 0;
LABEL_6:

  return v11;
}

void KB::RemoveAlternatesIfNoLinguisticCandidate::filter_candidates(uint64_t a1, void *a2, const char *a3, uint64_t a4)
{
  if (*a2 == a2[1])
  {
    v8 = a2[3];
      ;
    }

    a2[4] = v8;
    v9 = *(a4 + 56);
    if (v9)
    {

      KB::append_format(v9, "Removing alternate corrections as there are no linguistic autocorrection candidate\n", a3);
    }
  }
}

uint64_t KB::CandidateFilterFactory::FilterStackDefinition::FilterStackDefinition(uint64_t a1, uint64_t *a2)
{
  v3 = 0uLL;
  *(a1 + 48) = 0u;
  v4 = (a1 + 48);
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 1065353216;
  *(a1 + 88) = 0;
  v5 = *a2;
  if (a2[1] != *a2)
  {
    v6 = 0;
    while (1)
    {
      v7 = *(v5 + 8 * v6);
      if (!v7)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      CFRetain(*(v5 + 8 * v6));
      for (i = 0; i < CFArrayGetCount(v7); ++i)
      {
        cf[0] = 0;
        applesauce::CF::at_or<applesauce::CF::DictionaryRef>(v29, v7, i, cf);
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        v9 = v29[0];
        if (v29[0])
        {
          CFRetain(v29[0]);
          extract_name(cf, v9);
          CFRelease(v9);
          applesauce::CF::at_or<char const(&)[1],__CFString const* const&>(&__p, v9, @"Operation");
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            if (__p.__r_.__value_.__l.__size_ == 6)
            {
              if (*__p.__r_.__value_.__l.__data_ != 1701602628 || *(__p.__r_.__value_.__r.__words[0] + 4) != 25972)
              {
                goto LABEL_17;
              }

              goto LABEL_29;
            }

            if (__p.__r_.__value_.__l.__size_ == 8)
            {
              p_p = __p.__r_.__value_.__r.__words[0];
LABEL_16:
              if (p_p->__r_.__value_.__r.__words[0] == 0x656469727265764FLL)
              {
                goto LABEL_29;
              }
            }

LABEL_17:
            std::vector<applesauce::CF::DictionaryRef>::push_back[abi:nn200100]((a1 + 24), v29);
          }

          else
          {
            if (HIBYTE(__p.__r_.__value_.__r.__words[2]) != 6)
            {
              if (HIBYTE(__p.__r_.__value_.__r.__words[2]) == 8)
              {
                p_p = &__p;
                goto LABEL_16;
              }

              goto LABEL_17;
            }

            if (LODWORD(__p.__r_.__value_.__l.__data_) != 1701602628 || WORD2(__p.__r_.__value_.__r.__words[0]) != 25972)
            {
              goto LABEL_17;
            }

LABEL_29:
            v29[1] = cf;
            v12 = std::__hash_table<std::__hash_value_type<std::string,applesauce::CF::DictionaryRef>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,applesauce::CF::DictionaryRef>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,applesauce::CF::DictionaryRef>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,applesauce::CF::DictionaryRef>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v4, cf);
            v13 = v12[5];
            v12[5] = v9;
            CFRetain(v9);
            if (v13)
            {
              CFRelease(v13);
            }
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v28 < 0)
          {
            operator delete(cf[0]);
          }

          CFRelease(v9);
          continue;
        }
      }

      CFRelease(v7);
      ++v6;
      v5 = *a2;
      if (v6 >= (a2[1] - *a2) >> 3)
      {
        v3 = *(a1 + 24);
        break;
      }
    }
  }

  v15 = v3;
  v16 = (*(&v3 + 1) - v3) >> 3;
  if (v16 < 1)
  {
    v20 = 0;
LABEL_45:
    std::__stable_sort<std::_ClassicAlgPolicy,KB::CandidateFilterFactory::FilterStackDefinition::FilterStackDefinition(std::vector<applesauce::CF::ArrayRef> const&)::$_0 &,std::__wrap_iter<applesauce::CF::DictionaryRef *>>(v15, *(&v15 + 1), v16, 0, v20);
  }

  else
  {
    v17 = MEMORY[0x277D826F0];
    v18 = (*(&v3 + 1) - v3) >> 3;
    while (1)
    {
      v19 = operator new(8 * v18, v17);
      if (v19)
      {
        break;
      }

      v20 = v18 >> 1;
      v21 = v18 > 1;
      v18 >>= 1;
      if (!v21)
      {
        goto LABEL_45;
      }
    }

    v22 = v19;
    std::__stable_sort<std::_ClassicAlgPolicy,KB::CandidateFilterFactory::FilterStackDefinition::FilterStackDefinition(std::vector<applesauce::CF::ArrayRef> const&)::$_0 &,std::__wrap_iter<applesauce::CF::DictionaryRef *>>(v15, *(&v15 + 1), v16, v19, v18);
    operator delete(v22);
  }

  return a1;
}

void std::__stable_sort<std::_ClassicAlgPolicy,KB::CandidateFilterFactory::FilterStackDefinition::FilterStackDefinition(std::vector<applesauce::CF::ArrayRef> const&)::$_0 &,std::__wrap_iter<applesauce::CF::DictionaryRef *>>(uint64_t *a1, CFTypeRef *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 < 2)
  {
    return;
  }

  v5 = a2;
  v6 = a1;
  if (a3 == 2)
  {
    v7 = *(a2 - 1);
    if (!v7)
    {
      v60 = *a1;
      if (!*v6)
      {
        goto LABEL_64;
      }

      goto LABEL_73;
    }

    CFRetain(*(a2 - 1));
    v8 = *v6;
    if (*v6)
    {
      CFRetain(*v6);
      v9 = applesauce::CF::details::find_at_key_or_optional<unsigned long,__CFString const* const&>(v7);
      v11 = v10;
      v12 = applesauce::CF::details::find_at_key_or_optional<unsigned long,__CFString const* const&>(v8);
      if (v13)
      {
        v14 = v12;
      }

      else
      {
        v14 = -1;
      }

      CFRelease(v8);
      CFRelease(v7);
      if ((v11 & 1) != 0 && v9 < v14)
      {
        v15 = *v6;
        *v6 = 0;
        *v6 = *(v5 - 1);
        *(v5 - 1) = v15;
      }

      return;
    }

LABEL_62:
    v58 = v7;
    goto LABEL_63;
  }

  if (a3 <= 0)
  {
    if (a1 == a2)
    {
      return;
    }

    v22 = (a1 + 1);
    if (a1 + 1 == a2)
    {
      return;
    }

    v23 = 0;
    v24 = a1;
    while (1)
    {
      v25 = v24;
      v7 = *v22;
      if (!*v22)
      {
        v60 = *v24;
        if (!*v24)
        {
          goto LABEL_64;
        }

LABEL_73:
        CFRetain(v60);
        goto LABEL_64;
      }

      v24 = v22;
      CFRetain(*v22);
      v26 = *v25;
      if (!*v25)
      {
        goto LABEL_62;
      }

      CFRetain(*v25);
      v27 = applesauce::CF::details::find_at_key_or_optional<unsigned long,__CFString const* const&>(v7);
      v29 = v28;
      v30 = applesauce::CF::details::find_at_key_or_optional<unsigned long,__CFString const* const&>(v26);
      if (v31)
      {
        v32 = v30;
      }

      else
      {
        v32 = -1;
      }

      CFRelease(v26);
      CFRelease(v7);
      if ((v29 & 1) != 0 && v27 < v32)
      {
        v7 = *v24;
        *v24 = *v25;
        *v25 = 0;
        if (v25 == v6)
        {
          *v6 = v7;
        }

        else
        {
          v33 = v23;
          if (!v7)
          {
            v60 = *(v25 - 1);
            if (!v60)
            {
              goto LABEL_64;
            }

            goto LABEL_73;
          }

          while (1)
          {
            v34 = (v6 + v33);
            CFRetain(v7);
            v35 = *(v6 + v33 - 8);
            if (!v35)
            {
              goto LABEL_62;
            }

            CFRetain(*(v34 - 1));
            v36 = applesauce::CF::details::find_at_key_or_optional<unsigned long,__CFString const* const&>(v7);
            v38 = v37;
            v39 = applesauce::CF::details::find_at_key_or_optional<unsigned long,__CFString const* const&>(v35);
            v41 = (v40 & 1) != 0 ? v39 : -1;
            CFRelease(v35);
            CFRelease(v7);
            v42 = *v34;
            if ((v38 & 1) == 0 || v36 >= v41)
            {
              break;
            }

            *(v6 + v33) = *(v34 - 1);
            *(v34 - 1) = v42;
            v33 -= 8;
            if (!v33)
            {
              v43 = v6;
              goto LABEL_39;
            }
          }

          v43 = (v6 + v33);
LABEL_39:
          *v43 = v7;
          v5 = a2;
          if (v42)
          {
            CFRelease(v42);
          }
        }
      }

      v22 = v24 + 1;
      v23 += 8;
      if (v24 + 1 == v5)
      {
        return;
      }
    }
  }

  v18 = a4;
  v19 = a3 >> 1;
  v20 = &a1[a3 >> 1];
  if (a3 <= a5)
  {
    v62[0] = a4;
    v62[1] = &v63;
    v63 = 0;
    std::__stable_sort_move<std::_ClassicAlgPolicy,KB::CandidateFilterFactory::FilterStackDefinition::FilterStackDefinition(std::vector<applesauce::CF::ArrayRef> const&)::$_0 &,std::__wrap_iter<applesauce::CF::DictionaryRef *>>(a1, &a1[a3 >> 1], a3 >> 1, a4);
    v63 = a3 >> 1;
    v44 = &v18[v19];
    std::__stable_sort_move<std::_ClassicAlgPolicy,KB::CandidateFilterFactory::FilterStackDefinition::FilterStackDefinition(std::vector<applesauce::CF::ArrayRef> const&)::$_0 &,std::__wrap_iter<applesauce::CF::DictionaryRef *>>(&v6[a3 >> 1], v5, a3 - v19, v44);
    v63 = a3;
    v45 = &v18[a3];
    v46 = v44;
    while (v46 != v45)
    {
      v47 = *v46;
      if (!*v46)
      {
        v60 = *v18;
        if (!*v18)
        {
          goto LABEL_64;
        }

        goto LABEL_73;
      }

      CFRetain(*v46);
      v48 = *v18;
      if (!*v18)
      {
        v58 = v47;
LABEL_63:
        applesauce::CF::details::find_at_key_or_optional<unsigned long,__CFString const* const&>(v58);
LABEL_64:
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      CFRetain(*v18);
      v49 = applesauce::CF::details::find_at_key_or_optional<unsigned long,__CFString const* const&>(v47);
      v51 = v50;
      v52 = applesauce::CF::details::find_at_key_or_optional<unsigned long,__CFString const* const&>(v48);
      if (v53)
      {
        v54 = v52;
      }

      else
      {
        v54 = -1;
      }

      CFRelease(v48);
      CFRelease(v47);
      v55 = *v6;
      if ((v51 & 1) != 0 && v49 < v54)
      {
        *v6 = *v46;
        *v46++ = v55;
      }

      else
      {
        *v6 = *v18;
        *v18++ = v55;
      }

      ++v6;
      if (v18 == v44)
      {
        while (v46 != v45)
        {
          v57 = *v6;
          *v6++ = *v46;
          *v46++ = v57;
        }

        goto LABEL_61;
      }
    }

    while (v18 != v44)
    {
      v56 = *v6;
      *v6++ = *v18;
      *v18++ = v56;
    }

LABEL_61:
    std::unique_ptr<applesauce::CF::DictionaryRef,std::__destruct_n &>::~unique_ptr[abi:nn200100](v62);
  }

  else
  {
    std::__stable_sort<std::_ClassicAlgPolicy,KB::CandidateFilterFactory::FilterStackDefinition::FilterStackDefinition(std::vector<applesauce::CF::ArrayRef> const&)::$_0 &,std::__wrap_iter<applesauce::CF::DictionaryRef *>>(a1, &a1[a3 >> 1], a3 >> 1, a4, a5);
    v21 = a3 - v19;
    std::__stable_sort<std::_ClassicAlgPolicy,KB::CandidateFilterFactory::FilterStackDefinition::FilterStackDefinition(std::vector<applesauce::CF::ArrayRef> const&)::$_0 &,std::__wrap_iter<applesauce::CF::DictionaryRef *>>(v20, v5, v21, v18, a5);

    std::__inplace_merge<std::_ClassicAlgPolicy,KB::CandidateFilterFactory::FilterStackDefinition::FilterStackDefinition(std::vector<applesauce::CF::ArrayRef> const&)::$_0 &,std::__wrap_iter<applesauce::CF::DictionaryRef *>>(v6, v20, v5, v19, v21, v18, a5);
  }
}

void applesauce::CF::at_or<applesauce::CF::DictionaryRef>(void *a1, CFArrayRef theArray, unint64_t a3, void *a4)
{
  if (CFArrayGetCount(theArray) <= a3)
  {
    goto LABEL_8;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3);
  if (!ValueAtIndex)
  {
    goto LABEL_8;
  }

  v9 = ValueAtIndex;
  CFRetain(ValueAtIndex);
  v10 = CFGetTypeID(v9);
  if (v10 != CFDictionaryGetTypeID())
  {
    CFRelease(v9);
LABEL_8:
    *a1 = *a4;
    *a4 = 0;
    return;
  }

  CFRetain(v9);
  *a1 = v9;

  CFRelease(v9);
}

void extract_name(uint64_t a1, CFDictionaryRef theDict)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!theDict)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  Value = CFDictionaryGetValue(theDict, @"FilterName");
  if (!Value)
  {
    LOBYTE(__p[0]) = 0;
    v12 = 0;
    goto LABEL_7;
  }

  applesauce::CF::convert_as<std::string,0>(__p, Value);
  if ((v12 & 1) == 0)
  {
LABEL_7:
    std::string::basic_string[abi:nn200100]<0>(a1, "");
    v4 = v11 < 0;
    goto LABEL_8;
  }

  if ((SHIBYTE(v11) & 0x80000000) == 0)
  {
    *a1 = *__p;
    *(a1 + 16) = v11;
    goto LABEL_11;
  }

  std::string::__init_copy_ctor_external(a1, __p[0], __p[1]);
  v4 = 1;
LABEL_8:
  if (v12 == 1 && v4)
  {
    operator delete(__p[0]);
  }

LABEL_11:
  v5 = *(a1 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 8);
  }

  if (!v5)
  {
    v6 = filter_factory_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      KB::std_string(@"FilterName", __p);
      if (v11 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      *buf = 136315138;
      v14 = v8;
      _os_log_error_impl(&dword_22CA55000, v6, OS_LOG_TYPE_ERROR, "Filter specification must include key '%s' with string value.", buf, 0xCu);
      if (SHIBYTE(v11) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void applesauce::CF::at_or<char const(&)[1],__CFString const* const&>(std::string *a1, CFDictionaryRef theDict, void *key)
{
  if (!key || (Value = CFDictionaryGetValue(theDict, key)) == 0)
  {
    LOBYTE(__p[0]) = 0;
    v10 = 0;
    goto LABEL_7;
  }

  applesauce::CF::convert_as<std::string,0>(__p, Value);
  if ((v10 & 1) == 0)
  {
LABEL_7:
    std::string::basic_string[abi:nn200100]<0>(a1, "");
    v5 = v9 < 0;
    goto LABEL_8;
  }

  if ((SHIBYTE(v9) & 0x80000000) == 0)
  {
    *&a1->__r_.__value_.__l.__data_ = *__p;
    a1->__r_.__value_.__r.__words[2] = v9;
    return;
  }

  std::string::__init_copy_ctor_external(a1, __p[0], __p[1]);
  v5 = 1;
LABEL_8:
  if (v10 == 1 && v5)
  {
    v7 = __p[0];

    operator delete(v7);
  }
}

void *std::__hash_table<std::__hash_value_type<std::string,applesauce::CF::DictionaryRef>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,applesauce::CF::DictionaryRef>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,applesauce::CF::DictionaryRef>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,applesauce::CF::DictionaryRef>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v5, v6);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_24;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_24;
    }

LABEL_23:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_24;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v14 + 2, a2))
  {
    goto LABEL_23;
  }

  return v14;
}

void std::vector<applesauce::CF::DictionaryRef>::push_back[abi:nn200100](uint64_t *a1, CFTypeRef *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = (v4 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v8 = v3 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v11 = *a2;
    if (*a2)
    {
      CFRetain(*a2);
    }

    v12 = (8 * v7);
    v13 = *a1;
    v14 = a1[1];
    v15 = *a1 == v14;
    v16 = 8 * v7 + *a1 - v14;
    *v12 = v11;
    v6 = v12 + 1;
    if (!v15)
    {
      v17 = v13;
      v18 = v16;
      do
      {
        *v18++ = *v17;
        *v17++ = 0;
      }

      while (v17 != v14);
      do
      {
        if (*v13)
        {
          CFRelease(*v13);
        }

        ++v13;
      }

      while (v13 != v14);
      v13 = *a1;
    }

    *a1 = v16;
    a1[1] = v6;
    a1[2] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5 = *a2;
    if (*a2)
    {
      CFRetain(*a2);
    }

    *v4 = v5;
    v6 = v4 + 1;
  }

  a1[1] = v6;
}

double applesauce::CF::convert_as<std::string,0>(uint64_t a1, const __CFString *a2)
{
  if (a2 && (TypeID = CFStringGetTypeID(), TypeID == CFGetTypeID(a2)))
  {
    CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
    if (CStringPtr)
    {
      std::string::basic_string[abi:nn200100]<0>(&v10, CStringPtr);
    }

    else
    {
      Length = CFStringGetLength(a2);
      maxBufLen = 0;
      v13.location = 0;
      v13.length = Length;
      CFStringGetBytes(a2, v13, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
      v8 = maxBufLen;
      if (maxBufLen >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      if (maxBufLen >= 0x17)
      {
        operator new();
      }

      HIBYTE(v11) = maxBufLen;
      if (maxBufLen)
      {
        bzero(&v10, maxBufLen);
      }

      *(&v10 + v8) = 0;
      if (v11 >= 0)
      {
        v9 = &v10;
      }

      else
      {
        v9 = v10;
      }

      v14.location = 0;
      v14.length = Length;
      CFStringGetBytes(a2, v14, 0x8000100u, 0, 0, v9, maxBufLen, &maxBufLen);
    }

    result = *&v10;
    *a1 = v10;
    *(a1 + 16) = v11;
    *(a1 + 24) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
  }

  return result;
}

id filter_factory_log(void)
{
  if (filter_factory_log(void)::once_token != -1)
  {
    dispatch_once(&filter_factory_log(void)::once_token, &__block_literal_global_323);
  }

  v1 = filter_factory_log(void)::log;

  return v1;
}

uint64_t ___ZL18filter_factory_logv_block_invoke()
{
  filter_factory_log(void)::log = os_log_create("com.apple.TextInput", "candidateFilterFactory");

  return MEMORY[0x2821F96F8]();
}

unint64_t applesauce::CF::details::find_at_key_or_optional<unsigned long,__CFString const* const&>(const __CFDictionary *a1)
{
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, @"Position");
    if (Value)
    {
      v2 = Value;
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(v2))
      {
        switch(CFNumberGetType(v2))
        {
          case kCFNumberSInt8Type:
            LOBYTE(valuePtr) = 0;
            v4 = v2;
            v5 = kCFNumberSInt8Type;
            goto LABEL_27;
          case kCFNumberSInt16Type:
            LOWORD(valuePtr) = 0;
            v20 = v2;
            v21 = kCFNumberSInt16Type;
            goto LABEL_22;
          case kCFNumberSInt32Type:
            LODWORD(valuePtr) = 0;
            v18 = v2;
            v19 = kCFNumberSInt32Type;
            goto LABEL_40;
          case kCFNumberSInt64Type:
            valuePtr = 0.0;
            v10 = v2;
            v11 = kCFNumberSInt64Type;
            goto LABEL_35;
          case kCFNumberFloat32Type:
            LODWORD(valuePtr) = 0;
            v12 = v2;
            v13 = kCFNumberFloat32Type;
            goto LABEL_14;
          case kCFNumberFloat64Type:
            valuePtr = 0.0;
            v16 = v2;
            v17 = kCFNumberFloat64Type;
            goto LABEL_24;
          case kCFNumberCharType:
            LOBYTE(valuePtr) = 0;
            v4 = v2;
            v5 = kCFNumberCharType;
LABEL_27:
            v25 = CFNumberGetValue(v4, v5, &valuePtr);
            if (v25)
            {
              LOBYTE(v26) = LOBYTE(valuePtr);
            }

            else
            {
              LOBYTE(v26) = 0;
            }

            v27 = SLOBYTE(valuePtr) < 0 && v25 != 0;
            v28 = v27 << 63 >> 63;
            break;
          case kCFNumberShortType:
            LOWORD(valuePtr) = 0;
            v20 = v2;
            v21 = kCFNumberShortType;
LABEL_22:
            v22 = CFNumberGetValue(v20, v21, &valuePtr) == 0;
            v23 = LOBYTE(valuePtr);
            v24 = SLOWORD(valuePtr);
            goto LABEL_41;
          case kCFNumberIntType:
            LODWORD(valuePtr) = 0;
            v18 = v2;
            v19 = kCFNumberIntType;
LABEL_40:
            v22 = CFNumberGetValue(v18, v19, &valuePtr) == 0;
            v23 = LOBYTE(valuePtr);
            v24 = SLODWORD(valuePtr);
LABEL_41:
            v26 = v24 & 0xFFFFFFFFFFFFFF00 | v23;
            if (v22)
            {
              v26 = 0;
            }

            goto LABEL_44;
          case kCFNumberLongType:
            valuePtr = 0.0;
            v10 = v2;
            v11 = kCFNumberLongType;
            goto LABEL_35;
          case kCFNumberLongLongType:
            valuePtr = 0.0;
            v10 = v2;
            v11 = kCFNumberLongLongType;
            goto LABEL_35;
          case kCFNumberFloatType:
            LODWORD(valuePtr) = 0;
            v12 = v2;
            v13 = kCFNumberFloatType;
LABEL_14:
            v14 = CFNumberGetValue(v12, v13, &valuePtr) == 0;
            v15 = *&valuePtr;
            goto LABEL_36;
          case kCFNumberDoubleType:
            valuePtr = 0.0;
            v16 = v2;
            v17 = kCFNumberDoubleType;
            goto LABEL_24;
          case kCFNumberCFIndexType:
            valuePtr = 0.0;
            v10 = v2;
            v11 = kCFNumberCFIndexType;
            goto LABEL_35;
          case kCFNumberNSIntegerType:
            valuePtr = 0.0;
            v10 = v2;
            v11 = kCFNumberNSIntegerType;
LABEL_35:
            v14 = CFNumberGetValue(v10, v11, &valuePtr) == 0;
            v15 = *&valuePtr;
            goto LABEL_36;
          case kCFNumberCGFloatType:
            valuePtr = 0.0;
            v16 = v2;
            v17 = kCFNumberCGFloatType;
LABEL_24:
            v14 = CFNumberGetValue(v16, v17, &valuePtr) == 0;
            v15 = valuePtr;
LABEL_36:
            if (v14)
            {
              v26 = 0;
            }

            else
            {
              v26 = v15;
            }

LABEL_44:
            v28 = v26 >> 8;
            break;
          default:
            v28 = 0;
            LOBYTE(v26) = 0;
            break;
        }

        v9 = v26 | (v28 << 8);
      }

      else
      {
        v8 = CFBooleanGetTypeID();
        if (v8 == CFGetTypeID(v2))
        {
          v9 = CFBooleanGetValue(v2);
        }

        else
        {
          v9 = 0;
        }
      }

      v6 = v9 & 0xFFFFFFFFFFFFFF00;
      v7 = v9;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

uint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,KB::CandidateFilterFactory::FilterStackDefinition::FilterStackDefinition(std::vector<applesauce::CF::ArrayRef> const&)::$_0 &,std::__wrap_iter<applesauce::CF::DictionaryRef *>>(uint64_t *result, CFTypeRef *a2, unint64_t a3, uint64_t *a4)
{
  if (!a3)
  {
    return result;
  }

  v4 = a4;
  v7 = result;
  if (a3 == 2)
  {
    v60 = &v61;
    v61 = 0;
    v9 = a2 - 1;
    v8 = *(a2 - 1);
    if (!v8)
    {
LABEL_72:
      v55 = *v7;
      if (!*v7)
      {
        goto LABEL_71;
      }

      goto LABEL_70;
    }

    CFRetain(v8);
    v10 = *v7;
    if (*v7)
    {
      CFRetain(*v7);
      v11 = applesauce::CF::details::find_at_key_or_optional<unsigned long,__CFString const* const&>(v8);
      v13 = v12;
      v14 = applesauce::CF::details::find_at_key_or_optional<unsigned long,__CFString const* const&>(v10);
      if (v15)
      {
        v16 = v14;
      }

      else
      {
        v16 = -1;
      }

      v17 = v11 < v16;
      CFRelease(v10);
      CFRelease(v8);
      if ((v13 & v17) != 0)
      {
        v18 = v9;
      }

      else
      {
        v18 = v7;
      }

      if ((v13 & v17) != 0)
      {
        v19 = v7;
      }

      else
      {
        v19 = v9;
      }

      *v4 = *v18;
      *v18 = 0;
      v20 = v61;
      v4[1] = *v19;
      *v19 = 0;
      v21 = v20 + 1;
      goto LABEL_17;
    }

LABEL_67:
    v54 = v8;
LABEL_68:
    applesauce::CF::details::find_at_key_or_optional<unsigned long,__CFString const* const&>(v54);
    goto LABEL_71;
  }

  if (a3 == 1)
  {
    *a4 = *result;
    *result = 0;
    return result;
  }

  if (a3 > 8)
  {
    v44 = &result[a3 >> 1];
    std::__stable_sort<std::_ClassicAlgPolicy,KB::CandidateFilterFactory::FilterStackDefinition::FilterStackDefinition(std::vector<applesauce::CF::ArrayRef> const&)::$_0 &,std::__wrap_iter<applesauce::CF::DictionaryRef *>>(result, v44, a3 >> 1, a4, a3 >> 1);
    std::__stable_sort<std::_ClassicAlgPolicy,KB::CandidateFilterFactory::FilterStackDefinition::FilterStackDefinition(std::vector<applesauce::CF::ArrayRef> const&)::$_0 &,std::__wrap_iter<applesauce::CF::DictionaryRef *>>(&v7[a3 >> 1], a2, a3 - (a3 >> 1), &v4[a3 >> 1], a3 - (a3 >> 1));
    v60 = &v61;
    v61 = 0;
    if (v44 == a2)
    {
      v21 = 0;
LABEL_61:
      if (v7 == v44)
      {
        goto LABEL_18;
      }

      do
      {
        *v4++ = *v7;
        *v7++ = 0;
        ++v21;
      }

      while (v7 != v44);
LABEL_17:
      v61 = v21;
      goto LABEL_18;
    }

    v45 = &v7[a3 >> 1];
    while (1)
    {
      v46 = *v45;
      if (!*v45)
      {
        goto LABEL_72;
      }

      CFRetain(*v45);
      v47 = *v7;
      if (!*v7)
      {
        break;
      }

      CFRetain(*v7);
      v48 = applesauce::CF::details::find_at_key_or_optional<unsigned long,__CFString const* const&>(v46);
      v50 = v49;
      v51 = applesauce::CF::details::find_at_key_or_optional<unsigned long,__CFString const* const&>(v47);
      if (v52)
      {
        v53 = v51;
      }

      else
      {
        v53 = -1;
      }

      CFRelease(v47);
      CFRelease(v46);
      if ((v50 & 1) != 0 && v48 < v53)
      {
        *v4 = *v45;
        *v45++ = 0;
      }

      else
      {
        *v4 = *v7;
        *v7++ = 0;
      }

      v21 = ++v61;
      ++v4;
      if (v7 == v44)
      {
        if (v45 == a2)
        {
          goto LABEL_18;
        }

        do
        {
          *v4++ = *v45;
          *v45++ = 0;
          ++v21;
        }

        while (v45 != a2);
        goto LABEL_17;
      }

      if (v45 == a2)
      {
        goto LABEL_61;
      }
    }

    v54 = v46;
    goto LABEL_68;
  }

  if (result != a2)
  {
    v59 = a4;
    v60 = &v61;
    *a4 = *result;
    *result = 0;
    v22 = (result + 1);
    v61 = 1;
    if (result + 1 == a2)
    {
      goto LABEL_18;
    }

    v23 = 0;
    v24 = a4;
    while (1)
    {
      v8 = *v22;
      if (!*v22)
      {
        break;
      }

      CFRetain(*v22);
      v25 = *v24;
      if (!*v24)
      {
        goto LABEL_67;
      }

      v58 = v24 + 1;
      CFRetain(v25);
      v26 = applesauce::CF::details::find_at_key_or_optional<unsigned long,__CFString const* const&>(v8);
      v28 = v27;
      v29 = applesauce::CF::details::find_at_key_or_optional<unsigned long,__CFString const* const&>(v25);
      if (v30)
      {
        v31 = v29;
      }

      else
      {
        v31 = -1;
      }

      CFRelease(v25);
      CFRelease(v8);
      if ((v28 & 1) == 0 || v26 >= v31)
      {
        ++v24;
        *v58 = *v22;
        *v22 = 0;
        ++v61;
        goto LABEL_45;
      }

      v32 = *v24;
      *v24 = 0;
      v24[1] = v32;
      ++v61;
      v33 = v4;
      if (v24 == v4)
      {
        goto LABEL_44;
      }

      v34 = v23;
      while (1)
      {
        v35 = v4 + v34;
        v8 = *v22;
        if (!*v22)
        {
          v55 = *(v35 - 1);
          if (v55)
          {
            goto LABEL_70;
          }

LABEL_71:
          exception = __cxa_allocate_exception(0x10uLL);
          applesauce::CF::construct_error(exception);
        }

        CFRetain(*v22);
        v36 = *(v35 - 1);
        if (!v36)
        {
          goto LABEL_67;
        }

        CFRetain(*(v35 - 1));
        v37 = applesauce::CF::details::find_at_key_or_optional<unsigned long,__CFString const* const&>(v8);
        v39 = v38;
        v40 = applesauce::CF::details::find_at_key_or_optional<unsigned long,__CFString const* const&>(v36);
        v42 = (v41 & 1) != 0 ? v40 : -1;
        CFRelease(v36);
        CFRelease(v8);
        if ((v39 & 1) == 0 || v37 >= v42)
        {
          break;
        }

        *(v35 - 8) = vextq_s8(*(v35 - 8), *(v35 - 8), 8uLL);
        v34 -= 8;
        if (!v34)
        {
          v33 = v4;
          goto LABEL_44;
        }
      }

      v33 = (v4 + v34);
LABEL_44:
      v43 = *v33;
      *v33 = *v22;
      *v22 = v43;
      v24 = v58;
LABEL_45:
      ++v22;
      v23 += 8;
      if (v22 == a2)
      {
LABEL_18:
        v59 = 0;
        return std::unique_ptr<applesauce::CF::DictionaryRef,std::__destruct_n &>::~unique_ptr[abi:nn200100](&v59);
      }
    }

    v55 = *v24;
    if (!*v24)
    {
      goto LABEL_71;
    }

LABEL_70:
    CFRetain(v55);
    goto LABEL_71;
  }

  return result;
}

uint64_t *std::unique_ptr<applesauce::CF::DictionaryRef,std::__destruct_n &>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    v4 = *v3;
    if (*v3)
    {
      v5 = 0;
      do
      {
        v6 = *(v2 + 8 * v5);
        if (v6)
        {
          CFRelease(v6);
          v4 = *v3;
        }

        ++v5;
      }

      while (v5 < v4);
    }
  }

  return a1;
}

void std::__inplace_merge<std::_ClassicAlgPolicy,KB::CandidateFilterFactory::FilterStackDefinition::FilterStackDefinition(std::vector<applesauce::CF::ArrayRef> const&)::$_0 &,std::__wrap_iter<applesauce::CF::DictionaryRef *>>(CFTypeRef *a1, CFTypeRef *a2, CFTypeRef *a3, uint64_t a4, uint64_t a5, CFTypeRef *a6, uint64_t a7)
{
  v99 = a5;
  if (!a5)
  {
    return;
  }

  do
  {
    if (v99 <= a7 || a4 <= a7)
    {
      v107[0] = a6;
      v107[1] = &v108;
      v108 = 0;
      if (a4 <= v99)
      {
        if (a2 != a1)
        {
          v71 = 0;
          v72 = a6;
          v73 = a1;
          do
          {
            v74 = v72;
            *v72++ = *v73;
            *v73++ = 0;
            ++v71;
          }

          while (v73 != a2);
          v108 = v71;
          while (a2 != a3)
          {
            v12 = *a2;
            if (!*a2)
            {
              v93 = *a6;
              if (*a6)
              {
                goto LABEL_114;
              }

LABEL_115:
              exception = __cxa_allocate_exception(0x10uLL);
              applesauce::CF::construct_error(exception);
            }

            v75 = a2;
            v76 = a3;
            CFRetain(v12);
            v77 = *a6;
            if (!*a6)
            {
LABEL_111:
              v92 = v12;
LABEL_112:
              applesauce::CF::details::find_at_key_or_optional<unsigned long,__CFString const* const&>(v92);
              goto LABEL_115;
            }

            v78 = a6;
            CFRetain(*a6);
            v106 = applesauce::CF::details::find_at_key_or_optional<unsigned long,__CFString const* const&>(v12);
            v80 = v79;
            v81 = applesauce::CF::details::find_at_key_or_optional<unsigned long,__CFString const* const&>(v77);
            if (v82)
            {
              v83 = v81;
            }

            else
            {
              v83 = -1;
            }

            CFRelease(v77);
            CFRelease(v12);
            v84 = *a1;
            if ((v80 & 1) != 0 && v106 < v83)
            {
              *a1 = *v75;
              *v75++ = v84;
              a6 = v78;
            }

            else
            {
              *a1 = *v78;
              *v78 = v84;
              a6 = v78 + 1;
            }

            ++a1;
            a3 = v76;
            a2 = v75;
            if (a6 == v72)
            {
              goto LABEL_109;
            }
          }

          v89 = a6 - 1;
          do
          {
            v90 = *a1;
            v91 = v89[1];
            ++v89;
            *a1++ = v91;
            *v89 = v90;
          }

          while (v89 != v74);
        }
      }

      else if (a2 != a3)
      {
        v56 = 0;
        v57 = a6;
        v58 = a2;
        do
        {
          *v57++ = *v58;
          *v58++ = 0;
          ++v56;
        }

        while (v58 != a3);
        v108 = v56;
        while (a2 != a1)
        {
          v103 = a2;
          v26 = a2 - 1;
          v12 = *(v57 - 1);
          if (!v12)
          {
LABEL_116:
            v93 = *v26;
            if (!*v26)
            {
              goto LABEL_115;
            }

LABEL_114:
            CFRetain(v93);
            goto LABEL_115;
          }

          v59 = a6;
          CFRetain(*(v57 - 1));
          v60 = *v26;
          if (!*v26)
          {
            goto LABEL_111;
          }

          CFRetain(*v26);
          v61 = applesauce::CF::details::find_at_key_or_optional<unsigned long,__CFString const* const&>(v12);
          v105 = v62;
          v63 = applesauce::CF::details::find_at_key_or_optional<unsigned long,__CFString const* const&>(v60);
          if (v64)
          {
            v65 = v63;
          }

          else
          {
            v65 = -1;
          }

          v66 = v61 < v65;
          CFRelease(v60);
          CFRelease(v12);
          v68 = *--a3;
          v67 = v68;
          v69 = v103;
          if ((v105 & v66) != 0)
          {
            v70 = v103;
          }

          else
          {
            v70 = v57;
          }

          if ((v105 & v66) != 0)
          {
            v69 = v26;
          }

          else
          {
            --v57;
          }

          *a3 = *(v70 - 1);
          *(v70 - 1) = v67;
          a6 = v59;
          a2 = v69;
          if (v57 == a6)
          {
            goto LABEL_109;
          }
        }

        if (v57 != a6)
        {
          v86 = 0x1FFFFFFFFFFFFFFFLL;
          do
          {
            v87 = *--v57;
            v88 = a3[v86];
            a3[v86] = v87;
            *v57 = v88;
            --v86;
          }

          while (v57 != a6);
        }
      }

LABEL_109:
      std::unique_ptr<applesauce::CF::DictionaryRef,std::__destruct_n &>::~unique_ptr[abi:nn200100](v107);
      return;
    }

    if (!a4)
    {
      return;
    }

    while (1)
    {
      v12 = *a2;
      if (!*a2)
      {
        v93 = *a1;
        if (!*a1)
        {
          goto LABEL_115;
        }

        goto LABEL_114;
      }

      CFRetain(*a2);
      v13 = *a1;
      if (!*a1)
      {
        goto LABEL_111;
      }

      CFRetain(*a1);
      v14 = applesauce::CF::details::find_at_key_or_optional<unsigned long,__CFString const* const&>(v12);
      v16 = v15;
      v17 = applesauce::CF::details::find_at_key_or_optional<unsigned long,__CFString const* const&>(v13);
      v19 = (v18 & 1) != 0 ? v17 : -1;
      CFRelease(v13);
      CFRelease(v12);
      if ((v16 & 1) != 0 && v14 < v19)
      {
        break;
      }

      ++a1;
      if (!--a4)
      {
        return;
      }
    }

    v102 = a2;
    if (a4 >= v99)
    {
      if (a4 == 1)
      {
        v85 = *a1;
        *a1 = 0;
        *a1 = *a2;
        *a2 = v85;
        return;
      }

      v36 = a4 / 2;
      v22 = &a1[a4 / 2];
      v21 = a2;
      if (a2 == a3)
      {
LABEL_46:
        v20 = v21 - a2;
        v23 = a7;
        goto LABEL_47;
      }

      v96 = a3;
      v101 = &a1[a4 / 2];
      v98 = a6;
      v37 = a3 - a2;
      v21 = a2;
      while (1)
      {
        v38 = &v21[v37 >> 1];
        v12 = *v38;
        if (!*v38)
        {
          break;
        }

        CFRetain(*v38);
        v39 = *v101;
        if (!*v101)
        {
          goto LABEL_111;
        }

        CFRetain(*v101);
        v40 = applesauce::CF::details::find_at_key_or_optional<unsigned long,__CFString const* const&>(v12);
        v42 = v41;
        v43 = applesauce::CF::details::find_at_key_or_optional<unsigned long,__CFString const* const&>(v39);
        if (v44)
        {
          v45 = v43;
        }

        else
        {
          v45 = -1;
        }

        v46 = v40 < v45;
        CFRelease(v39);
        CFRelease(v12);
        if ((v42 & v46) != 0)
        {
          v37 += ~(v37 >> 1);
        }

        else
        {
          v37 >>= 1;
        }

        if ((v42 & v46) != 0)
        {
          v21 = v38 + 1;
        }

        a2 = v102;
        if (!v37)
        {
          a3 = v96;
          a6 = v98;
          v22 = &a1[a4 / 2];
          v36 = a4 / 2;
          goto LABEL_46;
        }
      }

      v93 = *v101;
      if (*v101)
      {
        goto LABEL_114;
      }

      goto LABEL_115;
    }

    v20 = v99 / 2;
    v21 = &a2[v99 / 2];
    v22 = a2;
    v23 = a7;
    if (a2 == a1)
    {
      goto LABEL_30;
    }

    v95 = a3;
    v100 = &a2[v99 / 2];
    v97 = a6;
    v24 = a2 - a1;
    v22 = a1;
    while (2)
    {
      v25 = v22;
      v26 = &v22[v24 >> 1];
      v27 = *v100;
      if (!*v100)
      {
        goto LABEL_116;
      }

      CFRetain(*v100);
      v28 = *v26;
      if (!*v26)
      {
        v92 = v27;
        goto LABEL_112;
      }

      CFRetain(*v26);
      v29 = applesauce::CF::details::find_at_key_or_optional<unsigned long,__CFString const* const&>(v27);
      v31 = v30;
      v32 = applesauce::CF::details::find_at_key_or_optional<unsigned long,__CFString const* const&>(v28);
      if (v33)
      {
        v34 = v32;
      }

      else
      {
        v34 = -1;
      }

      v35 = v29 < v34;
      CFRelease(v28);
      CFRelease(v27);
      if ((v31 & v35) != 0)
      {
        v22 = v25;
      }

      else
      {
        v22 = v26 + 1;
      }

      if ((v31 & v35) != 0)
      {
        v24 >>= 1;
      }

      else
      {
        v24 += ~(v24 >> 1);
      }

      v23 = a7;
      if (v24)
      {
        continue;
      }

      break;
    }

    a3 = v95;
    a6 = v97;
    v21 = v100;
    a2 = v102;
    v20 = v99 / 2;
LABEL_30:
    v36 = v22 - a1;
LABEL_47:
    v47 = v21;
    if (v22 != a2)
    {
      v47 = v22;
      if (a2 != v21)
      {
        v48 = *v22;
        *v22 = 0;
        *v22 = *a2;
        v47 = v22 + 1;
        for (i = a2; ; *v47++ = *i)
        {
          *i++ = v48;
          if (i == v21)
          {
            break;
          }

          if (v47 == a2)
          {
            a2 = i;
          }

          v48 = *v47;
          *v47 = 0;
        }

        if (v47 != a2)
        {
          v50 = v47;
          v51 = a2;
          do
          {
            while (1)
            {
              v52 = *v50;
              *v50 = 0;
              *v50++ = *v51;
              *v51++ = v52;
              if (v51 == v21)
              {
                break;
              }

              if (v50 == a2)
              {
                a2 = v51;
              }
            }

            v51 = a2;
          }

          while (v50 != a2);
        }
      }
    }

    a4 -= v36;
    v53 = v99 - v20;
    if (v36 + v20 >= a4 + v99 - v20)
    {
      v54 = a3;
      v55 = v20;
      std::__inplace_merge<std::_ClassicAlgPolicy,KB::CandidateFilterFactory::FilterStackDefinition::FilterStackDefinition(std::vector<applesauce::CF::ArrayRef> const&)::$_0 &,std::__wrap_iter<applesauce::CF::DictionaryRef *>>(v47, v21, v54, a4, v99 - v20, a6, v23);
      v21 = v22;
      v53 = v55;
      a4 = v36;
      a3 = v47;
    }

    else
    {
      std::__inplace_merge<std::_ClassicAlgPolicy,KB::CandidateFilterFactory::FilterStackDefinition::FilterStackDefinition(std::vector<applesauce::CF::ArrayRef> const&)::$_0 &,std::__wrap_iter<applesauce::CF::DictionaryRef *>>(a1, v22, v47, v36, v20, a6, v23);
      a1 = v47;
    }

    a2 = v21;
    v99 = v53;
  }

  while (v53);
}