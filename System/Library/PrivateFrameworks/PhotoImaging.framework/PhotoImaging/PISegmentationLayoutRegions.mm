@interface PISegmentationLayoutRegions
+ (id)dictionaryFromRegions:(id)regions;
+ (id)regionsFromDictionary:(id)dictionary error:(id *)error;
- (CGRect)acceptableCropRect;
- (CGRect)gazeAreaRect;
- (CGRect)preferredCropRect;
- (NSString)debugDescription;
- (double)initWithAcceptableRect:(double)rect preferredRect:(double)preferredRect gazeAreaRect:(double)areaRect faces:(double)faces pets:(double)pets;
@end

@implementation PISegmentationLayoutRegions

- (CGRect)gazeAreaRect
{
  x = self->_gazeAreaRect.origin.x;
  y = self->_gazeAreaRect.origin.y;
  width = self->_gazeAreaRect.size.width;
  height = self->_gazeAreaRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)preferredCropRect
{
  x = self->_preferredCropRect.origin.x;
  y = self->_preferredCropRect.origin.y;
  width = self->_preferredCropRect.size.width;
  height = self->_preferredCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)acceptableCropRect
{
  x = self->_acceptableCropRect.origin.x;
  y = self->_acceptableCropRect.origin.y;
  width = self->_acceptableCropRect.size.width;
  height = self->_acceptableCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = MEMORY[0x1E696B098];
  [(PISegmentationLayoutRegions *)self acceptableCropRect];
  v22[0] = v6;
  v22[1] = v7;
  v22[2] = v8;
  v22[3] = v9;
  v10 = [v5 valueWithBytes:v22 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v11 = MEMORY[0x1E696B098];
  [(PISegmentationLayoutRegions *)self preferredCropRect];
  v21[0] = v12;
  v21[1] = v13;
  v21[2] = v14;
  v21[3] = v15;
  v16 = [v11 valueWithBytes:v21 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  faceRegions = [(PISegmentationLayoutRegions *)self faceRegions];
  petRegions = [(PISegmentationLayoutRegions *)self petRegions];
  v19 = [v3 stringWithFormat:@"<%@:%p accept=%@ pref=%@ faces=%@ pets=%@>", v4, self, v10, v16, faceRegions, petRegions];

  return v19;
}

- (double)initWithAcceptableRect:(double)rect preferredRect:(double)preferredRect gazeAreaRect:(double)areaRect faces:(double)faces pets:(double)pets
{
  v30 = a11;
  v31 = a12;
  v38.receiver = self;
  v38.super_class = PISegmentationLayoutRegions;
  v32 = objc_msgSendSuper2(&v38, sel_init);
  v32[3] = a2;
  v32[4] = rect;
  v32[5] = preferredRect;
  v32[6] = areaRect;
  v32[7] = faces;
  v32[8] = pets;
  v32[9] = a8;
  v32[10] = a9;
  if (v30)
  {
    v33 = [v30 copy];
  }

  else
  {
    v33 = MEMORY[0x1E695E0F0];
  }

  v34 = *(v32 + 1);
  *(v32 + 1) = v33;

  if (v31)
  {
    v35 = [v31 copy];
  }

  else
  {
    v35 = MEMORY[0x1E695E0F0];
  }

  v36 = *(v32 + 2);
  *(v32 + 2) = v35;

  *(v32 + 11) = a17;
  *(v32 + 12) = a18;
  *(v32 + 13) = a19;
  *(v32 + 14) = a20;

  return v32;
}

+ (id)regionsFromDictionary:(id)dictionary error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    v18 = NUAssertLogger_1052();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "contents != nil"];
      LODWORD(rect.origin.x) = 138543362;
      *(&rect.origin.x + 4) = v19;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &rect, 0xCu);
    }

    v20 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v22 = NUAssertLogger_1052();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v26 = dispatch_get_specific(*v20);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        callStackSymbols = [v27 callStackSymbols];
        v30 = [callStackSymbols componentsJoinedByString:@"\n"];
        LODWORD(rect.origin.x) = 138543618;
        *(&rect.origin.x + 4) = v26;
        WORD2(rect.origin.y) = 2114;
        *(&rect.origin.y + 6) = v30;
        _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &rect, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      LODWORD(rect.origin.x) = 138543362;
      *(&rect.origin.x + 4) = v25;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &rect, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v6 = dictionaryCopy;
  memset(&rect, 0, sizeof(rect));
  v7 = [dictionaryCopy objectForKeyedSubscript:@"acceptable"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    goto LABEL_12;
  }

  v8 = CGRectMakeWithDictionaryRepresentation(v7, &rect);

  if (!v8)
  {
LABEL_12:
    [MEMORY[0x1E69B3A48] mismatchError:@"Expected a rect value" object:v7];
    *error = v16 = 0;
    goto LABEL_13;
  }

  memset(&v31, 0, sizeof(v31));
  v9 = [v6 objectForKeyedSubscript:@"preferred"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = CGRectMakeWithDictionaryRepresentation(v9, &v31);

    if (v10)
    {
      v11 = [v6 objectForKeyedSubscript:@"faces"];
      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (__59__PISegmentationLayoutRegions_regionsFromDictionary_error___block_invoke(v11, v12))
      {
        v13 = [v6 objectForKeyedSubscript:@"pets"];
        v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
        if (__59__PISegmentationLayoutRegions_regionsFromDictionary_error___block_invoke(v13, v14))
        {
          v15 = [PISegmentationLayoutRegions alloc];
          v16 = [(PISegmentationLayoutRegions *)v15 initWithAcceptableRect:v12 preferredRect:v14 faces:rect.origin.x pets:rect.origin.y, rect.size.width, rect.size.height, v31.origin.x, v31.origin.y, v31.size.width, v31.size.height];
        }

        else
        {
          [MEMORY[0x1E69B3A48] mismatchError:@"Expected an array of rect values" object:v13];
          *error = v16 = 0;
        }
      }

      else
      {
        [MEMORY[0x1E69B3A48] mismatchError:@"Expected an array of rect values" object:v11];
        *error = v16 = 0;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  [MEMORY[0x1E69B3A48] mismatchError:@"Expected a rect value" object:v9];
  *error = v16 = 0;
LABEL_18:

LABEL_13:

  return v16;
}

uint64_t __59__PISegmentationLayoutRegions_regionsFromDictionary_error___block_invoke(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = v3;
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
          memset(&rect, 0, sizeof(rect));
          v11 = v10;
          if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {

LABEL_16:
            v14 = 0;
            goto LABEL_18;
          }

          v12 = CGRectMakeWithDictionaryRepresentation(v11, &rect);

          if (!v12)
          {
            goto LABEL_16;
          }

          v16 = rect;
          v13 = [MEMORY[0x1E696B098] valueWithBytes:&v16 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
          [v4 addObject:v13];
        }

        v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
        v14 = 1;
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v14 = 1;
    }

LABEL_18:
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)dictionaryFromRegions:(id)regions
{
  v30 = *MEMORY[0x1E69E9840];
  regionsCopy = regions;
  if (!regionsCopy)
  {
    v13 = NUAssertLogger_1052();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "regions != nil"];
      *buf = 138543362;
      v27 = v14;
      _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v15 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v17 = NUAssertLogger_1052();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v21 = dispatch_get_specific(*v15);
        v22 = MEMORY[0x1E696AF00];
        v23 = v21;
        callStackSymbols = [v22 callStackSymbols];
        v25 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v27 = v21;
        v28 = 2114;
        v29 = v25;
        _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v20;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v4 = regionsCopy;
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
  [v4 acceptableCropRect];
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v32);
  [v5 setObject:DictionaryRepresentation forKeyedSubscript:@"acceptable"];

  [v4 preferredCropRect];
  v7 = CGRectCreateDictionaryRepresentation(v33);
  [v5 setObject:v7 forKeyedSubscript:@"preferred"];

  faceRegions = [v4 faceRegions];
  v9 = __53__PISegmentationLayoutRegions_dictionaryFromRegions___block_invoke(faceRegions);
  [v5 setObject:v9 forKeyedSubscript:@"faces"];

  petRegions = [v4 petRegions];
  v11 = __53__PISegmentationLayoutRegions_dictionaryFromRegions___block_invoke(petRegions);
  [v5 setObject:v11 forKeyedSubscript:@"pets"];

  return v5;
}

id __53__PISegmentationLayoutRegions_dictionaryFromRegions___block_invoke(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v10 + 1) + 8 * i) rectValue];
          DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v17);
          [v2 addObject:DictionaryRepresentation];
        }

        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end