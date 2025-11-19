@interface STRPPropertyListTypeDecoder
+ (id)_supportedCoreTypesForEncoding;
- (BOOL)containsValueForKey:(id)a3;
- (BOOL)decodeBoolForKey:(id)a3;
- (STRPPropertyListTypeDecoder)initWithDictionary:(id)a3;
- (const)decodeBytesForKey:(id)a3 returnedLength:(unint64_t *)a4;
- (double)decodeDoubleForKey:(id)a3;
- (float)decodeFloatForKey:(id)a3;
- (id)_decodeObjectOfClasses:(id)a3 fromObject:(id)a4;
- (id)_errorWithCode:(int64_t)a3 message:(id)a4;
- (id)_failWithCode:(int64_t)a3 message:(id)a4;
- (id)_numberForKey:(id)a3;
- (id)decodeArrayOfObjectsOfClass:(Class)a3 forKey:(id)a4;
- (id)decodeArrayOfObjectsOfClasses:(id)a3 forKey:(id)a4;
- (id)decodeDictionaryWithKeysOfClass:(Class)a3 objectsOfClass:(Class)a4 forKey:(id)a5;
- (id)decodeDictionaryWithKeysOfClasses:(id)a3 objectsOfClasses:(id)a4 forKey:(id)a5;
- (id)decodeObjectForKey:(id)a3;
- (id)decodeObjectOfClass:(Class)a3 forKey:(id)a4;
- (id)decodeObjectOfClasses:(id)a3 forKey:(id)a4;
- (id)decodeRootObjectOfClass:(Class)a3 fromEncoded:(id)a4 error:(id *)a5;
- (id)decodeTopLevelObjectForKey:(id)a3 error:(id *)a4;
- (int)decodeInt32ForKey:(id)a3;
- (int)decodeIntForKey:(id)a3;
- (int64_t)decodeInt64ForKey:(id)a3;
- (int64_t)decodeIntegerForKey:(id)a3;
@end

@implementation STRPPropertyListTypeDecoder

+ (id)_supportedCoreTypesForEncoding
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];
}

- (STRPPropertyListTypeDecoder)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STRPPropertyListTypeDecoder;
  v5 = [(STRPPropertyListTypeDecoder *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    storage = v5->_storage;
    v5->_storage = v6;
  }

  return v5;
}

- (id)decodeRootObjectOfClass:(Class)a3 fromEncoded:(id)a4 error:(id *)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v9 = a4;
  if (objc_opt_class() == a3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_18;
    }
  }

  if (objc_opt_class() == a3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v9];
LABEL_19:
      v11 = v10;
      goto LABEL_20;
    }
  }

  if (objc_opt_class() == a3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_18;
    }
  }

  if (objc_opt_class() == a3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_18;
    }
  }

  if (objc_opt_class() == a3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_18;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && objc_opt_class() == a3)
  {
    v16 = MEMORY[0x1E695DF00];
    [v9 doubleValue];
    v10 = [v16 dateWithTimeIntervalSinceReferenceDate:?];
    goto LABEL_19;
  }

  if (objc_opt_class() == a3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || objc_opt_class() == a3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
LABEL_18:
    v10 = v9;
    goto LABEL_19;
  }

  if (objc_opt_class() == a3 || objc_opt_class() == a3)
  {
    if (!a5)
    {
      goto LABEL_37;
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Top level array representations are unsupported, a boxing type must be provided."];
    v15 = [(STRPPropertyListTypeDecoder *)self _errorWithCode:1 message:v14];
LABEL_36:
    *a5 = v15;

    goto LABEL_37;
  }

  if (objc_opt_class() == a3 || objc_opt_class() == a3)
  {
    if (!a5)
    {
      goto LABEL_37;
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Top level dictionary representations are unsupported, a boxing type must be provided."];
    v15 = [(STRPPropertyListTypeDecoder *)self _errorWithCode:1 message:v14];
    goto LABEL_36;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_storage, a4);
    v10 = [[a3 alloc] initWithCoder:self];
    goto LABEL_19;
  }

  if (a5)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Type must be a dictionary representation of a non-primitive type."];
    v15 = [(STRPPropertyListTypeDecoder *)self _errorWithCode:1 message:v14];
    goto LABEL_36;
  }

