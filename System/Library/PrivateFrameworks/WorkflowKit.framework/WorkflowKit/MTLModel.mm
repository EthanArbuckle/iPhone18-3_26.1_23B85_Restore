@interface MTLModel
+ (id)allowedSecureCodingClassesByPropertyKey;
+ (id)encodingBehaviorsByPropertyKey;
+ (id)modelWithDictionary:(id)a3 error:(id *)a4;
+ (id)permanentPropertyKeys;
+ (id)propertyKeys;
+ (id)transitoryPropertyKeys;
+ (unint64_t)storageBehaviorForPropertyWithKey:(id)a3;
+ (void)enumeratePropertiesUsingBlock:(id)a3;
+ (void)generateAndCacheStorageBehaviors;
- (BOOL)isEqual:(id)a3;
- (BOOL)validate:(id *)a3;
- (MTLModel)init;
- (MTLModel)initWithCoder:(id)a3;
- (MTLModel)initWithDictionary:(id)a3 error:(id *)a4;
- (NSDictionary)dictionaryValue;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)decodeValueForKey:(id)a3 withCoder:(id)a4 modelVersion:(unint64_t)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)mergeValueForKey:(id)a3 fromModel:(id)a4;
- (void)mergeValuesForKeysFromModel:(id)a3;
@end

@implementation MTLModel

- (BOOL)isEqual:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self == v4)
  {
    v15 = 1;
  }

  else if ([(MTLModel *)v4 isMemberOfClass:objc_opt_class()])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [objc_opt_class() permanentPropertyKeys];
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          v11 = [(MTLModel *)self valueForKey:v10];
          v12 = [(MTLModel *)v4 valueForKey:v10];
          if (v11 | v12)
          {
            v13 = v12;
            v14 = [v11 isEqual:v12];

            if (!v14)
            {
              v15 = 0;
              goto LABEL_16;
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v15 = 1;
LABEL_16:
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (unint64_t)hash
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [objc_opt_class() permanentPropertyKeys];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [(MTLModel *)self valueForKey:*(*(&v12 + 1) + 8 * i)];
        v6 ^= [v9 hash];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

- (NSString)description
{
  v3 = [objc_opt_class() permanentPropertyKeys];
  v4 = [v3 allObjects];
  v5 = [(MTLModel *)self dictionaryWithValuesForKeys:v4];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p> %@", objc_opt_class(), self, v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(MTLModel *)self dictionaryValue];
  [v4 setValuesForKeysWithDictionary:v5];

  return v4;
}

- (BOOL)validate:(id *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [objc_opt_class() propertyKeys];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(MTLModel *)self valueForKey:v10];
        LODWORD(v10) = MTLValidateAndSetValue(self, v10, v11, 0, a3);

        if (!v10)
        {
          v12 = 0;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)mergeValuesForKeysFromModel:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_opt_class() propertyKeys];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [objc_opt_class() propertyKeys];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v5 containsObject:v11])
        {
          [(MTLModel *)self mergeValueForKey:v11 fromModel:v4];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)mergeValueForKey:(id)a3 fromModel:(id)a4
{
  v13 = a3;
  v7 = a4;
  v8 = v13;
  v9 = v7;
  if (!v13)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"MTLModel.m" lineNumber:254 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];

    v8 = 0;
  }

  v10 = MTLSelectorWithCapitalizedKeyPattern("merge", v8, "FromModel:");
  if (objc_opt_respondsToSelector())
  {
    ([(MTLModel *)self methodForSelector:v10])(self, v10, v9);
  }

  else if (v9)
  {
    v11 = [v9 valueForKey:v13];
    [(MTLModel *)self setValue:v11 forKey:v13];
  }
}

- (NSDictionary)dictionaryValue
{
  v3 = [objc_opt_class() transitoryPropertyKeys];
  v4 = [objc_opt_class() permanentPropertyKeys];
  v5 = [v3 setByAddingObjectsFromSet:v4];

  v6 = [v5 allObjects];
  v7 = [(MTLModel *)self dictionaryWithValuesForKeys:v6];

  return v7;
}

