@interface PK
@end

@implementation PK

void __33__PK_ipp_attribute_t_loggingDict__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 loggingValue:{objc_msgSend(*(a1 + 32), "value_tag")}];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"<nil for value tag>";
  }

  [*(a1 + 40) addObject:v4];
}

void __33__PK_ipp_t_userCodableDictionary__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 loggingDict];
  [v2 addObject:?];
}

uint64_t __61__PK_ipp_t_replaceOrAddAttribute_withAttribute_settingGroup___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

uint64_t __39__PK_ipp_t__addRange_name_lower_upper___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __39__PK_ipp_t__addRange_name_lower_upper___block_invoke_2;
  v3[3] = &__block_descriptor_40_e24_v16__0__PK_ipp_value_t_8l;
  v3[4] = *(a1 + 32);
  return [a2 withNewEmptyValue:v3];
}

void __35__PK_ipp_t__addRanges_name_values___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__PK_ipp_t__addRanges_name_values___block_invoke_2;
  v6[3] = &unk_279A90038;
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void __35__PK_ipp_t__addRanges_name_values___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 rangeValue];
  v5 = v4 + 1;
  v7 = v4 + v6;
  v8 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3321888768;
  v9[2] = __35__PK_ipp_t__addRanges_name_values___block_invoke_3;
  v9[3] = &__block_descriptor_40_ea8_32c23_ZTS17ipp_value_range_t_e24_v16__0__PK_ipp_value_t_8l;
  v10 = v5;
  v11 = v7;
  [v8 withNewEmptyValue:v9];
}

uint64_t __35__PK_ipp_t__addBoolean_name_value___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __35__PK_ipp_t__addBoolean_name_value___block_invoke_2;
  v3[3] = &__block_descriptor_33_e24_v16__0__PK_ipp_value_t_8l;
  v4 = *(a1 + 32);
  return [a2 withNewEmptyValue:v3];
}

uint64_t __44__PK_ipp_t__addInteger_valueTag_name_value___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__PK_ipp_t__addInteger_valueTag_name_value___block_invoke_2;
  v3[3] = &__block_descriptor_36_e24_v16__0__PK_ipp_value_t_8l;
  v4 = *(a1 + 32);
  return [a2 withNewEmptyValue:v3];
}

void __50__PK_ipp_t__addStrings_valueTag_name_lang_values___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v8 = *(a1 + 40);
        if (v8)
        {
          v9 = v8;
        }

        v10 = *(a1 + 48);
        if (v10 == 72)
        {
          v11 = ipp_lang_code(v7);
        }

        else if (v10 == 71)
        {
          v11 = [(NSString *)v7 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
        }

        else
        {
          v11 = v7;
        }

        v12 = v11;
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3321888768;
        v16[2] = __50__PK_ipp_t__addStrings_valueTag_name_lang_values___block_invoke_2;
        v16[3] = &__block_descriptor_48_ea8_32c24_ZTS18ipp_value_string_t_e24_v16__0__PK_ipp_value_t_8l;
        v13 = v8;
        v17 = v13;
        v14 = v12;
        v18 = v14;
        [v3 withNewEmptyValue:v16];
      }

      v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v4);
  }
}

void __50__PK_ipp_t__addStrings_valueTag_name_lang_values___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v5)
  {
    [v5 setString:{v3, v4}];
  }

  else
  {
  }
}

void __38__PK_ipp_t__addCollection_name_value___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __38__PK_ipp_t__addCollection_name_value___block_invoke_2;
  v3[3] = &unk_279A90130;
  v4 = *(a1 + 32);
  [a2 withNewEmptyValue:v3];
}

uint64_t __47__PK_ipp_t__addResolution_name_unit_xres_yres___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__PK_ipp_t__addResolution_name_unit_xres_yres___block_invoke_2;
  v3[3] = &__block_descriptor_44_e24_v16__0__PK_ipp_value_t_8l;
  v3[4] = *(a1 + 32);
  v4 = *(a1 + 40);
  return [a2 withNewEmptyValue:v3];
}

uint64_t __45__PK_ipp_t__addOctetString_name_data_length___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__PK_ipp_t__addOctetString_name_data_length___block_invoke_2;
  v3[3] = &__block_descriptor_44_e24_v16__0__PK_ipp_value_t_8l;
  v3[4] = *(a1 + 32);
  v4 = *(a1 + 40);
  return [a2 withNewEmptyValue:v3];
}

void __45__PK_ipp_t__addOctetString_name_data_length___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [MEMORY[0x277CBEA90] dataWithBytes:*(a1 + 32) length:*(a1 + 40)];
  [v4 setUnknown:v3];
}

void __51__PK_ipp_t__addIntegers_valueTag_name_count_adder___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) && *(a1 + 40))
  {
    v4 = 0;
    v5 = MEMORY[0x277D85DD0];
    do
    {
      v6[0] = v5;
      v6[1] = 3221225472;
      v6[2] = __51__PK_ipp_t__addIntegers_valueTag_name_count_adder___block_invoke_2;
      v6[3] = &unk_279A90198;
      v7 = *(a1 + 32);
      v8 = v4;
      [v3 withNewEmptyValue:v6];

      ++v4;
    }

    while (*(a1 + 40) > v4);
  }
}

void __51__PK_ipp_t__addIntegers_valueTag_name_count_adder___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setInteger:(*(*(a1 + 32) + 16))()];
}

void __37__PK_ipp_t__findAttribute0_valueTag___block_invoke(uint64_t a1, void *a2, BOOL *a3)
{
  v11 = a2;
  v6 = [v11 name];
  *a3 = [v6 caseInsensitiveCompare:*(a1 + 32)] == 0;

  if (*a3)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    if (*(a1 + 48))
    {
      v7 = [v11 value_tag];
      v8 = *(a1 + 48);
      if (v7 != v8 && (v7 != 53 || v8 != 65) && (v7 != 65 || v8 != 53))
      {
        v9 = *(*(a1 + 40) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = 0;
      }
    }
  }
}

void __39__PK_ipp_collection_t_debugDescription__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v4 = *(a1 + 32);
    v5 = [v3 loggingDict];
    [v4 addObject:v5];
  }

  else
  {
    v6 = [v3 name];
    v7 = *(*(a1 + 40) + 8);
    v5 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

@end