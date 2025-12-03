@interface CRFormContentTypePredictor
- (BOOL)_predictAndAssignContentTypesForFields:(id)fields fieldsAndRegions:(id)regions locale:(id)locale updateExternal:(BOOL)external;
- (BOOL)predictAndAssignContentTypesForFields:(id)fields fieldsAndRegions:(id)regions locale:(id)locale updateExternal:(BOOL)external;
- (CRFormContentTypePredictor)init;
- (id).cxx_construct;
- (id)_modelInputWithFields:(id)fields fieldsAndRegions:(id)regions locale:(id)locale;
- (void)_decodeCoreMLOutput:(id)output forFields:(id)fields updateExternal:(BOOL)external;
- (void)_decodeEspressoOutput:(id *)output forFields:(id)fields locale:(id)locale updateExternal:(BOOL)external;
@end

@implementation CRFormContentTypePredictor

- (CRFormContentTypePredictor)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = CRFormContentTypePredictor;
  if ([(CRFormContentTypePredictor *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (id)_modelInputWithFields:(id)fields fieldsAndRegions:(id)regions locale:(id)locale
{
  v39 = *MEMORY[0x1E69E9840];
  fieldsCopy = fields;
  regionsCopy = regions;
  localeCopy = locale;
  _nonFieldRegions = [regionsCopy _nonFieldRegions];
  if ([fieldsCopy count] && objc_msgSend(_nonFieldRegions, "count"))
  {
    v35 = 0;
    v11 = [objc_alloc(MEMORY[0x1E695FED0]) initWithShape:&unk_1F2BF8908 dataType:65568 error:&v35];
    v12 = v35;
    if (v12)
    {
      v13 = v12;
      v14 = CROSLogForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        v15 = [v13 description];
        *buf = 138412290;
        v38 = v15;
        _os_log_impl(&dword_1B40D2000, v14, OS_LOG_TYPE_FAULT, "Failed to create a field array: %@", buf, 0xCu);
      }

      v16 = 0;
    }

    else
    {
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __76__CRFormContentTypePredictor__modelInputWithFields_fieldsAndRegions_locale___block_invoke;
      v32[3] = &unk_1E7BC28F0;
      v17 = fieldsCopy;
      v33 = v17;
      v18 = regionsCopy;
      v34 = v18;
      [v11 getMutableBytesWithHandler:v32];
      v19 = objc_alloc(MEMORY[0x1E695FED0]);
      v36[0] = &unk_1F2BF83C8;
      v36[1] = &unk_1F2BF83E0;
      v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:7700];
      v36[2] = v20;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:3];
      v31 = 0;
      v26 = [v19 initWithShape:v21 dataType:65568 error:&v31];
      v13 = v31;

      if (v13)
      {
        v22 = CROSLogForCategory(0);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          v23 = [v13 description];
          *buf = 138412290;
          v38 = v23;
          _os_log_impl(&dword_1B40D2000, v22, OS_LOG_TYPE_FAULT, "Failed to create a label array: %@", buf, 0xCu);
        }

        v16 = 0;
      }

      else
      {
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __76__CRFormContentTypePredictor__modelInputWithFields_fieldsAndRegions_locale___block_invoke_73;
        v27[3] = &unk_1E7BC2918;
        v24 = _nonFieldRegions;
        v28 = v24;
        v29 = v18;
        v30 = localeCopy;
        [v26 getMutableBytesWithHandler:v27];
        v16 = [[CRFormContentTypeModelInput alloc] initWithFieldArray:v11 labelArray:v26 fieldCount:[v17 count] labelCount:[v24 count] useFloatOnly:1];

        v22 = v28;
      }

      v14 = v33;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __76__CRFormContentTypePredictor__modelInputWithFields_fieldsAndRegions_locale___block_invoke(uint64_t a1, float *a2, int64_t a3, void *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v27 = a4;
  if (a3 >= 1)
  {
    bzero(a2, a3);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = *(a1 + 32);
  v7 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v7)
  {
    v28 = 0;
    v8 = *v32;
LABEL_5:
    v9 = 0;
    v10 = v28 <= 0x7F;
    v11 = 127 - v28;
    v28 += v7;
    if (v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    while (1)
    {
      if (*v32 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v31 + 1) + 8 * v9);
      v14 = [*(a1 + 40) indexOfObject:{v13, v27}];
      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = *(a1 + 40);
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __76__CRFormContentTypePredictor__modelInputWithFields_fieldsAndRegions_locale___block_invoke_2;
        v30[3] = &unk_1E7BC28C8;
        v30[4] = v13;
        v14 = [v15 indexOfObjectPassingTest:v30];
      }

      *a2 = v14;
      v16 = [v13 boundingQuad];
      [v16 boundingBox];
      *&v17 = v17;
      a2[1] = *&v17;

      v18 = [v13 boundingQuad];
      [v18 boundingBox];
      v20 = v19;
      a2[2] = v20;

      v21 = [v13 boundingQuad];
      [v21 boundingBox];
      v23 = v22;
      a2[3] = v23;

      v24 = [v13 boundingQuad];
      [v24 boundingBox];
      v26 = v25;
      a2[4] = v26;

      if (v12 == v9)
      {
        break;
      }

      a2 += 5;
      if (v7 == ++v9)
      {
        v7 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v7)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }
}

BOOL __76__CRFormContentTypePredictor__modelInputWithFields_fieldsAndRegions_locale___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == v3)
  {
    v8 = 1;
  }

  else
  {
    v5 = CRCastAsClass<CRFormField>(v3);
    v6 = v5;
    if (v5)
    {
      v7 = [v5 originalField];
      v8 = v7 == *(a1 + 32);
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

void __76__CRFormContentTypePredictor__modelInputWithFields_fieldsAndRegions_locale___block_invoke_73(uint64_t a1, float *a2, int64_t a3, void *a4)
{
  v108 = *MEMORY[0x1E69E9840];
  v77 = a4;
  if (a3 >= 1)
  {
    bzero(a2, a3);
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = *(a1 + 32);
  v83 = [obj countByEnumeratingWithState:&v89 objects:v106 count:16];
  if (!v83)
  {
    goto LABEL_96;
  }

  v6 = 0;
  v87 = 0;
  v7 = *v90;
  v78 = *v90;
  while (2)
  {
    if (v7 != v78)
    {
      objc_enumerationMutation(obj);
    }

    v8 = *(*(&v89 + 1) + 8 * v87);
    v81 = v6;
    *a2 = [*(a1 + 40) indexOfObject:v8];
    v9 = [v8 boundingQuad];
    [v9 boundingBox];
    *&v10 = v10;
    a2[1] = *&v10;

    v11 = [v8 boundingQuad];
    [v11 boundingBox];
    v13 = v12;
    a2[2] = v13;

    v14 = [v8 boundingQuad];
    [v14 boundingBox];
    v16 = v15;
    a2[3] = v16;

    v17 = [v8 boundingQuad];
    [v17 boundingBox];
    v19 = v18;
    a2[4] = v19;

    v20 = [v8 text];
    v21 = v20;
    v22 = &stru_1F2BB4348;
    if (v20)
    {
      v22 = v20;
    }

    v23 = *(a1 + 48);
    v24 = v22;
    v86 = v23;
    v82 = v24;
    v88 = [(__CFString *)v24 lowercaseString];
    v25 = [v88 _crStringByRemovingParenthesizedText];
    if ([v25 length] >= 0xB)
    {
      v26 = v25;

      v88 = v26;
    }

    v27 = v88;
    std::string::basic_string[abi:ne200100]<0>(&v105, [v88 UTF8String]);
    v107[0] = 0;
    std::vector<float>::vector[abi:ne200100](&v103, 0x12uLL);
    for (i = 0; i != 18; ++i)
    {
      if (!std::string::compare(&v105, (&CRFormContentTypeModelVocabulary::keywords_full_match)[i]))
      {
        *(v103 + i) = 1065353216;
      }
    }

    v29 = MEMORY[0x1E696AEC0];
    v30 = [v86 lowercaseString];
    v31 = [v29 stringWithFormat:@"<LANG_%@>", v30];

    v32 = v31;
    std::string::basic_string[abi:ne200100]<0>(__s1, [v31 UTF8String]);

    v107[0] = 0;
    std::vector<float>::vector[abi:ne200100](&__p, 0x1DFDuLL);
    v80 = (a2 + 5);
    v85 = v21;
    if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v105.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v105.__r_.__value_.__l.__size_;
    }

    v107[0] = 0;
    std::vector<int>::vector[abi:ne200100](v97, size);
    v34 = 0;
    v35 = __p;
    v36 = v97[0];
    do
    {
      v37 = CRFormContentTypeModelVocabulary::keywords[v34];
      v38 = strlen(v37);
      v39 = v38;
      if ((v102 & 0x8000000000000000) != 0)
      {
        if (v38 != __s1[1])
        {
          goto LABEL_26;
        }

        if (v38 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        v40 = __s1[0];
      }

      else
      {
        if (v38 != v102)
        {
          goto LABEL_26;
        }

        v40 = __s1;
      }

      if (!memcmp(v40, v37, v39))
      {
        v35[v34] = v35[v34] + 1.0;
        goto LABEL_43;
      }

LABEL_26:
      v41 = HIBYTE(v105.__r_.__value_.__r.__words[2]);
      if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v42 = &v105;
      }

      else
      {
        v42 = v105.__r_.__value_.__r.__words[0];
      }

      if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v41 = v105.__r_.__value_.__l.__size_;
      }

      if (v39)
      {
        if (v41 >= v39)
        {
          v43 = v42 + v41;
          v44 = *v37;
          v45 = v42;
          do
          {
            v46 = v41 - v39;
            if (v46 == -1)
            {
              break;
            }

            v47 = memchr(v45, v44, v46 + 1);
            if (!v47)
            {
              break;
            }

            v48 = v47;
            if (!memcmp(v47, v37, v39))
            {
              if (v48 != v43)
              {
                v49 = v48 - v42;
                if (v48 - v42 != -1)
                {
                  goto LABEL_40;
                }
              }

              break;
            }

            v45 = (v48 + 1);
            v41 = v43 - (v48 + 1);
          }

          while (v41 >= v39);
        }
      }

      else
      {
        v49 = 0;
LABEL_40:
        v35[v34] = v35[v34] + 1.0;
        v50 = strlen(v37);
        if (v50)
        {
          memset_pattern16(&v36[4 * v49], &unk_1B42AF410, 4 * v50);
        }
      }

LABEL_43:
      ++v34;
    }

    while (v34 != 7677);
    v51 = [v88 componentsSeparatedByString:@" "];
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v52 = v51;
    v53 = v85;
    v54 = [v52 countByEnumeratingWithState:&v93 objects:v107 count:16];
    v55 = v54;
    if (v54)
    {
      v56 = 0;
      v57 = *v94;
      do
      {
        v58 = 0;
        do
        {
          if (*v94 != v57)
          {
            objc_enumerationMutation(v52);
          }

          v59 = 0;
          v60 = *(*(&v93 + 1) + 8 * v58);
          for (j = v56; j < [v60 length] + v56; ++j)
          {
            v59 += *(v97[0] + j);
          }

          if ([v60 length] > v59)
          {
            *(__dst - 1) = *(__dst - 1) + 1.0;
          }

          v56 += [v60 length] + 1;
          ++v58;
        }

        while (v58 != v55);
        v55 = [v52 countByEnumeratingWithState:&v93 objects:v107 count:16];
      }

      while (v55);
    }

    v62 = __dst;
    v63 = v103;
    v64 = v104 - v103;
    v65 = (v104 - v103) >> 2;
    if (v65 >= 1)
    {
      if (v100 - __dst >= v64)
      {
        if (v103 != v104)
        {
          memmove(__dst, v103, v104 - v103);
        }

        v62 += v64;
        __dst = v62;
      }

      else
      {
        v66 = v65 + ((__dst - __p) >> 2);
        if (v66 >> 62)
        {
          std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
        }

        if ((v100 - __p) >> 1 > v66)
        {
          v66 = (v100 - __p) >> 1;
        }

        if ((v100 - __p) >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v67 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v67 = v66;
        }

        if (v67)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__p, v67);
        }

        v68 = 4 * ((__dst - __p) >> 2);
        v69 = (v68 + v64);
        v70 = v68;
        do
        {
          v71 = *v63++;
          *v70++ = v71;
          v64 -= 4;
        }

        while (v64);
        memcpy(v69, v62, __dst - v62);
        v72 = &v69[__dst - v62];
        __dst = v62;
        v73 = v62 - __p;
        v74 = (v68 - (v62 - __p));
        memcpy(v74, __p, v73);
        v75 = __p;
        __p = v74;
        __dst = v72;
        v100 = 0;
        if (v75)
        {
          operator delete(v75);
          v62 = __dst;
        }

        else
        {
          v62 = v72;
        }

        v53 = v85;
      }
    }

    v76 = v62 - __p;
    if (v76)
    {
      memmove(v80, __p, v76);
    }

    if (v97[0])
    {
      v97[1] = v97[0];
      operator delete(v97[0]);
    }

    if (__p)
    {
      __dst = __p;
      operator delete(__p);
    }

    if (v102 < 0)
    {
      operator delete(__s1[0]);
    }

    if (v103)
    {
      v104 = v103;
      operator delete(v103);
    }

    if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v105.__r_.__value_.__l.__data_);
    }

    if (v81 != 127)
    {
      if (++v87 < v83)
      {
        goto LABEL_95;
      }

      v83 = [obj countByEnumeratingWithState:&v89 objects:v106 count:16];
      if (v83)
      {
        v87 = 0;
LABEL_95:
        a2 = &v80[v76];
        v6 = v81 + 1;
        v7 = *v90;
        continue;
      }
    }

    break;
  }