- (MTLModel)initWithDictionary:(id)a3 error:(id *)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(MTLModel *)self init];
  if (v7)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = v6;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          v14 = [v8 objectForKey:v13];
          v15 = v14;
          v16 = [MEMORY[0x1E695DFB0] null];
          v17 = [v14 isEqual:v16];

          if (v17)
          {
            v18 = 0;
          }

          else
          {
            v18 = v14;
          }

          if (!MTLValidateAndSetValue(v7, v13, v18, 1, a4))
          {

            v19 = 0;
            goto LABEL_15;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v19 = v7;
LABEL_15:
    v6 = v22;
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (MTLModel)init
{
  v3.receiver = self;
  v3.super_class = MTLModel;
  return [(MTLModel *)&v3 init];
}

+ (unint64_t)storageBehaviorForPropertyWithKey:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  Property = class_getProperty(v5, [v4 UTF8String]);
  if (Property)
  {
    v7 = mtl_copyPropertyAttributes(Property);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __46__MTLModel_storageBehaviorForPropertyWithKey___block_invoke;
    aBlock[3] = &__block_descriptor_40_e5_v8__0l;
    aBlock[4] = v7;
    v8 = _Block_copy(aBlock);
    v9 = [a1 instancesRespondToSelector:*(v7 + 2)];
    v10 = [a1 instancesRespondToSelector:*(v7 + 3)];
    if ((v7[4] & 1) != 0 || (*(v7 + 4) != 0) | (v9 | v10) & 1)
    {
      if (*v7 != 1 || *(v7 + 4))
      {
        v11 = 2;
LABEL_10:
        v8[2](v8);

        goto LABEL_11;
      }

      if (([a1 isEqual:objc_opt_class()] & 1) == 0)
      {
        v11 = [objc_msgSend(a1 "superclass")];
        goto LABEL_10;
      }
    }

    v11 = 0;
    goto LABEL_10;
  }

  v11 = 0;
LABEL_11:

  return v11;
}

+ (id)permanentPropertyKeys
{
  v3 = objc_getAssociatedObject(a1, MTLModelCachedPermanentPropertyKeysKey);
  if (!v3)
  {
    [a1 generateAndCacheStorageBehaviors];
    v3 = objc_getAssociatedObject(a1, MTLModelCachedPermanentPropertyKeysKey);
  }

  return v3;
}

+ (id)transitoryPropertyKeys
{
  v3 = objc_getAssociatedObject(a1, MTLModelCachedTransitoryPropertyKeysKey);
  if (!v3)
  {
    [a1 generateAndCacheStorageBehaviors];
    v3 = objc_getAssociatedObject(a1, MTLModelCachedTransitoryPropertyKeysKey);
  }

  return v3;
}

+ (id)propertyKeys
{
  v3 = objc_getAssociatedObject(a1, MTLModelCachedPropertyKeysKey);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __24__MTLModel_propertyKeys__block_invoke;
    v8[3] = &unk_1E837A3E0;
    v10 = a1;
    v5 = v6;
    v9 = v5;
    [a1 enumeratePropertiesUsingBlock:v8];
    objc_setAssociatedObject(a1, MTLModelCachedPropertyKeysKey, v5, 0x303);
  }

  return v5;
}

void __24__MTLModel_propertyKeys__block_invoke(uint64_t a1, objc_property_t property)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:property_getName(property)];
  if ([*(a1 + 40) storageBehaviorForPropertyWithKey:?])
  {
    [*(a1 + 32) addObject:v3];
  }
}

+ (void)enumeratePropertiesUsingBlock:(id)a3
{
  v4 = a3;
  v11 = 0;
  do
  {
    if ([a1 isEqual:objc_opt_class()])
    {
      break;
    }

    outCount = 0;
    v5 = class_copyPropertyList(a1, &outCount);
    a1 = [a1 superclass];
    if (v5)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __42__MTLModel_enumeratePropertiesUsingBlock___block_invoke;
      v9[3] = &__block_descriptor_40_e5_v8__0l;
      v9[4] = v5;
      v6 = _Block_copy(v9);
      if (outCount)
      {
        v7 = 1;
        do
        {
          v4[2](v4, *v5, &v11);
          if (v11)
          {
            break;
          }

          ++v5;
        }

        while (v7++ < outCount);
      }

      v6[2](v6);
    }
  }

  while ((v11 & 1) == 0);
}

+ (id)modelWithDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithDictionary:v6 error:a4];

  return v7;
}