LABEL_37:
  v11 = 0;
LABEL_20:

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BOOL)containsValueForKey:(id)a3
{
  v3 = [(NSDictionary *)self->_storage objectForKey:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)_decodeObjectOfClasses:(id)a3 fromObject:(id)a4
{
  v84 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v79 = 0;
  v80 = &v79;
  v81 = 0x2050000000;
  v82 = 0;
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = __65__STRPPropertyListTypeDecoder__decodeObjectOfClasses_fromObject___block_invoke;
  v76[3] = &unk_1E86A2980;
  v7 = v6;
  v77 = v7;
  v78 = &v79;
  [v5 enumerateObjectsUsingBlock:v76];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 containsObject:objc_opt_class()] && objc_msgSend(v5, "count") == 1)
  {
    v8 = MEMORY[0x1E695DF00];
    [v7 doubleValue];
    v9 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
LABEL_22:
    v27 = v9;
    goto LABEL_36;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 containsObject:objc_opt_class()] && objc_msgSend(v5, "count") == 1)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7];
    goto LABEL_22;
  }

  v10 = v80[3];
  if (!v10)
  {
    v28 = [v5 mutableCopy];
    v29 = [objc_opt_class() _supportedCoreTypesForEncoding];
    [v28 minusSet:v29];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v28 count])
    {
      v30 = [objc_alloc(objc_opt_class()) initWithDictionary:v7];
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v31 = v28;
      v32 = [v31 countByEnumeratingWithState:&v72 objects:v83 count:16];
      if (v32)
      {
        v33 = *v73;
LABEL_27:
        v34 = 0;
        while (1)
        {
          if (*v73 != v33)
          {
            objc_enumerationMutation(v31);
          }

          v27 = [objc_alloc(*(*(&v72 + 1) + 8 * v34)) initWithCoder:v30];
          if (v27)
          {
            goto LABEL_35;
          }

          if (v32 == ++v34)
          {
            v32 = [v31 countByEnumeratingWithState:&v72 objects:v83 count:16];
            if (v32)
            {
              goto LABEL_27;
            }

            break;
          }
        }
      }
    }

    v35 = MEMORY[0x1E696AEC0];
    v36 = objc_opt_class();
    v30 = NSStringFromClass(v36);
    v31 = [v35 stringWithFormat:@"No matching class found from candidates: %@, but found: %@", v5, v30];
    v37 = [(STRPPropertyListTypeDecoder *)self _failWithCode:1 message:v31];
    v27 = 0;
