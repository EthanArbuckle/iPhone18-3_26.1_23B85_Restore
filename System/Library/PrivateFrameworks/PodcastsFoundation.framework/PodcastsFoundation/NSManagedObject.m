@interface NSManagedObject
@end

@implementation NSManagedObject

void __87__NSManagedObject_MTAdditions__dictionaryRepresentationWithNullAttributeValueProvider___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = [v6 name];
  v5 = [*(a1 + 32) valueForKey:v4];
  if (v5)
  {
    goto LABEL_2;
  }

  v5 = (*(*(a1 + 48) + 16))();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_4;
  }

  if (v5)
  {
LABEL_2:
    [*(a1 + 40) setObject:v5 forKey:v4];
LABEL_4:
  }
}

@end