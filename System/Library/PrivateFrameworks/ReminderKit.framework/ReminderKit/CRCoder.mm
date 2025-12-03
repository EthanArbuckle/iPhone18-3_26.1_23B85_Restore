@interface CRCoder
+ (void)_registerClass:(Class)class forType:(id)type cluster:(BOOL)cluster;
+ (void)registerCRClasses;
+ (void)registerClass:(Class)class forType:(id)type;
- (unint64_t)typeIndexForClass:(Class)class;
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

    [self _registerClass:objc_opt_class() forType:@"com.apple.CRDT.NSNumber" cluster:1];
    [self _registerClass:objc_opt_class() forType:@"com.apple.CRDT.NSString" cluster:1];
    [self _registerClass:objc_opt_class() forType:@"com.apple.CRDT.NSUUID" cluster:1];
    [self _registerClass:objc_opt_class() forType:@"com.apple.CRDT.CRRegisterMultiValueLeast" cluster:0];
    v9 = objc_opt_class();

    [self _registerClass:v9 forType:@"com.apple.CRDT.CRRegisterMultiValue" cluster:0];
  }
}

+ (void)registerClass:(Class)class forType:(id)type
{
  typeCopy = type;
  [self registerCRClasses];
  [self _registerClass:class forType:typeCopy cluster:0];
}

+ (void)_registerClass:(Class)class forType:(id)type cluster:(BOOL)cluster
{
  clusterCopy = cluster;
  typeCopy = type;
  [sTypeToClassDict setObject:class forKeyedSubscript:?];
  if (clusterCopy)
  {
    [sClusterTypes addObject:typeCopy];
  }

  else
  {
    [sClusterTypes removeObject:typeCopy];
  }

  [sTypeSet addObject:typeCopy];
}

- (unint64_t)typeIndexForClass:(Class)class
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
      typeToClassDict = [(CRCoder *)self typeToClassDict];
      v11 = [typeToClassDict objectForKeyedSubscript:v9];

      v12 = [sClusterTypes containsObject:v9] ? -[objc_class isSubclassOfClass:](class, "isSubclassOfClass:", v11) : -[objc_class isEqual:](class, "isEqual:", v11);
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