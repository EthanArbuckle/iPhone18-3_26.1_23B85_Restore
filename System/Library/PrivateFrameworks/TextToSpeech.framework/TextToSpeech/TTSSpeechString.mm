@interface TTSSpeechString
- (BOOL)_rangeIsValid:(_NSRange)valid;
- (BOOL)encapsulateSubstringAtRange:(_NSRange)range withPrefix:(id)prefix andSuffix:(id)suffix;
- (BOOL)insertAtLocation:(unint64_t)location string:(id)string;
- (BOOL)transformRange:(_NSRange)range to:(id)to;
- (NSString)defrostedTransformedString;
- (NSString)transformedString;
- (TTSSpeechString)initWithOriginalString:(id)string;
- (TTSSpeechString)initWithParentSpeechString:(id)string;
- (TTSSpeechString)initWithSSMLString:(id)string;
- (_NSRange)_translateRangeInTransformedString:(_NSRange)string withParent:(id)parent;
- (_NSRange)translateRangeInTransformedString:(_NSRange)string;
- (id)_transformedStringNonMutating;
- (id)xmlEscaped;
- (id)xmlUnescaped;
- (void)_insertTransformation:(id)transformation forEncapsulatedTerminator:(BOOL)terminator;
- (void)replaceOccurencesOfString:(id)string withString:(id)withString;
@end

@implementation TTSSpeechString

- (TTSSpeechString)initWithParentSpeechString:(id)string
{
  stringCopy = string;
  v29.receiver = self;
  v29.super_class = TTSSpeechString;
  v10 = [(TTSSpeechString *)&v29 init];
  if (v10)
  {
    v11 = objc_msgSend_transformedString(stringCopy, v6, v7, v8, v9);
    v16 = objc_msgSend_copy(v11, v12, v13, v14, v15);
    originalString = v10->_originalString;
    v10->_originalString = v16;

    objc_storeStrong(&v10->_parentString, string);
    v22 = objc_msgSend_array(MEMORY[0x1E695DF70], v18, v19, v20, v21);
    transformations = v10->_transformations;
    v10->_transformations = v22;

    v10->_type = objc_msgSend_type(stringCopy, v24, v25, v26, v27);
  }

  return v10;
}

- (TTSSpeechString)initWithOriginalString:(id)string
{
  stringCopy = string;
  v19.receiver = self;
  v19.super_class = TTSSpeechString;
  v9 = [(TTSSpeechString *)&v19 init];
  if (v9)
  {
    v10 = objc_msgSend_copy(stringCopy, v5, v6, v7, v8);
    originalString = v9->_originalString;
    v9->_originalString = v10;

    v16 = objc_msgSend_array(MEMORY[0x1E695DF70], v12, v13, v14, v15);
    transformations = v9->_transformations;
    v9->_transformations = v16;

    v9->_type = 0;
  }

  return v9;
}

- (TTSSpeechString)initWithSSMLString:(id)string
{
  result = objc_msgSend_initWithOriginalString_(self, a2, string, v3, v4);
  result->_type = 1;
  return result;
}

- (void)replaceOccurencesOfString:(id)string withString:(id)withString
{
  withStringCopy = withString;
  stringCopy = string;
  v12 = objc_msgSend_sharedInstance(TTSRegexCache, v8, v9, v10, v11);
  v16 = objc_msgSend_regexForString_(v12, v13, stringCopy, v14, v15);

  v21 = objc_msgSend_originalString(self, v17, v18, v19, v20);
  v26 = objc_msgSend_originalString(self, v22, v23, v24, v25);
  v31 = objc_msgSend_length(v26, v27, v28, v29, v30);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = sub_1A9369AA0;
  v34[3] = &unk_1E7880530;
  v34[4] = self;
  v35 = withStringCopy;
  v32 = withStringCopy;
  objc_msgSend_enumerateMatchesInString_options_range_usingBlock_(v16, v33, v21, 2, 0, v31, v34);
}

- (BOOL)transformRange:(_NSRange)range to:(id)to
{
  length = range.length;
  location = range.location;
  v37 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (objc_msgSend__rangeIsValid_(self, v8, location, length, v9))
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v14 = objc_msgSend_transformations(self, v10, v11, v12, v13, 0);
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v32, v36, 16);
    if (v16)
    {
      v21 = v16;
      v22 = *v33;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v33 != v22)
          {
            objc_enumerationMutation(v14);
          }

          v39.location = objc_msgSend_range(*(*(&v32 + 1) + 8 * i), v17, v18, v19, v20);
          v39.length = v24;
          v38.location = location;
          v38.length = length;
          v17 = NSIntersectionRange(v38, v39).length;
          if (v17)
          {
            v29 = 0;
            goto LABEL_13;
          }
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, 0, &v32, v36, 16);
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    v25 = [TTSStringTransformation alloc];
    v14 = objc_msgSend_initWithRange_andReplacement_(v25, v26, location, length, toCopy);
    objc_msgSend__insertTransformation_forEncapsulatedTerminator_(self, v27, v14, 0, v28);
    v29 = 1;
