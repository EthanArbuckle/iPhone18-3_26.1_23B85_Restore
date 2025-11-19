@interface NSArray
@end

@implementation NSArray

BOOL __38__NSArray_FormField___fieldsOfSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 conformsToProtocol:&unk_1F2C0BF90] & 1) == 0)
  {

    v4 = 0;
    goto LABEL_5;
  }

  v4 = v3;

  if (!v4)
  {
LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v5 = [v4 fieldSource] == *(a1 + 32);
LABEL_6:

  return v5;
}

BOOL __36__NSArray_FormField___fieldsOfType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 conformsToProtocol:&unk_1F2C0BF90] & 1) == 0)
  {

    v4 = 0;
    goto LABEL_5;
  }

  v4 = v3;

  if (!v4)
  {
LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v5 = [v4 fieldType] == *(a1 + 32);
LABEL_6:

  return v5;
}

BOOL __38__NSArray_FormField___nonFieldRegions__block_invoke(uint64_t a1, void *a2)
{
  v2 = CRCastAsClass<CROutputRegion>(a2);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 type] != 0x2000;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end