+ (void)generateAndCacheStorageBehaviors
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v4 = [MEMORY[0x1E695DFA8] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [a1 propertyKeys];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [a1 storageBehaviorForPropertyWithKey:v10];
        v12 = v3;
        if (v11 != 1)
        {
          if (v11 != 2)
          {
            continue;
          }

          v12 = v4;
        }

        [v12 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  objc_setAssociatedObject(a1, MTLModelCachedTransitoryPropertyKeysKey, v3, 0x303);
  objc_setAssociatedObject(a1, MTLModelCachedPermanentPropertyKeysKey, v4, 0x303);

  v13 = *MEMORY[0x1E69E9840];
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  if (coderRequiresSecureCoding(v5))
  {
    v6 = objc_opt_class();
    verifyAllowedClassesByPropertyKey(v6);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(objc_opt_class(), "modelVersion")}];
  [v5 encodeObject:v7 forKey:@"MTLModelVersion"];

  v8 = [objc_opt_class() encodingBehaviorsByPropertyKey];
  v9 = [(MTLModel *)self dictionaryValue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __38__MTLModel_NSCoding__encodeWithCoder___block_invoke;
  v12[3] = &unk_1E837B638;
  v13 = v8;
  v14 = v5;
  v15 = self;
  v16 = a2;
  v10 = v5;
  v11 = v8;
  [v9 enumerateKeysAndObjectsUsingBlock:v12];
}

void __38__MTLModel_NSCoding__encodeWithCoder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = [MEMORY[0x1E695DFB0] null];
  v7 = [v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    v8 = [*(a1 + 32) objectForKeyedSubscript:v15];
    v9 = [v8 unsignedIntegerValue];

    if (v9)
    {
      if (v9 == 2)
      {
        [*(a1 + 40) encodeConditionalObject:v5 forKey:v15];
      }

      else if (v9 == 1)
      {
        [*(a1 + 40) encodeObject:v5 forKey:v15];
      }

      else
      {
        v10 = [MEMORY[0x1E696AAA8] currentHandler];
        v12 = *(a1 + 48);
        v11 = *(a1 + 56);
        v13 = objc_opt_class();
        v14 = [*(a1 + 32) objectForKeyedSubscript:v15];
        [v10 handleFailureInMethod:v11 object:v12 file:@"MTLModel+NSCoding.m" lineNumber:232 description:{@"Unrecognized encoding behavior %@ on class %@ for key %@", v13, v14, v15}];
      }
    }
  }
}

- (MTLModel)initWithCoder:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = coderRequiresSecureCoding(v5);
  if (v6)
  {
    [v5 decodeObjectOfClass:objc_opt_class() forKey:@"MTLModelVersion"];
  }

  else
  {
    [v5 decodeObjectForKey:@"MTLModelVersion"];
  }
  v7 = ;
  v8 = v7;
  if (!v7)
  {
    v11 = objc_opt_class();
    NSLog(&cfstr_WarningDecodin.isa, v11);
LABEL_8:
    if (v6)
    {
      v12 = objc_opt_class();
      verifyAllowedClassesByPropertyKey(v12);
    }

    else
    {
      v13 = [v5 decodeObjectForKey:@"externalRepresentation"];
      if (v13)
      {
        v14 = v13;
        v15 = [objc_opt_class() methodForSelector:sel_dictionaryValueFromArchivedExternalRepresentation_version_];
        if (v15 == [MTLModel methodForSelector:sel_dictionaryValueFromArchivedExternalRepresentation_version_])
        {
          v28 = [MEMORY[0x1E696AAA8] currentHandler];
          [v28 handleFailureInMethod:a2 object:self file:@"MTLModel+NSCoding.m" lineNumber:177 description:{@"Decoded an old archive of %@ that contains an externalRepresentation, but +dictionaryValueFromArchivedExternalRepresentation:version: is not overridden to handle it", objc_opt_class()}];
        }

        v16 = [objc_opt_class() dictionaryValueFromArchivedExternalRepresentation:v14 version:{objc_msgSend(v8, "unsignedIntegerValue")}];
        if (!v16)
        {
          v10 = 0;
          goto LABEL_28;
        }

        v36 = 0;
        v17 = [(MTLModel *)self initWithDictionary:v16 error:&v36];
        v18 = v36;
        if (!v17)
        {
          v29 = objc_opt_class();
          NSLog(&cfstr_CouldNotDecode.isa, v29, v18);
        }

LABEL_27:
        self = v17;

        v10 = self;
LABEL_28:

        goto LABEL_29;
      }
    }

    v19 = [objc_opt_class() propertyKeys];
    v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v19, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v14 = v19;
    v20 = [v14 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v33;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v33 != v22)
          {
            objc_enumerationMutation(v14);
          }

          v24 = *(*(&v32 + 1) + 8 * i);
          v25 = -[MTLModel decodeValueForKey:withCoder:modelVersion:](self, "decodeValueForKey:withCoder:modelVersion:", v24, v5, [v8 unsignedIntegerValue]);
          if (v25)
          {
            [v16 setObject:v25 forKeyedSubscript:v24];
          }
        }

        v21 = [v14 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v21);
    }

    v31 = 0;
    v17 = [(MTLModel *)self initWithDictionary:v16 error:&v31];
    v18 = v31;
    if (!v17)
    {
      v30 = objc_opt_class();
      NSLog(&cfstr_CouldNotUnarch.isa, v30, v18);
    }

    goto LABEL_27;
  }

  v9 = [v7 unsignedIntegerValue];
  if (v9 <= [objc_opt_class() modelVersion])
  {
    goto LABEL_8;
  }

  v10 = 0;