LABEL_35:

    goto LABEL_36;
  }

  if (v10 == objc_opt_class() || (v11 = v80[3], v11 == objc_opt_class()) || (v12 = v80[3], v12 == objc_opt_class()) || (v13 = v80[3], v13 == objc_opt_class()))
  {
    v9 = v7;
    goto LABEL_22;
  }

  v14 = v80[3];
  if (v14 == objc_opt_class() || (v15 = v80[3], v15 == objc_opt_class()))
  {
    v40 = v7;
    v41 = [v40 count];
    v42 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v41];
    v43 = [v5 mutableCopy];
    v44 = MEMORY[0x1E695DFD8];
    v45 = objc_opt_class();
    v46 = [v44 setWithObjects:{v45, objc_opt_class(), 0}];
    [v43 minusSet:v46];

    if ([v43 count] == 1)
    {
      v47 = [v43 anyObject];
      v48 = [objc_opt_class() _supportedCoreTypesForEncoding];
      v49 = [v48 containsObject:v47];

      v68 = 0;
      v69 = &v68;
      v70 = 0x2020000000;
      v71 = 0;
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __65__STRPPropertyListTypeDecoder__decodeObjectOfClasses_fromObject___block_invoke_2;
      v62[3] = &unk_1E86A29A8;
      v67 = v49 ^ 1;
      v62[4] = self;
      v63 = v43;
      v65 = &v68;
      v66 = v47;
      v50 = v42;
      v64 = v50;
      [v40 enumerateObjectsUsingBlock:v62];
      if (v69[3])
      {
        v27 = 0;
      }

      else
      {
        v27 = [v50 copy];
      }

      _Block_object_dispose(&v68, 8);
    }

    else
    {
      v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Ambiguous types for NSArray: %@ we only support single value types in the array, but found more than 1 type.", v43];;
      v27 = [(STRPPropertyListTypeDecoder *)self _failWithCode:0 message:v51];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v56 = v7;
      v16 = [v56 count];
      v55 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v16];
      v17 = [v5 mutableCopy];
      v18 = MEMORY[0x1E695DFD8];
      v19 = objc_opt_class();
      v20 = objc_opt_class();
      v21 = objc_opt_class();
      v22 = [v18 setWithObjects:{v19, v20, v21, objc_opt_class(), 0}];
      [v17 minusSet:v22];

      v23 = MEMORY[0x1E695DFD8];
      v24 = objc_opt_class();
      v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
      if ([v17 count] && objc_msgSend(v17, "count") < 3)
      {
        if ([v17 intersectsSet:v25])
        {
          v68 = 0;
          v69 = &v68;
          v70 = 0x2020000000;
          v71 = 0;
          v58[0] = MEMORY[0x1E69E9820];
          v58[1] = 3221225472;
          v58[2] = __65__STRPPropertyListTypeDecoder__decodeObjectOfClasses_fromObject___block_invoke_38;
          v58[3] = &unk_1E86A29D0;
          v61 = &v68;
          v58[4] = self;
          v59 = v17;
          v52 = v55;
          v60 = v52;
          [v56 enumerateKeysAndObjectsUsingBlock:v58];
          if (v69[3])
          {
            v27 = 0;
          }

          else
          {
            v27 = [v52 copy];
          }

          _Block_object_dispose(&v68, 8);
        }

        else
        {
          v53 = STRPLogCoding();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
          {
            [STRPPropertyListTypeDecoder _decodeObjectOfClasses:v17 fromObject:v53];
          }

          v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Ambiguous key types for NSDictionary: %@ we only support NSString and NSNumber keys.", v17];;
          v27 = [(STRPPropertyListTypeDecoder *)self _failWithCode:0 message:v54];
        }
      }

      else
      {
        v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Ambiguous value types for NSDictionary: %@ we only support NSString and NSNumber keys and single object or array of object value types.", v17];;
        v27 = [(STRPPropertyListTypeDecoder *)self _failWithCode:0 message:v26];
      }
    }

    else
    {
      v27 = 0;
    }
  }

LABEL_36:

  _Block_object_dispose(&v79, 8);
  v38 = *MEMORY[0x1E69E9840];

  return v27;
}

uint64_t __65__STRPPropertyListTypeDecoder__decodeObjectOfClasses_fromObject___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = *(a1 + 32);
  result = objc_opt_isKindOfClass();
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
    *a3 = 1;
  }

  return result;
}

void __65__STRPPropertyListTypeDecoder__decodeObjectOfClasses_fromObject___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = a2;
  if (*(a1 + 72) == 1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      v11 = *(a1 + 32);
      v12 = MEMORY[0x1E696AEC0];
      v13 = NSStringFromClass(*(a1 + 64));
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = [v12 stringWithFormat:@"Type mismatch - expected NSDictionary representation of %@, but found: %@ instead.", v13, v15];
      v17 = [v11 _failWithCode:1 message:v16];

      *a4 = 1;
      goto LABEL_8;
    }

    v6 = *(a1 + 32);
    v7 = [objc_alloc(objc_opt_class()) initWithDictionary:v18];
    v8 = [*(a1 + 40) anyObject];
    v9 = [objc_msgSend(v8 "alloc")];
  }

  else
  {
    v10 = *(a1 + 32);
    v7 = [objc_opt_class() _supportedCoreTypesForEncoding];
    v9 = [v10 _decodeObjectOfClasses:v7 fromObject:v18];
  }

  if (v9)
  {
    [*(a1 + 48) addObject:v9];
  }

LABEL_8:
}