LABEL_13:
  }

  else
  {
    v29 = 0;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v29;
}

- (BOOL)insertAtLocation:(unint64_t)location string:(id)string
{
  stringCopy = string;
  v11 = objc_msgSend_originalString(self, v7, v8, v9, v10);
  v16 = objc_msgSend_length(v11, v12, v13, v14, v15);

  if (v16 >= location)
  {
    v17 = [TTSStringTransformation alloc];
    v19 = objc_msgSend_initWithRange_andReplacement_(v17, v18, location, 0, stringCopy);
    objc_msgSend__insertTransformation_forEncapsulatedTerminator_(self, v20, v19, 0, v21);
  }

  return v16 >= location;
}

- (BOOL)encapsulateSubstringAtRange:(_NSRange)range withPrefix:(id)prefix andSuffix:(id)suffix
{
  length = range.length;
  location = range.location;
  prefixCopy = prefix;
  suffixCopy = suffix;
  IsValid = objc_msgSend__rangeIsValid_(self, v11, location, length, v12);
  if (IsValid)
  {
    if (objc_msgSend_length(prefixCopy, v13, v14, v15, v16))
    {
      objc_msgSend_insertAtLocation_string_(self, v18, location, prefixCopy, v21);
    }

    if (objc_msgSend_length(suffixCopy, v18, v19, v20, v21))
    {
      v22 = [TTSStringTransformation alloc];
      v24 = objc_msgSend_initWithRange_andReplacement_(v22, v23, location + length, 0, suffixCopy);
      objc_msgSend__insertTransformation_forEncapsulatedTerminator_(self, v25, v24, 1, v26);
    }
  }

  return IsValid;
}

- (_NSRange)translateRangeInTransformedString:(_NSRange)string
{
  length = string.length;
  location = string.location;
  v7 = objc_msgSend_parentString(self, a2, string.location, string.length, v3);
  v9 = objc_msgSend__translateRangeInTransformedString_withParent_(self, v8, location, length, v7);
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.length = v13;
  result.location = v12;
  return result;
}

- (_NSRange)_translateRangeInTransformedString:(_NSRange)string withParent:(id)parent
{
  length = string.length;
  location = string.location;
  v110 = *MEMORY[0x1E69E9840];
  parentCopy = parent;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v12 = objc_msgSend_transformations(self, v8, v9, v10, v11);
  v17 = objc_msgSend_reverseObjectEnumerator(v12, v13, v14, v15, v16);

  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v105, v109, 16);
  if (v19)
  {
    v24 = v19;
    v25 = 0;
    v26 = *v106;
    v104 = parentCopy;
    while (2)
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v106 != v26)
        {
          objc_enumerationMutation(v17);
        }

        v28 = *(*(&v105 + 1) + 8 * i);
        v115.location = objc_msgSend_finalRange(v28, v20, v21, v22, v23);
        v115.length = v29;
        v111.location = location;
        v111.length = length;
        v33 = NSIntersectionRange(v111, v115);
        if (v33.length == length)
        {
          v42 = objc_msgSend_range(v28, v33.length, v30, v31, v32);
          length = v40;
          parentCopy = v104;
          if (v104)
          {
            v43 = objc_msgSend_translateRangeInTransformedString_(v104, v40, v42, v40, v41);
            goto LABEL_25;
          }

LABEL_26:

          goto LABEL_27;
        }

        v34 = objc_msgSend_finalRange(v28, v33.length, v30, v31, v32);
        if (v33.length)
        {
          v39 = 1;
        }

        else
        {
          v39 = location >= v34;
        }

        if (!v39)
        {
          parentCopy = v104;
          goto LABEL_19;
        }

        if (v33.length)
        {
          v116.location = objc_msgSend_finalRange(v28, v35, v36, v37, v38);
          v116.length = v48;
          v112.location = location;
          v112.length = length;
          v49 = NSUnionRange(v112, v116);
          v53 = objc_msgSend_finalRange(v28, v49.length, v50, v51, v52);
          objc_msgSend_finalRange(v28, v54, v55, v56, v57);
          v59 = v58;
          v63 = objc_msgSend_finalRange(v28, v58, v60, v61, v62);
          objc_msgSend_finalRange(v28, v64, v65, v66, v67);
          v69 = v68;
          v73 = objc_msgSend_finalRange(v28, v68, v70, v71, v72);
          v102 = v74;
          v103 = v73;
          if (v49.location >= objc_msgSend_finalRange(v28, v74, v75, v76, v77))
          {
            v83 = &v59[v53];
            v82 = v49.location + v49.length - &v69[v63];
          }

          else
          {
            v82 = objc_msgSend_finalRange(v28, v78, v79, v80, v81) - v49.location;
            v83 = v49.location;
          }

          parentCopy = v104;
          v84 = objc_msgSend_parentString(self, v78, v79, v80, v81);
          v86 = objc_msgSend__translateRangeInTransformedString_withParent_(self, v85, v83, v82, v84);
          v88 = v87;

          v93 = objc_msgSend_parentString(self, v89, v90, v91, v92);
          v95 = objc_msgSend__translateRangeInTransformedString_withParent_(self, v94, v103, v102, v93);
          v97 = v96;

          v113.location = v95;
          v113.length = v97;
          v117.location = v86;
          v117.length = v88;
          v98 = NSUnionRange(v113, v117);
          v44 = v98.length;
          v43 = v98.location;
LABEL_25:
          v42 = v43;
          length = v44;
          goto LABEL_26;
        }

        v25 += objc_msgSend_sizeDelta(v28, v35, v36, v37, v38);
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v105, v109, 16);
      parentCopy = v104;
      if (v24)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v25 = 0;
  }

