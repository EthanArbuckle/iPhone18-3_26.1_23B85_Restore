@interface StringToDictionaryRepresentation
@end

@implementation StringToDictionaryRepresentation

void ___StringToDictionaryRepresentation_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = a2;
  v6 = [v16 isEqualToString:&stru_1F1741150];
  v7 = v16;
  if ((v6 & 1) == 0)
  {
    v8 = [v16 componentsSeparatedByString:@"="];
    if ([v8 count] == 2)
    {
      v9 = [v8 objectAtIndexedSubscript:0];
      v10 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:v9];

      if (v10)
      {
        v14 = [MEMORY[0x1E696AAA8] currentHandler];
        v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSDictionary<NSString *, id> * _Nullable _StringToDictionaryRepresentation(NSString *__strong)_block_invoke"}];
        [v14 handleFailureInFunction:v15 file:@"PXCPLStatus_Serialization.m" lineNumber:152 description:{@"Invalid parameter not satisfying: %@", @"dictionaryRepresentation[key] == nil"}];
      }

      v11 = [v8 objectAtIndexedSubscript:1];
      [*(*(*(a1 + 32) + 8) + 40) setObject:v11 forKeyedSubscript:v9];
    }

    else
    {
      v12 = *(*(a1 + 32) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = 0;

      *a4 = 1;
    }

    v7 = v16;
  }
}

@end