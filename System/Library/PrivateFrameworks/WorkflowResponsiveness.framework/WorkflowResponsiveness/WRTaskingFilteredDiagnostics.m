@interface WRTaskingFilteredDiagnostics
@end

@implementation WRTaskingFilteredDiagnostics

void ___WRTaskingFilteredDiagnostics_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v7];
  if (!v6 || ([v5 isEqual:v6] & 1) == 0)
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v7];
  }
}

void ___WRTaskingFilteredDiagnostics_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v8];
  if (!v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = &unk_28838A6F8;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_7;
      }

      v7 = &stru_288387A58;
    }

    [*(a1 + 40) setObject:v7 forKeyedSubscript:v8];
  }

LABEL_7:
}

@end