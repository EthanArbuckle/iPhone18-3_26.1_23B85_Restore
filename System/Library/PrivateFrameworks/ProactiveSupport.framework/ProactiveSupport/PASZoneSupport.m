@interface PASZoneSupport
@end

@implementation PASZoneSupport

void __50___PASZoneSupport_deepCopyObject_toZone_strategy___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = a3;
  v9 = [v5 deepCopyObject:a2 toZone:v6 strategy:0];
  v8 = [*(a1 + 40) deepCopyObject:v7 toZone:*(a1 + 48) strategy:*(a1 + 56)];

  [*(a1 + 32) _pas_setObject:v8 forNonCopiedKey:v9];
}

@end