LABEL_96:
}

- (void)_decodeCoreMLOutput:(id)output forFields:(id)fields updateExternal:(BOOL)external
{
  externalCopy = external;
  v28 = *MEMORY[0x1E69E9840];
  outputCopy = output;
  fieldsCopy = fields;
  v15 = outputCopy;
  v7 = [outputCopy featureValueForName:@"score"];
  multiArrayValue = [v7 multiArrayValue];

  v16 = multiArrayValue;
  [multiArrayValue dataPointer];
  shape = [multiArrayValue shape];
  v10 = [shape objectAtIndexedSubscript:2];
  unsignedIntegerValue = [v10 unsignedIntegerValue];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = fieldsCopy;
  v12 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v19 = *v24;
    do
    {
      v13 = 0;
      v21 = v12;
      do
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v23 + 1) + 8 * v13);
        if (unsignedIntegerValue)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<float,unsigned long>>>(1uLL);
        }

        if ([CRFormContentTypeUtilities shouldAssignTextContentTypeForField:v22 updateExternalFields:externalCopy allowOverride:0 allowAllDetectionSources:1])
        {
          std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,std::tuple<float,unsigned long> *,false>(0, 0, 0, 1);
          v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(&CRFormContentTypeModelVocabulary::classnames)[MEMORY[8]]];
          [v22 setTextContentType:{+[CRFormContentTypeUtilities contentTypeFromString:](CRFormContentTypeUtilities, "contentTypeFromString:", v14)}];

          operator delete(0);
        }

        ++v13;
      }

      while (v13 != v21);
      v12 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }
}