LABEL_29:

  v26 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)decodeValueForKey:(id)a3 withCoder:(id)a4 modelVersion:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"MTLModel+NSCoding.m" lineNumber:126 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"MTLModel+NSCoding.m" lineNumber:127 description:{@"Invalid parameter not satisfying: %@", @"coder != nil"}];

LABEL_3:
  v12 = MTLSelectorWithCapitalizedKeyPattern("decode", v9, "WithCoder:modelVersion:");
  if (objc_opt_respondsToSelector())
  {
    v13 = ([(MTLModel *)self methodForSelector:v12])(self, v12, v11, a5);
LABEL_10:
    v17 = v13;
    goto LABEL_11;
  }

  if (!coderRequiresSecureCoding(v11))
  {
    v13 = [v11 decodeObjectForKey:v9];
    goto LABEL_10;
  }

  v14 = [objc_opt_class() allowedSecureCodingClassesByPropertyKey];
  v15 = [v14 objectForKeyedSubscript:v9];

  if (!v15)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"MTLModel+NSCoding.m" lineNumber:141 description:{@"No allowed classes specified for securely decoding key %@ on %@", v9, objc_opt_class()}];
  }

  v16 = [MEMORY[0x1E695DFD8] setWithArray:v15];
  v17 = [v11 decodeObjectOfClasses:v16 forKey:v9];

LABEL_11:

  return v17;
}

+ (id)allowedSecureCodingClassesByPropertyKey
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = objc_getAssociatedObject(a1, MTLModelCachedAllowedClassesKey);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    goto LABEL_21;
  }

  v6 = [a1 encodingBehaviorsByPropertyKey];
  v7 = [v6 keysOfEntriesPassingTest:&__block_literal_global_50164];

  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = *v27;
  do
  {
    v10 = 0;
    do
    {
      if (*v27 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v26 + 1) + 8 * v10);
      v12 = v11;
      Property = class_getProperty(a1, [v11 UTF8String]);
      if (Property)
      {
        v14 = mtl_copyPropertyAttributes(Property);
      }

      else
      {
        v19 = [MEMORY[0x1E696AAA8] currentHandler];
        [v19 handleFailureInMethod:a2 object:a1 file:@"MTLModel+NSCoding.m" lineNumber:98 description:{@"Could not find property %@ on %@", v11, a1}];

        v14 = mtl_copyPropertyAttributes(0);
      }

      v15 = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __61__MTLModel_NSCoding__allowedSecureCodingClassesByPropertyKey__block_invoke_2;
      aBlock[3] = &__block_descriptor_40_e5_v8__0l;
      aBlock[4] = v14;
      v16 = _Block_copy(aBlock);
      v17 = v15[48];
      if (v17 == 35 || v17 == 64)
      {
        if (!*(v15 + 5))
        {
          goto LABEL_16;
        }

        v30 = *(v15 + 5);
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
        [v5 setObject:v18 forKeyedSubscript:v11];
      }

      else
      {
        v31 = objc_opt_class();
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
        [v5 setObject:v18 forKeyedSubscript:v11];
      }

LABEL_16:
      v16[2](v16);

      ++v10;
    }

    while (v8 != v10);
    v20 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    v8 = v20;
  }

  while (v20);
LABEL_20:

  objc_setAssociatedObject(a1, MTLModelCachedAllowedClassesKey, v5, 0x303);
  v4 = 0;
LABEL_21:

  v21 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)encodingBehaviorsByPropertyKey
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [a1 propertyKeys];
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = *v24;
    do
    {
      v7 = 0;
      do
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * v7);
        v9 = v8;
        Property = class_getProperty(a1, [v8 UTF8String]);
        if (Property)
        {
          v11 = mtl_copyPropertyAttributes(Property);
        }

        else
        {
          v16 = [MEMORY[0x1E696AAA8] currentHandler];
          [v16 handleFailureInMethod:a2 object:a1 file:@"MTLModel+NSCoding.m" lineNumber:71 description:{@"Could not find property %@ on %@", v8, a1}];

          v11 = mtl_copyPropertyAttributes(0);
        }

        v12 = v11;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __52__MTLModel_NSCoding__encodingBehaviorsByPropertyKey__block_invoke;
        aBlock[3] = &__block_descriptor_40_e5_v8__0l;
        aBlock[4] = v11;
        v13 = _Block_copy(aBlock);
        if (v12[2])
        {
          v14 = 2;
        }

        else
        {
          v14 = 1;
        }

        v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
        [v4 setObject:v15 forKeyedSubscript:v8];

        v13[2](v13);
        ++v7;
      }

      while (v5 != v7);
      v17 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      v5 = v17;
    }

    while (v17);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v4;
}

@end