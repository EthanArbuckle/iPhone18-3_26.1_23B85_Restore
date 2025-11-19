@interface POXSDefinitions
+ (id)definitionForType:(Class)a3;
@end

@implementation POXSDefinitions

+ (id)definitionForType:(Class)a3
{
  if (definitionForType__predicate != -1)
  {
    +[POXSDefinitions definitionForType:];
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  if (!a3)
  {
    goto LABEL_10;
  }

LABEL_3:
  v4 = definitionForType__definitions;
  objc_sync_enter(v4);
  v5 = [definitionForType__definitions objectForKey:a3];
  if (!v5)
  {
    if ([(objc_class *)a3 conformsToProtocol:&unk_2870AA6E8])
    {
      v5 = [(objc_class *)a3 definition];
      if (v5)
      {
        [definitionForType__definitions setObject:v5 forKey:a3];
      }
    }

    else
    {
      v5 = 0;
    }
  }

  objc_sync_exit(v4);

LABEL_11:

  return v5;
}

uint64_t __37__POXSDefinitions_definitionForType___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
  v1 = definitionForType__definitions;
  definitionForType__definitions = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end