- (void)_decodeEspressoOutput:(id *)output forFields:(id)fields locale:(id)locale updateExternal:(BOOL)external
{
  v48 = *MEMORY[0x1E69E9840];
  fieldsCopy = fields;
  localeCopy = locale;
  std::string::basic_string[abi:ne200100]<0>(&__p, "None");
  v8 = v46;
  v9 = &CRFormContentTypeModelVocabulary::classnames;
  v10 = __p;
  v11 = v45;
  v12 = 272;
  do
  {
    v13 = strlen(*v9);
    v14 = v13;
    if ((v8 & 0x80) != 0)
    {
      if (v13 != v11)
      {
        goto LABEL_8;
      }

      p_p = v10;
      if (v11 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }
    }

    else
    {
      if (v13 != v8)
      {
        goto LABEL_8;
      }

      p_p = &__p;
    }

    if (!memcmp(p_p, *v9, v14))
    {
      break;
    }

LABEL_8:
    ++v9;
    v12 -= 8;
  }

  while (v12);
  if ((v8 & 0x80) != 0)
  {
    operator delete(v10);
  }

  v16 = localeCopy;
  v42 = v16;
  if (v16 && [v16 length] >= 2)
  {
    v17 = [v42 substringToIndex:2];
    v18 = v17;
    std::string::basic_string[abi:ne200100]<0>(&__p, [v17 UTF8String]);

    left = self->_customNoneBonuses.__tree_.__end_node_.__left_;
    p_end_node = &self->_customNoneBonuses.__tree_.__end_node_;
    v20 = left;
    v22 = v46;
    if (left)
    {
      if ((v46 & 0x80u) == 0)
      {
        v23 = v46;
      }

      else
      {
        v23 = v45;
      }

      if ((v46 & 0x80u) == 0)
      {
        v24 = &__p;
      }

      else
      {
        v24 = __p;
      }

      v25 = p_end_node;
      do
      {
        v26 = v20[55];
        if (v26 >= 0)
        {
          v27 = v20[55];
        }

        else
        {
          v27 = *(v20 + 5);
        }

        if (v26 >= 0)
        {
          v28 = v20 + 32;
        }

        else
        {
          v28 = *(v20 + 4);
        }

        if (v23 >= v27)
        {
          v29 = v27;
        }

        else
        {
          v29 = v23;
        }

        v30 = memcmp(v28, v24, v29);
        v31 = v27 < v23;
        if (v30)
        {
          v31 = v30 < 0;
        }

        v32 = !v31;
        if (v31)
        {
          v33 = 8;
        }

        else
        {
          v33 = 0;
        }

        if (v32)
        {
          v25 = v20;
        }

        v20 = *&v20[v33];
      }

      while (v20);
      if (v25 != p_end_node)
      {
        left_high = SHIBYTE(v25[6].__left_);
        if (left_high >= 0)
        {
          v35 = HIBYTE(v25[6].__left_);
        }

        else
        {
          v35 = v25[5].__left_;
        }

        if (left_high >= 0)
        {
          v36 = v25 + 4;
        }

        else
        {
          v36 = v25[4].__left_;
        }

        if (v35 >= v23)
        {
          v37 = v23;
        }

        else
        {
          v37 = v35;
        }

        memcmp(v24, v36, v37);
      }
    }

    if ((v22 & 0x80) != 0)
    {
      operator delete(__p);
    }
  }

  espresso_buffer_unpack_tensor_shape();
  v39 = [fieldsCopy count];
  v40 = v47;
  if (v47 >= v39)
  {
    v40 = v39;
  }

  if (v40)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<float,unsigned long>>>(1uLL);
  }
}

