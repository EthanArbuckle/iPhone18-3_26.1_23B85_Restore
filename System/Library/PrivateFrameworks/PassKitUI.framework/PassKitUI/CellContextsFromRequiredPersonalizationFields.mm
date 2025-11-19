@interface CellContextsFromRequiredPersonalizationFields
@end

@implementation CellContextsFromRequiredPersonalizationFields

id ___CellContextsFromRequiredPersonalizationFields_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  if (v2)
  {
    v3 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:v2 style:2 options:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void ___CellContextsFromRequiredPersonalizationFields_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 name];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  }

  v14 = v8;

  v9 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v10 = [v5 componentsSeparatedByCharactersInSet:v9];

  if ([v10 count])
  {
    v11 = [v10 objectAtIndexedSubscript:0];
  }

  else
  {
    v11 = 0;
  }

  if ([v10 count] < 2)
  {
    v13 = 0;
  }

  else
  {
    v12 = [v10 pk_arrayByRemovingObject:v11];
    v13 = [v12 componentsJoinedByString:@" "];
  }

  [v14 setGivenName:v11];
  [v14 setFamilyName:v13];
  [v4 setName:v14];
}

id ___CellContextsFromRequiredPersonalizationFields_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 postalAddress];
  v3 = [v2 postalCode];

  return v3;
}

void ___CellContextsFromRequiredPersonalizationFields_block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 postalAddress];
  v7 = [v6 dictionaryRepresentation];
  v8 = v7;
  if (!v7)
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  v10 = [v7 mutableCopy];

  [v10 setObject:v5 forKeyedSubscript:*MEMORY[0x1E695CC18]];
  v9 = [MEMORY[0x1E695CF60] postalAddressWithDictionaryRepresentation:v10];
  [v4 setPostalAddress:v9];
}

id ___CellContextsFromRequiredPersonalizationFields_block_invoke_7(uint64_t a1, void *a2)
{
  v2 = [a2 phoneNumber];
  v3 = [v2 formattedStringValue];

  return v3;
}

void ___CellContextsFromRequiredPersonalizationFields_block_invoke_8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1E695CF50];
  v5 = a3;
  v6 = [v4 phoneNumberWithStringValue:a2];
  [v5 setPhoneNumber:v6];
}

@end