void __65__STRPPropertyListTypeDecoder__decodeObjectOfClasses_fromObject___block_invoke_38(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v39 = a2;
  v7 = a3;
  v8 = 0x1E696AEC0;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = 0x1E696AD98;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      v22 = *(a1 + 32);
      v23 = MEMORY[0x1E696AEC0];
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = [v23 stringWithFormat:@"Type mismatch - expected NSDictionary with String or Number keys found keys with representation %@ instead.", v25];;
      v27 = [v22 _failWithCode:1 message:v26];

      *a4 = 1;
      goto LABEL_19;
    }
  }

  v9 = *v8;
  v10 = objc_opt_class();
  if ([*(a1 + 40) count] >= 2)
  {
    [*(a1 + 40) removeObject:v10];
  }

  if (![*(a1 + 40) count])
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v19 = *(a1 + 32);
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Type mismatch - expected NSDictionary with homogenous key types."];
    v21 = [v19 _failWithCode:1 message:v20];

    *a4 = 1;
    goto LABEL_19;
  }

  v11 = [*(a1 + 40) anyObject];
  v12 = *(a1 + 32);
  v13 = [objc_opt_class() _supportedCoreTypesForEncoding];
  v14 = [v13 containsObject:v11];

  if ((v14 & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = *(a1 + 32);
      v29 = [objc_alloc(objc_opt_class()) initWithDictionary:v7];
      v30 = [*(a1 + 40) anyObject];
      v31 = [objc_msgSend(v30 "alloc")];

      goto LABEL_17;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      v32 = *(a1 + 32);
      v33 = MEMORY[0x1E696AEC0];
      v34 = NSStringFromClass(v11);
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      v37 = [v33 stringWithFormat:@"Type mismatch - expected NSDictionary representation of %@, but found: %@ instead.", v34, v36];
      v38 = [v32 _failWithCode:1 message:v37];

      *a4 = 1;
      goto LABEL_19;
    }

    v16 = *(a1 + 32);
    goto LABEL_15;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v16 = *(a1 + 32);
  if (isKindOfClass)
  {
LABEL_15:
    v18 = [*(a1 + 40) setByAddingObject:objc_opt_class()];
    goto LABEL_16;
  }

  v17 = *(a1 + 32);
  v18 = [objc_opt_class() _supportedCoreTypesForEncoding];
LABEL_16:
  v29 = v18;
  v31 = [v16 _decodeObjectOfClasses:v18 fromObject:v7];
LABEL_17:

  if (v31)
  {
    [*(a1 + 48) setObject:v31 forKeyedSubscript:v39];
  }

LABEL_19:
}

- (id)decodeObjectOfClass:(Class)a3 forKey:(id)a4
{
  v6 = MEMORY[0x1E695DFD8];
  v7 = a4;
  v8 = [v6 setWithObject:a3];
  v9 = [(STRPPropertyListTypeDecoder *)self decodeObjectOfClasses:v8 forKey:v7];

  return v9;
}

- (id)decodeObjectOfClasses:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = [(NSDictionary *)self->_storage objectForKey:a4];
  if (v7)
  {
    v8 = [(STRPPropertyListTypeDecoder *)self _decodeObjectOfClasses:v6 fromObject:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)decodeObjectForKey:(id)a3
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Not supported. Must be secure coding compliant. key='%@'", a3];
  v5 = [(STRPPropertyListTypeDecoder *)self _failWithCode:3 message:v4];

  return 0;
}

- (id)decodeTopLevelObjectForKey:(id)a3 error:(id *)a4
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Not supported. key='%@'", a4, a3];
  v6 = [(STRPPropertyListTypeDecoder *)self _failWithCode:3 message:v5];

  return 0;
}