- (BOOL)_predictAndAssignContentTypesForFields:(id)fields fieldsAndRegions:(id)regions locale:(id)locale updateExternal:(BOOL)external
{
  externalCopy = external;
  v65[1] = *MEMORY[0x1E69E9840];
  fieldsCopy = fields;
  regionsCopy = regions;
  localeCopy = locale;
  v13 = [(CRFormContentTypePredictor *)self _modelInputWithFields:fieldsCopy fieldsAndRegions:regionsCopy locale:localeCopy];
  if (v13)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    fields = [v13 fields];
    shape = [fields shape];

    labels = [v13 labels];
    shape2 = [labels shape];
    v40 = externalCopy;

    ptr = selfCopy->_espressoModel.__ptr_;
    fields2 = [v13 fields];
    dataPointer = [fields2 dataPointer];
    *buf = vdupq_n_s64(1uLL);
    v20 = [shape objectAtIndexedSubscript:1];
    unsignedIntegerValue = [v20 unsignedIntegerValue];
    v21 = [shape objectAtIndexedSubscript:2];
    unsignedIntegerValue2 = [v21 unsignedIntegerValue];
    v54 = 0;
    v55 = 0;
    v53 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v53, buf, &v59, 4uLL);
    if (CoreRecognition::EspressoModelWrapper::bindInput(ptr, dataPointer))
    {
      v22 = selfCopy->_espressoModel.__ptr_;
      labels2 = [v13 labels];
      v23 = labels2;
      dataPointer2 = [labels2 dataPointer];
      *v62 = vdupq_n_s64(1uLL);
      v39 = [shape2 objectAtIndexedSubscript:1];
      unsignedIntegerValue3 = [v39 unsignedIntegerValue];
      v38 = [shape2 objectAtIndexedSubscript:2];
      unsignedIntegerValue4 = [v38 unsignedIntegerValue];
      v51 = 0;
      v52 = 0;
      v50 = 0;
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v50, v62, v65, 4uLL);
      if (CoreRecognition::EspressoModelWrapper::bindInput(v22, dataPointer2))
      {
        v25 = selfCopy->_espressoModel.__ptr_;
        v37 = [v13 length];
        v26 = v37;
        dataPointer3 = [v37 dataPointer];
        v61[0] = xmmword_1B42AF3F0;
        v61[1] = unk_1B42AF400;
        v48 = 0;
        v49 = 0;
        v47 = 0;
        std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v47, v61, v62, 4uLL);
        if (CoreRecognition::EspressoModelWrapper::bindInput(v25, dataPointer3))
        {
          v28 = selfCopy->_espressoModel.__ptr_;
          num_labels = [v13 num_labels];
          dataPointer4 = [num_labels dataPointer];
          v60[0] = xmmword_1B42AF3F0;
          v60[1] = unk_1B42AF400;
          v45 = 0;
          v46 = 0;
          __p = 0;
          std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&__p, v60, v61, 4uLL);
          v30 = CoreRecognition::EspressoModelWrapper::bindInput(v28, dataPointer4);
          if (__p)
          {
            v45 = __p;
            operator delete(__p);
          }

          v31 = v30 ^ 1;
        }

        else
        {
          v31 = 1;
        }

        if (v47)
        {
          v48 = v47;
          operator delete(v47);
        }
      }

      else
      {
        v31 = 1;
      }

      if (v50)
      {
        v51 = v50;
        operator delete(v50);
      }
    }

    else
    {
      v31 = 1;
    }

    if (v53)
    {
      v54 = v53;
      operator delete(v53);
    }

    if (v31)
    {
      v33 = CROSLogForCategory(0);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        *&buf[4] = "[CRFormContentTypePredictor _predictAndAssignContentTypesForFields:fieldsAndRegions:locale:updateExternal:]";
        _os_log_impl(&dword_1B40D2000, v33, OS_LOG_TYPE_FAULT, "%s: Input binding failed for Espresso model", buf, 0xCu);
      }

      goto LABEL_32;
    }

    if (CoreRecognition::EspressoModelWrapper::bindOutput(selfCopy->_espressoModel.__ptr_, buf, "score", 1))
    {
      if (CoreRecognition::EspressoModelWrapper::execute(selfCopy->_espressoModel.__ptr_))
      {
        [(CRFormContentTypePredictor *)selfCopy _decodeEspressoOutput:buf forFields:fieldsCopy locale:localeCopy updateExternal:v40];
        v32 = 1;
LABEL_33:

        objc_sync_exit(selfCopy);
        goto LABEL_34;
      }

      v33 = CROSLogForCategory(0);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        *v62 = 136315138;
        *&v62[4] = "[CRFormContentTypePredictor _predictAndAssignContentTypesForFields:fieldsAndRegions:locale:updateExternal:]";
        v34 = "%s: Inference failed for Espresso model";
        goto LABEL_31;
      }
    }

    else
    {
      v33 = CROSLogForCategory(0);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        *v62 = 136315138;
        *&v62[4] = "[CRFormContentTypePredictor _predictAndAssignContentTypesForFields:fieldsAndRegions:locale:updateExternal:]";
        v34 = "%s: Output binding failed for Espresso model";
LABEL_31:
        _os_log_impl(&dword_1B40D2000, v33, OS_LOG_TYPE_FAULT, v34, v62, 0xCu);
      }
    }