LABEL_19:

  v42 = location - v25;
  if (parentCopy)
  {
    v42 = objc_msgSend_translateRangeInTransformedString_(parentCopy, v45, location - v25, length, v46);
    length = v47;
  }

LABEL_27:

  v99 = *MEMORY[0x1E69E9840];
  v100 = v42;
  v101 = length;
  result.length = v101;
  result.location = v100;
  return result;
}

- (NSString)defrostedTransformedString
{
  transformedString = self->_transformedString;
  if (transformedString)
  {
    v6 = transformedString;
  }

  else
  {
    v6 = objc_msgSend__transformedStringNonMutating(self, a2, v2, v3, v4);
  }

  return v6;
}

- (id)_transformedStringNonMutating
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_originalString(self, a2, v2, v3, v4);
  v11 = objc_msgSend_copy(v6, v7, v8, v9, v10);

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v16 = objc_msgSend_transformations(self, v12, v13, v14, v15, 0);
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v38, v42, 16);
  if (v18)
  {
    v23 = v18;
    v24 = *v39;
    do
    {
      v25 = 0;
      v26 = v11;
      do
      {
        if (*v39 != v24)
        {
          objc_enumerationMutation(v16);
        }

        v27 = *(*(&v38 + 1) + 8 * v25);
        v28 = objc_msgSend_range(v27, v19, v20, v21, v22);
        v30 = v29;
        v34 = objc_msgSend_replacement(v27, v29, v31, v32, v33);
        v11 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v26, v35, v28, v30, v34);

        ++v25;
        v26 = v11;
      }

      while (v23 != v25);
      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v38, v42, 16);
    }

    while (v23);
  }

  v36 = *MEMORY[0x1E69E9840];

  return v11;
}