- (BOOL)decodeBoolForKey:(id)a3
{
  v3 = [(STRPPropertyListTypeDecoder *)self _numberForKey:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

- (int)decodeIntForKey:(id)a3
{
  v3 = [(STRPPropertyListTypeDecoder *)self _numberForKey:a3];
  v4 = [v3 intValue];

  return v4;
}

- (int)decodeInt32ForKey:(id)a3
{
  v3 = [(STRPPropertyListTypeDecoder *)self _numberForKey:a3];
  v4 = [v3 intValue];

  return v4;
}

- (int64_t)decodeInt64ForKey:(id)a3
{
  v3 = [(STRPPropertyListTypeDecoder *)self _numberForKey:a3];
  v4 = [v3 longLongValue];

  return v4;
}

- (float)decodeFloatForKey:(id)a3
{
  v3 = [(STRPPropertyListTypeDecoder *)self _numberForKey:a3];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (double)decodeDoubleForKey:(id)a3
{
  v3 = [(STRPPropertyListTypeDecoder *)self _numberForKey:a3];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (const)decodeBytesForKey:(id)a3 returnedLength:(unint64_t *)a4
{
  v6 = a3;
  v7 = [(NSDictionary *)self->_storage objectForKey:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a4)
    {
      *a4 = [v7 length];
    }

    v8 = [v7 bytes];
  }

  else
  {
    v9 = STRPLogCoding();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(STRPPropertyListTypeDecoder *)v7 decodeBytesForKey:v6 returnedLength:v9];
    }

    v8 = 0;
  }

  return v8;
}

- (int64_t)decodeIntegerForKey:(id)a3
{
  v3 = [(STRPPropertyListTypeDecoder *)self _numberForKey:a3];
  v4 = [v3 integerValue];

  return v4;
}

- (id)decodeArrayOfObjectsOfClass:(Class)a3 forKey:(id)a4
{
  v6 = MEMORY[0x1E695DFD8];
  v7 = a4;
  v8 = [v6 setWithObject:a3];
  v9 = [(STRPPropertyListTypeDecoder *)self decodeArrayOfObjectsOfClasses:v8 forKey:v7];

  return v9;
}

- (id)decodeArrayOfObjectsOfClasses:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 setByAddingObject:objc_opt_class()];

  v9 = [(STRPPropertyListTypeDecoder *)self decodeObjectOfClasses:v8 forKey:v6];

  return v9;
}

- (id)decodeDictionaryWithKeysOfClass:(Class)a3 objectsOfClass:(Class)a4 forKey:(id)a5
{
  v8 = MEMORY[0x1E695DFD8];
  v9 = a5;
  v10 = [v8 setWithObject:a3];
  v11 = [MEMORY[0x1E695DFD8] setWithObject:a4];
  v12 = [(STRPPropertyListTypeDecoder *)self decodeDictionaryWithKeysOfClasses:v10 objectsOfClasses:v11 forKey:v9];

  return v12;
}

- (id)decodeDictionaryWithKeysOfClasses:(id)a3 objectsOfClasses:(id)a4 forKey:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [a4 mutableCopy];
  [v10 unionSet:v9];

  [v10 addObject:objc_opt_class()];
  v11 = [(STRPPropertyListTypeDecoder *)self decodeObjectOfClasses:v10 forKey:v8];

  return v11;
}

- (id)_numberForKey:(id)a3
{
  storage = self->_storage;
  v4 = a3;
  v5 = [(NSDictionary *)storage bs_safeObjectForKey:v4 ofType:objc_opt_class()];

  return v5;
}

- (id)_errorWithCode:(int64_t)a3 message:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABC0];
  v12 = *MEMORY[0x1E695E650];
  v13[0] = a4;
  v6 = MEMORY[0x1E695DF20];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v5 errorWithDomain:@"STRPCodingErrorDomain" code:a3 userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_failWithCode:(int64_t)a3 message:(id)a4
{
  v5 = [(STRPPropertyListTypeDecoder *)self _errorWithCode:a3 message:a4];
  [(STRPPropertyListTypeDecoder *)self failWithError:v5];

  return 0;
}

- (void)_decodeObjectOfClasses:(uint64_t)a1 fromObject:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  v2 = *MEMORY[0x1E69E9840];
}

- (void)decodeBytesForKey:(NSObject *)a3 returnedLength:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = a2;
  _os_log_fault_impl(&dword_1DEE0F000, a3, OS_LOG_TYPE_FAULT, "-decodeBytesForKey:returnedLength: called with class %@ for key '%@'.", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end