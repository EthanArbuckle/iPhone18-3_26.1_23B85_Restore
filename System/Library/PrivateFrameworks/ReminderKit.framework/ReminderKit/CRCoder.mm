@interface CRCoder
+ (void)_registerClass:(Class)a3 forType:(id)a4 cluster:(BOOL)a5;
+ (void)registerCRClasses;
+ (void)registerClass:(Class)a3 forType:(id)a4;
- (unint64_t)typeIndexForClass:(Class)a3;
@end

@implementation CRCoder

+ (void)registerCRClasses
{
  if (!sTypeSet)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v4 = sTypeSet;
    sTypeSet = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v6 = sClusterTypes;
    sClusterTypes = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = sTypeToClassDict;
    sTypeToClassDict = v7;

    [a1 _registerClass:objc_opt_class() forType:@"com.apple.CRDT.NSNumber" cluster:1];
    [a1 _registerClass:objc_opt_class() forType:@"com.apple.CRDT.NSString" cluster:1];
    [a1 _registerClass:objc_opt_class() forType:@"com.apple.CRDT.NSUUID" cluster:1];
    [a1 _registerClass:objc_opt_class() forType:@"com.apple.CRDT.CRRegisterMultiValueLeast" cluster:0];
    v9 = objc_opt_class();

    [a1 _registerClass:v9 forType:@"com.apple.CRDT.CRRegisterMultiValue" cluster:0];
  }
}

+ (void)registerClass:(Class)a3 forType:(id)a4
{
  v6 = a4;
  [a1 registerCRClasses];
  [a1 _registerClass:a3 forType:v6 cluster:0];
}

+ (void)_registerClass:(Class)a3 forType:(id)a4 cluster:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  [sTypeToClassDict setObject:a3 forKeyedSubscript:?];
  if (v5)
  {
    [sClusterTypes addObject:v7];
  }

  else
  {
    [sClusterTypes removeObject:v7];
  }

  [sTypeSet addObject:v7];
}

- (unint64_t)typeIndexForClass:(Class)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [(CRCoder *)self typeSet];
  v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = *v18;
LABEL_3:
    v8 = 0;
    v15 = v6 + v5;
    while (1)
    {
      if (*v18 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v17 + 1) + 8 * v8);
      v10 = [(CRCoder *)self typeToClassDict];
      v11 = [v10 objectForKeyedSubscript:v9];

      v12 = [sClusterTypes containsObject:v9] ? -[objc_class isSubclassOfClass:](a3, "isSubclassOfClass:", v11) : -[objc_class isEqual:](a3, "isEqual:", v11);
      if (v12)
      {
        break;
      }

      ++v6;
      if (v5 == ++v8)
      {
        v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
        v6 = v15;
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

@end