- (NSString)transformedString
{
  v126 = *MEMORY[0x1E69E9840];
  transformedString = self->_transformedString;
  if (transformedString)
  {
    v6 = transformedString;
  }

  else
  {
    v8 = objc_msgSend_originalString(self, a2, v2, v3, v4);
    v13 = objc_msgSend_copy(v8, v9, v10, v11, v12);

    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    selfCopy = self;
    obj = objc_msgSend_transformations(self, v14, v15, v16, v17);
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v120, v125, 16);
    if (v19)
    {
      v24 = v19;
      v25 = 0;
      v26 = *v121;
      do
      {
        v27 = 0;
        v28 = v13;
        do
        {
          if (*v121 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v120 + 1) + 8 * v27);
          v30 = objc_msgSend_range(v29, v20, v21, v22, v23);
          v32 = v31;
          v36 = objc_msgSend_replacement(v29, v31, v33, v34, v35);
          v13 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v28, v37, v30, v32, v36);

          v42 = objc_msgSend_originalString(selfCopy, v38, v39, v40, v41);
          v47 = objc_msgSend_length(v42, v43, v44, v45, v46);
          v52 = objc_msgSend_range(v29, v48, v49, v50, v51);
          objc_msgSend_range(v29, v53, v54, v55, v56);
          v58 = v57;

          objc_msgSend_setOffsetFromEnd_(v29, v59, v47 + v25 - (v52 + v58), v60, v61);
          v25 += objc_msgSend_sizeDelta(v29, v62, v63, v64, v65);
          ++v27;
          v28 = v13;
        }

        while (v24 != v27);
        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v120, v125, 16);
      }

      while (v24);
    }

    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v70 = objc_msgSend_transformations(selfCopy, v66, v67, v68, v69);
    v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v70, v71, &v116, v124, 16);
    if (v72)
    {
      v77 = v72;
      v78 = *v117;
      do
      {
        for (i = 0; i != v77; ++i)
        {
          if (*v117 != v78)
          {
            objc_enumerationMutation(v70);
          }

          v80 = *(*(&v116 + 1) + 8 * i);
          v81 = objc_msgSend_length(v13, v73, v74, v75, v76);
          v86 = objc_msgSend_offsetFromEnd(v80, v82, v83, v84, v85);
          v91 = objc_msgSend_replacement(v80, v87, v88, v89, v90);
          v96 = objc_msgSend_length(v91, v92, v93, v94, v95);
          v97 = v81 - v86;
          v102 = objc_msgSend_replacement(v80, v98, v99, v100, v101);
          v107 = objc_msgSend_length(v102, v103, v104, v105, v106);
          objc_msgSend_setFinalRange_(v80, v108, v97 - v96, v107, v109);
        }

        v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(v70, v73, &v116, v124, 16);
      }

      while (v77);
    }

    v110 = selfCopy->_transformedString;
    selfCopy->_transformedString = v13;
    v111 = v13;

    v6 = selfCopy->_transformedString;
  }

  v112 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)_rangeIsValid:(_NSRange)valid
{
  if (self->_transformedString)
  {
    return 0;
  }

  length = valid.length;
  location = valid.location;
  v7 = objc_msgSend_originalString(self, a2, valid.location, valid.length, v3);
  v14.length = objc_msgSend_length(v7, v8, v9, v10, v11);
  v13.location = location;
  v13.length = length;
  v14.location = 0;
  v4 = NSIntersectionRange(v13, v14).length == length;

  return v4;
}

- (void)_insertTransformation:(id)transformation forEncapsulatedTerminator:(BOOL)terminator
{
  terminatorCopy = terminator;
  transformationCopy = transformation;
  if (!terminatorCopy)
  {
    goto LABEL_3;
  }

  v12 = objc_msgSend_transformations(self, v7, v8, v9, v10);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = sub_1A936A7D4;
  v41[3] = &unk_1E7880DB0;
  v4 = &v42;
  v13 = transformationCopy;
  v42 = v13;
  v17 = objc_msgSend_indexOfObjectPassingTest_(v12, v14, v41, v15, v16);

  if (v17 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = objc_msgSend_transformations(self, v7, v8, v9, v10);
    objc_msgSend_insertObject_atIndex_(v18, v22, v13, v17, v23);
  }

  else
  {
LABEL_3:
    v18 = objc_msgSend_transformations(self, v7, v8, v9, v10);
    objc_msgSend_addObject_(v18, v19, transformationCopy, v20, v21);
  }

  v28 = objc_msgSend_transformations(self, v24, v25, v26, v27);
  v32 = objc_msgSend_sortedArrayUsingComparator_(v28, v29, &unk_1F1CEDC28, v30, v31);
  v37 = objc_msgSend_mutableCopy(v32, v33, v34, v35, v36);
  objc_msgSend_setTransformations_(self, v38, v37, v39, v40);

  if (terminatorCopy)
  {
  }
}

- (id)xmlEscaped
{
  objc_msgSend_replaceOccurencesOfString_withString_(self, a2, @"&", @"&amp;", v2);
  objc_msgSend_replaceOccurencesOfString_withString_(self, v4, @">", @"&gt;", v5);
  objc_msgSend_replaceOccurencesOfString_withString_(self, v6, @", @"&quot;"", v7);
  objc_msgSend_replaceOccurencesOfString_withString_(self, v8, @"'", @"&apos;", v9);
  objc_msgSend_replaceOccurencesOfString_withString_(self, v10, @"<", @"&lt;", v11);
  v12 = [TTSSpeechString alloc];
  v16 = objc_msgSend_initWithParentSpeechString_(v12, v13, self, v14, v15);

  return v16;
}

- (id)xmlUnescaped
{
  objc_msgSend_replaceOccurencesOfString_withString_(self, a2, @"&lt;", @"<", v2);
  objc_msgSend_replaceOccurencesOfString_withString_(self, v4, @"&gt;", @">", v5);
  objc_msgSend_replaceOccurencesOfString_withString_(self, v6, @"&quot;", @"", v7);
  objc_msgSend_replaceOccurencesOfString_withString_(self, v8, @"&apos;", @"'", v9);
  objc_msgSend_replaceOccurencesOfString_withString_(self, v10, @"&amp;", @"&", v11);
  v12 = [TTSSpeechString alloc];
  v16 = objc_msgSend_initWithParentSpeechString_(v12, v13, self, v14, v15);

  return v16;
}

@end