LABEL_32:

    v32 = 0;
    goto LABEL_33;
  }

  v32 = 0;
LABEL_34:

  return v32;
}

- (BOOL)predictAndAssignContentTypesForFields:(id)fields fieldsAndRegions:(id)regions locale:(id)locale updateExternal:(BOOL)external
{
  externalCopy = external;
  v52 = *MEMORY[0x1E69E9840];
  fieldsCopy = fields;
  regionsCopy = regions;
  localeCopy = locale;
  v36 = objc_opt_new();
  v9 = 0;
  for (i = 1; ; ++i)
  {
    v11 = [regionsCopy count];
    v12 = i - 1;
    if (i - 1 >= v11)
    {
      break;
    }

    v13 = [regionsCopy objectAtIndexedSubscript:i - 1];
    v14 = &unk_1F2C0BF90;
    v15 = v13;
    if ([v15 conformsToProtocol:v14])
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      v17 = CRCastAsClass<CRFormField>(v16);
      v18 = v17;
      if (!v17 || ([v17 originalField], v19 = objc_claimAutoreleasedReturnValue(), v20 = v19 == 0, v19, v20))
      {
        [v36 addObject:v16];
      }

      else
      {
        originalField = [v18 originalField];
        [v36 addObject:originalField];
      }
    }

    if (i - v9 - [v36 count] == 128 || objc_msgSend(v36, "count") == 128 || i == objc_msgSend(regionsCopy, "count"))
    {
      v22 = [regionsCopy subarrayWithRange:{v9, i - v9}];
      v23 = CROSLogForCategory(6);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v24 = [regionsCopy count];
        v25 = [v36 count];
        *buf = 136316162;
        v43 = "[CRFormContentTypePredictor predictAndAssignContentTypesForFields:fieldsAndRegions:locale:updateExternal:]";
        v44 = 2048;
        v45 = v9;
        v46 = 2048;
        v47 = i - 1;
        v48 = 2048;
        v49 = v24;
        v50 = 2048;
        v51 = v25;
        _os_log_impl(&dword_1B40D2000, v23, OS_LOG_TYPE_DEBUG, "%s: Predicting content types for range #%lu–%lu/%lu (including %lu fields)", buf, 0x34u);
      }

      if ([v36 count] && !-[CRFormContentTypePredictor _predictAndAssignContentTypesForFields:fieldsAndRegions:locale:updateExternal:](self, "_predictAndAssignContentTypesForFields:fieldsAndRegions:locale:updateExternal:", v36, v22, localeCopy, externalCopy))
      {

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v26 = fieldsCopy;
        v27 = [v26 countByEnumeratingWithState:&v37 objects:v41 count:16];
        if (v27)
        {
          v28 = *v38;
          do
          {
            for (j = 0; j != v27; ++j)
            {
              if (*v38 != v28)
              {
                objc_enumerationMutation(v26);
              }

              v30 = *(*(&v37 + 1) + 8 * j);
              if ([CRFormContentTypeUtilities shouldAssignTextContentTypeForField:v30 updateExternalFields:externalCopy allowOverride:1 allowAllDetectionSources:1])
              {
                [v30 setTextContentType:1];
              }
            }

            v27 = [v26 countByEnumeratingWithState:&v37 objects:v41 count:16];
          }

          while (v27);
        }

        break;
      }

      [v36 removeAllObjects];
      if (v9 + 1 > i - 25)
      {
        ++v9;
      }

      else
      {
        v9 = i - 25;
      }
    }
  }

  return v12 >= v11;
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 3) = 0;
  *(self + 1) = 0;
  *(self + 2) = self + 24;
  return self;
}

@end