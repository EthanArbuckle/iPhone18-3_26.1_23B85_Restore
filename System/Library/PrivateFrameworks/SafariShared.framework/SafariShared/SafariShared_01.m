void fillPostCode(void *a1, void *a2, void *a3, void *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v33 = a4;
  v10 = [v9 count];
  v11 = v8;
  {
    v31 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
    postCodeCandidates(NSString *,BOOL)::nonAlphanumericSet = [v31 invertedSet];
  }

  v12 = [v11 componentsSeparatedByCharactersInSet:{postCodeCandidates(NSString *, BOOL)::nonAlphanumericSet}];
  v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
  v14 = v13;
  if (v10 <= 1)
  {
    [v13 addObject:v11];
    v15 = [MEMORY[0x1E696AD60] stringWithCapacity:{objc_msgSend(v11, "length")}];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = ___ZL18postCodeCandidatesP8NSStringb_block_invoke;
    v38[3] = &unk_1E7FC5A28;
    v16 = v15;
    v39 = v16;
    [v12 enumerateObjectsUsingBlock:v38];
    [v14 addObject:v16];
  }

  v17 = [v12 componentsJoinedByString:&stru_1F3A5E418];
  [v14 addObject:v17];

  v18 = v11;
  if ([v18 length] >= 9 && (objc_msgSend(MEMORY[0x1E696AB08], "letterCharacterSet"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v18, "rangeOfCharacterFromSet:", v19) == 0x7FFFFFFFFFFFFFFFLL, v19, v20))
  {
    {
      v32 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
      shortZIPCodeForExtendedZIPCode(NSString *)::nonDigitSet = [v32 invertedSet];
    }

    v21 = [v18 componentsSeparatedByCharactersInSet:shortZIPCodeForExtendedZIPCode(NSString *)::nonDigitSet];
    v22 = [v21 componentsJoinedByString:&stru_1F3A5E418];

    if ([v22 length] == 9)
    {
      v23 = [v22 substringToIndex:5];
    }

    else
    {
      v23 = 0;
    }

    if (v23)
    {
      [v14 addObject:v23];
    }
  }

  else
  {

    v23 = 0;
  }

  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v24 = v14;
  v25 = [v24 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v25)
  {
    v26 = *v35;
LABEL_14:
    v27 = 0;
    while (1)
    {
      if (*v35 != v26)
      {
        objc_enumerationMutation(v24);
      }

      v28 = *(*(&v34 + 1) + 8 * v27);
      if ([v9 count] == 1)
      {
        v29 = [v9 objectAtIndexedSubscript:0];
        v30 = fillSingleFieldValue(v7, v28, v29);

        if (v30)
        {
          break;
        }
      }

      if ([v9 count] >= 2 && valueFitsInFields(v28, v9))
      {
        fillMultiFieldValue(v7, v28, v9, v33);
        break;
      }

      if (v25 == ++v27)
      {
        v25 = [v24 countByEnumeratingWithState:&v34 objects:v40 count:16];
        if (v25)
        {
          goto LABEL_14;
        }

        break;
      }
    }
  }
}

void fillInstantMessageUsername(void *a1, void *a2, void *a3)
{
  v8 = a1;
  v5 = a2;
  v6 = a3;
  if ([v6 count] == 1)
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    fillSingleFieldValue(v8, v5, v7);
  }
}

void sub_1BB77DEF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void recordValueForTextField(NSMutableDictionary *a1, NSString *a2, WBSFormControlMetadata *a3)
{
  v10 = a1;
  v5 = a2;
  v6 = a3;
  v7 = [(WBSFormControlMetadata *)v6 value];
  v8 = [(NSString *)v5 isEqualToString:v7];

  if (!v8)
  {
    v9 = [(WBSFormControlMetadata *)v6 uniqueID];
    [(NSMutableDictionary *)v10 setObject:v5 forKeyedSubscript:v9];
  }
}

void sub_1BB77DFD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void recordIndexForSelectElement(NSMutableDictionary *a1, unint64_t a2, WBSFormControlMetadata *a3)
{
  v8 = a1;
  v5 = a3;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
  v7 = [(WBSFormControlMetadata *)v5 uniqueID];
  [(NSMutableDictionary *)v8 setObject:v6 forKeyedSubscript:v7];
}

void sub_1BB77E0A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void recordValueForTextarea(NSMutableDictionary *a1, NSString *a2, WBSFormControlMetadata *a3)
{
  v7 = a1;
  v5 = a2;
  v6 = [(WBSFormControlMetadata *)a3 uniqueID];
  [(NSMutableDictionary *)v7 setObject:v5 forKeyedSubscript:v6];
}

id uniqueIDForAutoFillOfControl(WBSFormControlMetadata *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  if (!v3 || [(WBSFormControlMetadata *)v3 isDisabled]|| [(WBSFormControlMetadata *)v4 isReadOnly])
  {
    v5 = 0;
    goto LABEL_5;
  }

  v7 = [(WBSFormControlMetadata *)v4 classification];
  if ((WBSIsEqual() & 1) == 0 && ((a2 & 1) != 0 || ![(WBSFormControlMetadata *)v4 disallowsAutocomplete]))
  {
    v8 = [(WBSFormControlMetadata *)v4 tagName];
    v9 = [(WBSFormControlMetadata *)v4 isTextField];
    if (([v8 safari_isCaseInsensitiveEqualToString:@"input"] & 1) != 0 || objc_msgSend(v8, "safari_isCaseInsensitiveEqualToString:", @"textarea"))
    {
      if (!v9 && (WBSIsEqual() & 1) == 0)
      {
        goto LABEL_23;
      }

      if ((a2 & 1) == 0 && [(WBSFormControlMetadata *)v4 isSecureTextField])
      {
        goto LABEL_23;
      }

      v10 = [(WBSFormControlMetadata *)v4 isActive]? 2 : 4;
      if ((v10 & a2) == 0)
      {
        v11 = [(WBSFormControlMetadata *)v4 value];
        v12 = [v11 length];

        if (v12)
        {
          goto LABEL_23;
        }
      }
    }

    else if (![v8 safari_isCaseInsensitiveEqualToString:@"select"])
    {
LABEL_23:
      v5 = 0;
LABEL_32:

      goto LABEL_33;
    }

    v13 = [(WBSFormControlMetadata *)v4 uniqueID];
    v14 = [v13 length];
    if (v14)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = v13;
    }

    goto LABEL_32;
  }

  v5 = 0;
LABEL_33:

LABEL_5:

  return v5;
}

id allControlsContinuationStartingAtIndex(void *a1, unint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [v3 objectAtIndexedSubscript:a2];
  v5 = [v4 continuationID];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    while (a2 < [v3 count])
    {
      v7 = [v3 objectAtIndexedSubscript:a2];
      if ([v7 continuationID] != v5)
      {

        break;
      }

      [v6 addObject:v7];

      ++a2;
    }
  }

  else
  {
    v9[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  return v6;
}

void recordTypeForFieldIfFilled(void *a1, void *a2, void *a3, uint64_t a4)
{
  v11 = a1;
  v7 = a2;
  v8 = a3;
  v9 = [v11 objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    [v7 setObject:v10 forKeyedSubscript:v8];
  }
}

void sub_1BB77F29C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

BOOL fillCreditCardType(NSMutableDictionary *a1, WBSFormControlMetadata *a2, NSString *a3)
{
  v70 = *MEMORY[0x1E69E9840];
  v45 = a1;
  v5 = a2;
  v43 = a3;
  v44 = v5;
  v6 = WBSCreditCardTypeFromNumberAllowingPartialMatch();
  if (v6)
  {
    v49 = WBSCreditCardTypeSynonyms(v6);
    if (!v49)
    {
      v10 = 0;
LABEL_53:

      goto LABEL_54;
    }

    v7 = [(WBSFormControlMetadata *)v5 selectElementInfo];
    v8 = v7;
    if (v7)
    {
      v9 = indexOfItemInSelectElement(v7, v49);
      v10 = v9 != 0x7FFFFFFFFFFFFFFFLL;
      if (v9 != 0x7FFFFFFFFFFFFFFFLL)
      {
        recordIndexForSelectElement(v45, v9, v5);
      }

      goto LABEL_53;
    }

    v11 = [(WBSFormControlMetadata *)v5 radioButtonInfo];
    v12 = v11;
    if (!v11)
    {
      v36 = WBSCreditCardTypeLocalizedName();
      recordValueForTextField(v45, v36, v5);

      v10 = 1;
LABEL_52:

      goto LABEL_53;
    }

    v38 = v11;
    v13 = [MEMORY[0x1E696AB50] setWithCapacity:{objc_msgSend(v11, "count")}];
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = v12;
    v39 = [obj countByEnumeratingWithState:&v62 objects:v69 count:16];
    if (v39)
    {
      v40 = *v63;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v63 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v62 + 1) + 8 * i);
          v15 = [obj safari_arrayForKey:v14];
          v16 = v15;
          if (v15)
          {
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
            v46 = v15;
            v17 = [v46 countByEnumeratingWithState:&v58 objects:v68 count:16];
            if (v17)
            {
              v47 = *v59;
              do
              {
                v18 = 0;
                v48 = v17;
                do
                {
                  if (*v59 != v47)
                  {
                    objc_enumerationMutation(v46);
                  }

                  v19 = *(*(&v58 + 1) + 8 * v18);
                  v54 = 0u;
                  v55 = 0u;
                  v56 = 0u;
                  v57 = 0u;
                  v20 = v49;
                  v21 = [(NSArray *)v20 countByEnumeratingWithState:&v54 objects:v67 count:16];
                  if (v21)
                  {
                    v22 = *v55;
                    do
                    {
                      for (j = 0; j != v21; ++j)
                      {
                        if (*v55 != v22)
                        {
                          objc_enumerationMutation(v20);
                        }

                        if ([v19 rangeOfString:*(*(&v54 + 1) + 8 * j) options:1] != 0x7FFFFFFFFFFFFFFFLL)
                        {
                          [v13 addObject:v14];
                        }
                      }

                      v21 = [(NSArray *)v20 countByEnumeratingWithState:&v54 objects:v67 count:16];
                    }

                    while (v21);
                  }

                  ++v18;
                }

                while (v18 != v48);
                v17 = [v46 countByEnumeratingWithState:&v58 objects:v68 count:16];
              }

              while (v17);
            }
          }
        }

        v39 = [obj countByEnumeratingWithState:&v62 objects:v69 count:16];
      }

      while (v39);
    }

    if ([v13 count])
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v24 = v13;
      v25 = [v24 countByEnumeratingWithState:&v50 objects:v66 count:16];
      v10 = v25 != 0;
      if (!v25)
      {
        v34 = v24;
        goto LABEL_50;
      }

      v26 = 0;
      v27 = 0;
      v28 = *v51;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v51 != v28)
          {
            objc_enumerationMutation(v24);
          }

          v30 = *(*(&v50 + 1) + 8 * k);
          v31 = [v24 countForObject:v30];
          if (v31 > v26)
          {
            v32 = v30;

            v26 = v31;
            v27 = v32;
          }
        }

        v25 = [v24 countByEnumeratingWithState:&v50 objects:v66 count:16];
      }

      while (v25);

      if (v27)
      {
        v33 = v45;
        v34 = v27;
        v35 = [(WBSFormControlMetadata *)v44 uniqueID];
        [(NSMutableDictionary *)v33 setObject:v34 forKeyedSubscript:v35];

LABEL_50:
        goto LABEL_51;
      }
    }

    v10 = 0;
LABEL_51:

    v12 = v38;
    goto LABEL_52;
  }

  v10 = 0;
LABEL_54:

  return v10;
}

void sub_1BB7828C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, uint64_t a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, void *a29, void *a30, _Unwind_Exception *exception_objecta, void *a32, void *a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose((v73 - 224), 8);

  _Block_object_dispose(&STACK[0x210], 8);
  _Unwind_Resume(a1);
}

void sub_1BB783BA8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1BB783E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1BB784884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1BB784FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Block_object_dispose((v20 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1BB785208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Block_object_dispose((v20 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1BB785454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Block_object_dispose((v20 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1BB785668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Block_object_dispose((v20 - 64), 8);
  _Unwind_Resume(a1);
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(SortEntry const&,SortEntry const&),SortEntry*,false>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
  for (i = 1 - a4; ; ++i)
  {
    v11 = a2 - v9;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v9) >> 3);
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return;
    }

    if (v12 == 2)
    {
      v33 = *a3;
      v35 = a2 - 3;
      v36 = v9;
      if ((*(v33 + 16))(v33, a2 - 3))
      {
        v31 = &v36;
        v32 = &v35;
        goto LABEL_33;
      }

      return;
    }

LABEL_9:
    if (v11 <= 575)
    {
      if (a5)
      {

        std::__insertion_sort[abi:sn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(SortEntry const&,SortEntry const&),SortEntry*>(v9, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:sn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(SortEntry const&,SortEntry const&),SortEntry*>(v9, a2, a3);
      }

      return;
    }

    if (i == 1)
    {
      if (v9 != a2)
      {

        std::__partial_sort_impl[abi:sn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(SortEntry const&,SortEntry const&),SortEntry*,SortEntry*>(v9, a2, a2, a3);
      }

      return;
    }

    v13 = v12 >> 1;
    v14 = v9 + 24 * (v12 >> 1);
    v15 = (a2 - 3);
    if (v11 < 0xC01)
    {
      std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(SortEntry const&,SortEntry const&),SortEntry*,0>((v9 + 24 * v13), v9, v15, a3);
      if (a5)
      {
        goto LABEL_16;
      }
    }

    else
    {
      std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(SortEntry const&,SortEntry const&),SortEntry*,0>(v9, (v9 + 24 * v13), v15, a3);
      v16 = (v9 + 24 * v13);
      std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(SortEntry const&,SortEntry const&),SortEntry*,0>((v9 + 24), v16 - 3, (a2 - 6), a3);
      std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(SortEntry const&,SortEntry const&),SortEntry*,0>((v9 + 48), v16 + 3, (a2 - 9), a3);
      std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(SortEntry const&,SortEntry const&),SortEntry*,0>(v16 - 3, v16, (v16 + 3), a3);
      v17 = *v9;
      v18 = *(v9 + 8);
      *v9 = 0;
      *(v9 + 8) = 0;
      v19 = *(v9 + 16);
      v20 = *v14;
      *v14 = 0;
      v21 = *v9;
      *v9 = v20;

      v22 = *(v14 + 8);
      *(v14 + 8) = 0;
      v23 = *(v9 + 8);
      *(v9 + 8) = v22;

      *(v9 + 16) = *(v14 + 16);
      v24 = *v14;
      *v14 = v17;

      v25 = *(v14 + 8);
      *(v14 + 8) = v18;

      *(v14 + 16) = v19;
      if (a5)
      {
        goto LABEL_16;
      }
    }

    if (((*(*a3 + 16))() & 1) == 0)
    {
      std::__partition_with_equals_on_left[abi:sn200100]<std::_ClassicAlgPolicy,SortEntry *,BOOL({block_pointer} {__strong}&)(SortEntry const&,SortEntry const&)>(v9, a2, a3);
      a1 = v30;
      goto LABEL_23;
    }

LABEL_16:
    std::__partition_with_equals_on_right[abi:sn200100]<std::_ClassicAlgPolicy,SortEntry *,BOOL({block_pointer} {__strong}&)(SortEntry const&,SortEntry const&)>(v9, a2, a3);
    v27 = v26;
    if ((v28 & 1) == 0)
    {
      goto LABEL_21;
    }

    v29 = std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(SortEntry const&,SortEntry const&),SortEntry*>(v9, v26, a3);
    a1 = (v27 + 3);
    if (!std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(SortEntry const&,SortEntry const&),SortEntry*>(v27 + 3, a2, a3))
    {
      a4 = -i;
      if (v29)
      {
        goto LABEL_1;
      }

LABEL_21:
      std::__introsort<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(SortEntry const&,SortEntry const&),SortEntry*,false>(v9, v27, a3, -i, a5 & 1);
      a1 = (v27 + 3);
LABEL_23:
      a5 = 0;
      a4 = -i;
      goto LABEL_1;
    }

    a2 = v27;
    if (v29)
    {
      return;
    }
  }

  if (v12 == 3)
  {

    std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(SortEntry const&,SortEntry const&),SortEntry*,0>(v9, (v9 + 24), (a2 - 3), a3);
    return;
  }

  if (v12 != 4)
  {
    if (v12 == 5)
    {

      std::__sort5[abi:sn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(SortEntry const&,SortEntry const&),SortEntry*,0>(v9, (v9 + 24), (v9 + 48), (v9 + 72), (a2 - 3), a3);
      return;
    }

    goto LABEL_9;
  }

  v35 = a2 - 3;
  v36 = v9;
  v39 = (v9 + 24);
  v40 = v9;
  v37 = a2 - 3;
  v38 = (v9 + 48);
  std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(SortEntry const&,SortEntry const&),SortEntry*,0>(v9, (v9 + 24), v9 + 48, a3);
  if ((*(*a3 + 16))(*a3, a2 - 3, v9 + 48))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:sn200100]<SortEntry *&,SortEntry *&>(&v38, &v37);
    if ((*(*a3 + 16))(*a3, v38, v9 + 24))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:sn200100]<SortEntry *&,SortEntry *&>(&v39, &v38);
      if ((*(*a3 + 16))(*a3, v39, v9))
      {
        v31 = &v40;
        v32 = &v39;
LABEL_33:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:sn200100]<SortEntry *&,SortEntry *&>(v31, v32);
      }
    }
  }
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:sn200100]<SortEntry *&,SortEntry *&>(uint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a1;
  v5 = (*a1)[1];
  *v2 = 0;
  v2[1] = 0;
  v6 = *(v2 + 4);
  v7 = *v3;
  *v3 = 0;
  v8 = *v2;
  *v2 = v7;

  v9 = *(v3 + 8);
  *(v3 + 8) = 0;
  v10 = v2[1];
  v2[1] = v9;

  *(v2 + 4) = *(v3 + 16);
  v11 = *v3;
  *v3 = v4;

  v12 = *(v3 + 8);
  *(v3 + 8) = v5;

  *(v3 + 16) = v6;
}

uint64_t std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(SortEntry const&,SortEntry const&),SortEntry*,0>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v10 = a2;
  v11 = a1;
  v9 = a3;
  v5 = (*(*a4 + 16))();
  result = (*(*a4 + 16))();
  if (v5)
  {
    if (result)
    {
      v7 = &v11;
LABEL_9:
      v8 = &v9;
      goto LABEL_10;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:sn200100]<SortEntry *&,SortEntry *&>(&v11, &v10);
    if ((*(*a4 + 16))())
    {
      v7 = &v10;
      goto LABEL_9;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:sn200100]<SortEntry *&,SortEntry *&>(&v10, &v9);
    if ((*(*a4 + 16))())
    {
      v7 = &v11;
      v8 = &v10;
LABEL_10:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:sn200100]<SortEntry *&,SortEntry *&>(v7, v8);
    }
  }

  return 1;
}

void std::__sort5[abi:sn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(SortEntry const&,SortEntry const&),SortEntry*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v10 = a2;
  v11 = a1;
  v8 = a4;
  v9 = a3;
  v7 = a5;
  v15 = a1;
  v13 = a3;
  v14 = a2;
  v12 = a4;
  std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(SortEntry const&,SortEntry const&),SortEntry*,0>(a1, a2, a3, a6);
  if ((*(*a6 + 16))())
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:sn200100]<SortEntry *&,SortEntry *&>(&v13, &v12);
    if ((*(*a6 + 16))())
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:sn200100]<SortEntry *&,SortEntry *&>(&v14, &v13);
      if ((*(*a6 + 16))())
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:sn200100]<SortEntry *&,SortEntry *&>(&v15, &v14);
      }
    }
  }

  if ((*(*a6 + 16))())
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:sn200100]<SortEntry *&,SortEntry *&>(&v8, &v7);
    if ((*(*a6 + 16))())
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:sn200100]<SortEntry *&,SortEntry *&>(&v9, &v8);
      if ((*(*a6 + 16))())
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:sn200100]<SortEntry *&,SortEntry *&>(&v10, &v9);
        if ((*(*a6 + 16))())
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:sn200100]<SortEntry *&,SortEntry *&>(&v11, &v10);
        }
      }
    }
  }
}

void std::__insertion_sort[abi:sn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(SortEntry const&,SortEntry const&),SortEntry*>(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = (a1 + 24);
    if ((a1 + 24) != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v5;
        if ((*(*a3 + 16))())
        {
          v10 = *v9;
          *v9 = 0;
          *(v8 + 4) = 0;
          v22 = v10;
          v23 = *(v8 + 10);
          v11 = v7;
          while (1)
          {
            v12 = a1 + v11;
            v13 = *(a1 + v11);
            *v12 = 0;
            v14 = *(a1 + v11 + 24);
            *(v12 + 24) = v13;

            v15 = *(a1 + v11 + 8);
            *(v12 + 8) = 0;
            v16 = *(a1 + v11 + 32);
            *(v12 + 32) = v15;

            *(v12 + 40) = *(v12 + 16);
            if (!v11)
            {
              break;
            }

            v11 -= 24;
            if (((*(*a3 + 16))() & 1) == 0)
            {
              v17 = a1 + v11 + 24;
              goto LABEL_10;
            }
          }

          v17 = a1;
LABEL_10:
          v18 = v22;
          *&v22 = 0;
          v19 = *v17;
          *v17 = v18;

          v20 = *(&v22 + 1);
          *(&v22 + 1) = 0;
          v21 = *(v17 + 8);
          *(v17 + 8) = v20;

          *(v17 + 16) = v23;
        }

        v5 = (v9 + 24);
        v7 += 24;
        v8 = v9;
      }

      while ((v9 + 24) != a2);
    }
  }
}

void std::__insertion_sort_unguarded[abi:sn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(SortEntry const&,SortEntry const&),SortEntry*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = (a1 + 24);
    if (a1 + 24 != a2)
    {
      v7 = 24;
      v8 = a1;
      while (!(*(*a3 + 16))())
      {
LABEL_9:
        v8 += 24;
        v7 += 24;
        v5 = (a1 + v7);
        if (a1 + v7 == a2)
        {
          return;
        }
      }

      v9 = 0;
      v10 = *v5;
      *v5 = 0;
      *(v8 + 32) = 0;
      v21 = v10;
      v22 = *(v8 + 40);
      while (1)
      {
        v11 = v8 + v9;
        v12 = *(v8 + v9);
        *v11 = 0;
        v13 = *(v8 + v9 + 24);
        *(v11 + 24) = v12;

        v14 = *(v8 + v9 + 8);
        *(v11 + 8) = 0;
        v15 = *(v8 + v9 + 32);
        *(v11 + 32) = v14;

        *(v11 + 40) = *(v11 + 16);
        if (!(v7 + v9))
        {
          break;
        }

        v9 -= 24;
        if (((*(*a3 + 16))() & 1) == 0)
        {
          v16 = v8 + v9;
          v17 = v21;
          *&v21 = 0;
          v18 = *(v8 + v9 + 24);
          *(v8 + v9 + 24) = v17;

          v19 = *(&v21 + 1);
          *(&v21 + 1) = 0;
          v20 = *(v8 + v9 + 32);
          *(v16 + 32) = v19;

          *(v16 + 40) = v22;
          goto LABEL_9;
        }
      }

      __break(1u);
    }
  }
}

void std::__partition_with_equals_on_left[abi:sn200100]<std::_ClassicAlgPolicy,SortEntry *,BOOL({block_pointer} {__strong}&)(SortEntry const&,SortEntry const&)>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v19 = a2;
  v20 = a1;
  v6 = *a1;
  *a1 = 0;
  a1[1] = 0;
  v17 = v6;
  v18 = *(a1 + 4);
  if ((*(*a3 + 16))())
  {
    v7 = a1;
    while (1)
    {
      v7 += 3;
      v20 = v7;
      if (v7 == a2)
      {
        goto LABEL_23;
      }

      if ((*(*a3 + 16))())
      {
        goto LABEL_9;
      }
    }
  }

  v8 = a1 + 3;
  do
  {
    v7 = v8;
    v20 = v8;
    if (v8 >= v19)
    {
      break;
    }

    v9 = (*(*a3 + 16))();
    v8 = v7 + 3;
  }

  while (!v9);
LABEL_9:
  v10 = v19;
  if (v7 < v19)
  {
    while (v10 != a1)
    {
      v10 -= 24;
      v19 = v10;
      if (((*(*a3 + 16))() & 1) == 0)
      {
        v7 = v20;
        goto LABEL_13;
      }
    }

    goto LABEL_23;
  }

LABEL_13:
  if (v7 < v10)
  {
LABEL_14:
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:sn200100]<SortEntry *&,SortEntry *&>(&v20, &v19);
    while (1)
    {
      v20 += 3;
      if (v20 == a2)
      {
        break;
      }

      if ((*(*a3 + 16))())
      {
        while (v19 != a1)
        {
          v19 -= 24;
          if (((*(*a3 + 16))() & 1) == 0)
          {
            v7 = v20;
            if (v20 < v19)
            {
              goto LABEL_14;
            }

            goto LABEL_20;
          }
        }

        break;
      }
    }

LABEL_23:
    __break(1u);
    return;
  }

LABEL_20:
  if (v7 - 3 != a1)
  {
    v11 = *(v7 - 3);
    *(v7 - 3) = 0;
    v12 = *a1;
    *a1 = v11;

    v13 = *(v7 - 2);
    *(v7 - 2) = 0;
    v14 = a1[1];
    a1[1] = v13;

    *(a1 + 4) = *(v7 - 2);
  }

  v15 = *(v7 - 3);
  *(v7 - 3) = v17;

  v16 = *(v7 - 2);
  *(v7 - 2) = *(&v17 + 1);

  *(v7 - 2) = v18;
}

void std::__partition_with_equals_on_right[abi:sn200100]<std::_ClassicAlgPolicy,SortEntry *,BOOL({block_pointer} {__strong}&)(SortEntry const&,SortEntry const&)>(__int128 *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = 0;
  v20 = a2;
  v7 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  v18 = v7;
  v19 = *(a1 + 4);
  do
  {
    v21 = (a1 + v6 + 24);
    if (v21 == a2)
    {
      goto LABEL_21;
    }

    v6 += 24;
  }

  while (((*(*a3 + 16))() & 1) != 0);
  v8 = v20;
  if (v6 != 24)
  {
    while (v8 != a1)
    {
      v8 -= 24;
      v20 = v8;
      if ((*(*a3 + 16))())
      {
        v9 = v21;
        goto LABEL_11;
      }
    }

    goto LABEL_21;
  }

  v9 = a1 + 3;
  do
  {
    if (v9 >= v8)
    {
      break;
    }

    v10 = *a3;
    v8 -= 24;
    v20 = v8;
  }

  while (((*(v10 + 16))() & 1) == 0);
LABEL_11:
  v11 = v9;
  if (v9 < v20)
  {
LABEL_12:
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:sn200100]<SortEntry *&,SortEntry *&>(&v21, &v20);
    while (1)
    {
      v21 += 3;
      if (v21 == a2)
      {
        break;
      }

      if (((*(*a3 + 16))() & 1) == 0)
      {
        while (v20 != a1)
        {
          v20 -= 24;
          if ((*(*a3 + 16))())
          {
            v11 = v21;
            if (v21 < v20)
            {
              goto LABEL_12;
            }

            goto LABEL_18;
          }
        }

        break;
      }
    }

LABEL_21:
    __break(1u);
    return;
  }

LABEL_18:
  if (v11 - 3 != a1)
  {
    v12 = *(v11 - 3);
    *(v11 - 3) = 0;
    v13 = *a1;
    *a1 = v12;

    v14 = *(v11 - 2);
    *(v11 - 2) = 0;
    v15 = *(a1 + 1);
    *(a1 + 1) = v14;

    *(a1 + 4) = *(v11 - 2);
  }

  v16 = *(v11 - 3);
  *(v11 - 3) = v18;

  v17 = *(v11 - 2);
  *(v11 - 2) = *(&v18 + 1);

  *(v11 - 2) = v19;
}

uint64_t std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(SortEntry const&,SortEntry const&),SortEntry*>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v27 = a2;
  v28 = a1;
  v6 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(SortEntry const&,SortEntry const&),SortEntry*,0>(a1, a1 + 3, (a2 - 3), a3);
        return 1;
      case 4:
        *&v25 = a1;
        v30 = a1 + 6;
        v31 = a1 + 3;
        v29 = a2 - 3;
        std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(SortEntry const&,SortEntry const&),SortEntry*,0>(a1, a1 + 3, (a1 + 6), a3);
        if (!(*(*a3 + 16))(*a3))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:sn200100]<SortEntry *&,SortEntry *&>(&v30, &v29);
        if (!(*(*a3 + 16))(*a3))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:sn200100]<SortEntry *&,SortEntry *&>(&v31, &v30);
        if (!(*(*a3 + 16))(*a3))
        {
          return 1;
        }

        v8 = &v25;
        v9 = &v31;
        goto LABEL_6;
      case 5:
        std::__sort5[abi:sn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(SortEntry const&,SortEntry const&),SortEntry*,0>(a1, a1 + 3, a1 + 6, a1 + 9, (a2 - 3), a3);
        return 1;
    }

LABEL_12:
    v10 = a1 + 6;
    std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(SortEntry const&,SortEntry const&),SortEntry*,0>(a1, a1 + 3, (a1 + 6), a3);
    v11 = a1 + 9;
    if (v11 != a2)
    {
      v12 = 0;
      while (1)
      {
        if ((*(*a3 + 16))())
        {
          v13 = *v11;
          *v11 = 0;
          v11[1] = 0;
          v25 = v13;
          v26 = *(v11 + 4);
          do
          {
            v14 = v10;
            v15 = *v10;
            *v10 = 0;
            v16 = v10[3];
            v10[3] = v15;

            v17 = v10[1];
            v10[1] = 0;
            v18 = v10[4];
            v10[4] = v17;

            *(v10 + 10) = *(v10 + 4);
            if (v10 == v28)
            {
              break;
            }

            v10 -= 3;
          }

          while (((*(*a3 + 16))() & 1) != 0);
          v19 = v25;
          *&v25 = 0;
          v20 = *v14;
          *v14 = v19;

          v21 = *(&v25 + 1);
          *(&v25 + 1) = 0;
          v22 = v14[1];
          v14[1] = v21;

          *(v14 + 4) = v26;
          if (++v12 == 8)
          {
            v23 = v11 + 3 == v27;

            return v23;
          }
        }

        v10 = v11;
        v11 += 3;
        if (v11 == v27)
        {
          return 1;
        }
      }
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 != 2)
  {
    goto LABEL_12;
  }

  v7 = *a3;
  v27 = a2 - 3;
  if ((*(v7 + 16))())
  {
    v8 = &v28;
    v9 = &v27;
LABEL_6:
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:sn200100]<SortEntry *&,SortEntry *&>(v8, v9);
  }

  return 1;
}

uint64_t *std::__partial_sort_impl[abi:sn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(SortEntry const&,SortEntry const&),SortEntry*,SortEntry*>(__int128 *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v18 = a1;
  if (a1 != a2)
  {
    v6 = a2;
    v7 = a1;
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 24 * v10);
      do
      {
        std::__sift_down[abi:sn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(SortEntry const&,SortEntry const&),SortEntry*>(v7, a4, v9, v12);
        v12 = (v12 - 24);
        --v11;
      }

      while (v11);
    }

    v17 = v6;
    v13 = v6;
    if (v6 != a3)
    {
      do
      {
        if ((*(*a4 + 16))())
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:sn200100]<SortEntry *&,SortEntry *&>(&v17, &v18);
          std::__sift_down[abi:sn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(SortEntry const&,SortEntry const&),SortEntry*>(v18, a4, v9, v18);
        }

        v13 = v17 + 3;
        v17 = v13;
      }

      while (v13 != a3);
      v7 = v18;
      v8 = v6 - v18;
    }

    if (v8 >= 25)
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      do
      {
        std::__pop_heap[abi:sn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong})(SortEntry const&,SortEntry const&),SortEntry*>(v7, v6, a4, v14);
        v6 -= 3;
      }

      while (v14-- > 2);
      return v17;
    }

    return v13;
  }

  return a3;
}

void std::__sift_down[abi:sn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(SortEntry const&,SortEntry const&),SortEntry*>(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v10 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v11 = (a1 + 24 * v10);
      v12 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
      if (v12 < a3 && (*(*a2 + 16))())
      {
        v11 = (v11 + 24);
        v10 = v12;
      }

      if (((*(*a2 + 16))() & 1) == 0)
      {
        v13 = *v5;
        *v5 = 0;
        *(v5 + 1) = 0;
        v22 = v13;
        v23 = *(v5 + 4);
        do
        {
          v14 = v11;
          v15 = *v11;
          *v11 = 0;
          v16 = *v5;
          *v5 = v15;

          v17 = *(v11 + 1);
          *(v11 + 1) = 0;
          v18 = *(v5 + 1);
          *(v5 + 1) = v17;

          *(v5 + 4) = *(v11 + 4);
          if (v7 < v10)
          {
            break;
          }

          v19 = (2 * v10) | 1;
          v11 = (a1 + 24 * v19);
          v10 = 2 * v10 + 2;
          if (v10 >= a3)
          {
            v10 = v19;
          }

          else if ((*(*a2 + 16))())
          {
            v11 = (v11 + 24);
          }

          else
          {
            v10 = v19;
          }

          v5 = v14;
        }

        while (!(*(*a2 + 16))());
        v20 = *v14;
        *v14 = v22;

        v21 = *(v14 + 1);
        *(v14 + 1) = *(&v22 + 1);

        *(v14 + 4) = v23;
      }
    }
  }
}

void std::__pop_heap[abi:sn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong})(SortEntry const&,SortEntry const&),SortEntry*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 <= 0)
  {
    __break(1u);
  }

  else if (a4 != 1)
  {
    v8 = *a1;
    v7 = *(a1 + 8);
    *a1 = 0;
    *(a1 + 8) = 0;
    v9 = *(a1 + 16);
    v10 = std::__floyd_sift_down[abi:sn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(SortEntry const&,SortEntry const&),SortEntry*>(a1, a3, a4);
    v11 = v10;
    if (v10 == (a2 - 24))
    {
      v18 = *v10;
      *v10 = v8;

      v19 = v11[1];
      v11[1] = v7;

      *(v11 + 4) = v9;
    }

    else
    {
      v12 = *(a2 - 24);
      *(a2 - 24) = 0;
      v13 = *v10;
      *v10 = v12;

      v14 = *(a2 - 16);
      *(a2 - 16) = 0;
      v15 = v11[1];
      v11[1] = v14;

      *(v11 + 4) = *(a2 - 8);
      v16 = *(a2 - 24);
      *(a2 - 24) = v8;

      v17 = *(a2 - 16);
      *(a2 - 16) = v7;

      *(a2 - 8) = v9;
      std::__sift_up[abi:sn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(SortEntry const&,SortEntry const&),SortEntry*>(a1, (v11 + 3), a3, 0xAAAAAAAAAAAAAAABLL * ((v11 - a1 + 24) >> 3));
    }
  }
}

uint64_t *std::__floyd_sift_down[abi:sn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(SortEntry const&,SortEntry const&),SortEntry*>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[3 * v6];
    v9 = v8 + 3;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = v8 + 6;
      if ((*(*a2 + 16))())
      {
        v9 = v12;
        v10 = v11;
      }
    }

    v13 = *v9;
    *v9 = 0;
    v14 = *a1;
    *a1 = v13;

    v15 = v9[1];
    v9[1] = 0;
    v16 = a1[1];
    a1[1] = v15;

    *(a1 + 4) = *(v9 + 4);
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

void std::__sift_up[abi:sn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(SortEntry const&,SortEntry const&),SortEntry*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v8 = v4 >> 1;
    v9 = (a1 + 24 * (v4 >> 1));
    v10 = (a2 - 24);
    if ((*(*a3 + 16))())
    {
      v11 = *(a2 - 24);
      *(a2 - 24) = 0;
      *(a2 - 16) = 0;
      v21 = v11;
      v22 = *(a2 - 8);
      do
      {
        v12 = v9;
        v13 = *v9;
        *v9 = 0;
        v14 = *v10;
        *v10 = v13;

        v15 = v9[1];
        v9[1] = 0;
        v16 = v10[1];
        v10[1] = v15;

        *(v10 + 4) = *(v9 + 4);
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (a1 + 24 * v8);
        v10 = v12;
      }

      while (((*(*a3 + 16))() & 1) != 0);
      v17 = v21;
      *&v21 = 0;
      v18 = *v12;
      *v12 = v17;

      v19 = *(&v21 + 1);
      *(&v21 + 1) = 0;
      v20 = v12[1];
      v12[1] = v19;

      *(v12 + 4) = v22;
    }
  }
}

uint64_t ___ZL17findLiteralStringP7NSArrayP8NSString_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 userTypedString];
    v5 = [v4 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t dateComponentValue(int a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E695DEE8]);
  v5 = [v4 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v6 = [v5 components:28 fromDate:v3];
  v7 = v6;
  if (a1)
  {
    if (a1 == 1)
    {
      v8 = [v6 month];
    }

    else
    {
      v8 = [v6 year];
    }
  }

  else
  {
    v8 = [v6 day];
  }

  v9 = v8;

  return v9;
}

id dateComponentSynonyms(int a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E695DFA0]);
  if (a1 == 1)
  {
    v5 = 6;
  }

  else
  {
    v5 = 2;
  }

  v6 = [v4 initWithCapacity:v5];
  v7 = dateComponentValue(a1, v3);
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v7];
  [v6 addObject:v8];

  if (a1 == 2 || v7 <= 9)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02lu", v7 % 0x64];
    [v6 addObject:v9];
  }

  if (a1 == 1)
  {
    v10 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v10 setDateFormat:@"MMMM"];
    v11 = [v10 stringFromDate:v3];
    [v6 addObject:v11];

    [v10 setDateFormat:@"MMM"];
    v12 = [v10 stringFromDate:v3];
    [v6 addObject:v12];

    [v10 setDateFormat:@"LLLL"];
    v13 = [v10 stringFromDate:v3];
    [v6 addObject:v13];

    [v10 setDateFormat:@"LLL"];
    v14 = [v10 stringFromDate:v3];
    [v6 addObject:v14];

    v15 = objc_alloc(MEMORY[0x1E695DF58]);
    v16 = [v15 initWithLocaleIdentifier:*MEMORY[0x1E69C8A88]];
    [v10 setLocale:v16];
    [v10 setDateFormat:@"MMMM"];
    v17 = [v10 stringFromDate:v3];
    [v6 addObject:v17];

    [v10 setDateFormat:@"MMM"];
    v18 = [v10 stringFromDate:v3];
    [v6 addObject:v18];
  }

  return v6;
}

void sub_1BB789058(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void recordValueForDateField(void *a1, int a2, void *a3, void *a4)
{
  v24 = a1;
  v7 = a3;
  v8 = a4;
  v9 = [(WBSFormControlMetadata *)v8 tagName];
  v10 = [(WBSFormControlMetadata *)v8 isTextField];
  if (([v9 safari_isCaseInsensitiveEqualToString:@"input"] & v10) == 1)
  {
    v11 = dateComponentValue(a2, v7);
    if (a2 == 2)
    {
      if ([(WBSFormControlMetadata *)v8 maxLength]== 2)
      {
        goto LABEL_15;
      }

      v12 = [(WBSFormControlMetadata *)v8 placeholder];
      if ([v12 length])
      {
        v13 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        v14 = [v12 safari_stringByRemovingCharactersInSet:v13];

        {
          v23 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"dmyDMY/.-"];
          canonicalizedDateTemplate(NSString *)::invalidCharacterSet = [v23 invertedSet];
        }

        if ([v14 rangeOfCharacterFromSet:canonicalizedDateTemplate(NSString *)::invalidCharacterSet] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = [v14 stringByReplacingOccurrencesOfString:@"D" withString:@"d"];

          v16 = [v15 stringByReplacingOccurrencesOfString:@"m" withString:@"M"];

          v17 = [v16 stringByReplacingOccurrencesOfString:@"Y" withString:@"y"];

          v14 = 0;
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
        v14 = v12;
      }

      v22 = [v17 isEqualToString:@"yy"];
      if (v22)
      {
LABEL_15:
        v11 %= 0x64uLL;
      }
    }

    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02lu", v11];
    recordValueForTextField(v24, &v18->super.isa, v8);
  }

  else
  {
    v18 = [(WBSFormControlMetadata *)v8 selectElementInfo];
    if (v18)
    {
      v19 = dateComponentSynonyms(a2, v7);
      v20 = [v19 array];
      v21 = indexOfItemInSelectElement(v18, v20);

      if (v21 != 0x7FFFFFFFFFFFFFFFLL)
      {
        recordIndexForSelectElement(v24, v21, v8);
      }
    }
  }
}

uint64_t indexOfItemInSelectElement(NSArray *a1, NSArray *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [(NSArray *)v3 count];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:v5];
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v8 = [(NSArray *)v3 safari_arrayAtIndex:i];
      v9 = [v8 safari_stringAtIndex:1];
      [v6 addObject:v9];
    }
  }

  v10 = [(NSArray *)v4 count];
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  if (v10 - 1 >= 0)
  {
    v21 = v3;
    v12 = -1;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      --v10;
      v22 = -1;
      v14 = [(NSArray *)v4 safari_stringAtIndex:v10, v21];
      v15 = [WBSFormToABBinder indexOfBestMatchForString:v14 inArray:v6 startingPosition:&v22];

      v16 = v22;
      if (v22 >= v12)
      {
        v17 = v13;
      }

      else
      {
        v17 = v15;
      }

      if (v22 >= v12)
      {
        v16 = v12;
      }

      if (v15 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = v17;
        v12 = v16;
      }
    }

    while (v10 > 0);
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    v3 = v21;
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = [(NSArray *)v21 safari_arrayAtIndex:v13];
      v19 = [v18 safari_numberAtIndex:0];
      v11 = [v19 unsignedIntValue];
    }
  }

  return v11;
}

void ___ZL18postCodeCandidatesP8NSStringb_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 length])
  {
    if ([*(a1 + 32) length])
    {
      [*(a1 + 32) appendString:@"-"];
    }

    [*(a1 + 32) appendString:v3];
  }
}

void ___ZL22decomposeStreetAddressP8NSString20StreetDecomposeStyle_block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 safari_stringByTrimmingWhitespace];
  v4 = [v3 length];

  if (v4)
  {
    [*(a1 + 32) addObject:v5];
  }
}

uint64_t ___ZL43controlsContainTextFieldWithControlUniqueIDP7NSArrayIP22WBSFormControlMetadataEP8NSString_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 uniqueID];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = [v3 isTextField];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t WTF::Vector<SortEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,SortEntry>::destruct(*a1, (*a1 + 24 * v3));
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

void WTF::VectorDestructor<true,SortEntry>::destruct(void **a1, void **a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    do
    {

      v4 = *v3;
      v3 += 3;
    }

    while (v3 != a2);
  }
}

uint64_t WTF::Vector<SortEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,SortEntry&>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<SortEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + 24 * *(a1 + 12);
  *v4 = *v3;
  *(v4 + 8) = *(v3 + 8);
  *(v4 + 16) = *(v3 + 16);
  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<SortEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 24 * *(a1 + 12) <= a3)
  {
    v10 = *(a1 + 8);
    if (v10 + (v10 >> 1) <= v10 + 1)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = v10 + (v10 >> 1);
    }

    if (v11 <= a2)
    {
      v11 = a2;
    }

    if (v11 <= 0x10)
    {
      v12 = 16;
    }

    else
    {
      v12 = v11;
    }

    WTF::Vector<SortEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
  }

  else
  {
    v6 = a3 - v5;
    v7 = *(a1 + 8);
    if (v7 + (v7 >> 1) <= v7 + 1)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = v7 + (v7 >> 1);
    }

    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v8 <= 0x10)
    {
      v9 = 16;
    }

    else
    {
      v9 = v8;
    }

    WTF::Vector<SortEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<SortEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0xAAAAAAB)
    {
      __break(0xC471u);
      JUMPOUT(0x1BB789AA8);
    }

    v3 = *a1;
    v4 = (*a1 + 24 * *(a1 + 12));
    v5 = 24 * a2;
    v6 = WTF::fastMalloc((24 * a2));
    *(a1 + 8) = v5 / 0x18;
    *a1 = v6;
    WTF::VectorMover<false,SortEntry>::move(v3, v4, v6);
    if (v3)
    {
      if (*a1 == v3)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
      }

      WTF::fastFree(v3, v7);
    }
  }

  return 1;
}

__int128 *WTF::VectorMover<false,SortEntry>::move(__int128 *result, __int128 *a2, uint64_t a3)
{
  for (; result != a2; result = (v6 + 24))
  {
    v5 = *result;
    *result = 0;
    *(result + 1) = 0;
    *a3 = v5;
    *(a3 + 16) = *(result + 4);
    SortEntry::~SortEntry(result);
    a3 += 24;
  }

  return result;
}

id stringForKey(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKeyedSubscript:a2];
  if ([v2 isString])
  {
    v3 = [v2 toString];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id WBSCreditCardTypeSynonyms(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    v2 = 0;
  }

  else
  {
    v2 = creditCardLabels(qword_1BB914618[a1 - 1]);
  }

  return v2;
}

id creditCardLabels(uint64_t a1)
{
  updateCachedArraysIfNeeded();
  switch(a1)
  {
    case 2:
      v2 = @"carteBlancheSynonyms";
      goto LABEL_17;
    case 3:
      v2 = @"dinersClubSynonyms";
      goto LABEL_17;
    case 4:
      v2 = @"discoverSynonyms";
      goto LABEL_17;
    case 5:
      v2 = @"enRouteSynonyms";
      goto LABEL_17;
    case 6:
      v2 = @"jcbSynonyms";
      goto LABEL_17;
    case 7:
      v2 = @"masterCardSynonyms";
      goto LABEL_17;
    case 8:
      v2 = @"visaSynonyms";
      goto LABEL_17;
    case 9:
      v3 = [cachedCreditCardAutoFillKeywords objectForKeyedSubscript:@"chinaUnionPaySynonyms"];
      v4 = creditCardLabels(4);
      v5 = [v3 arrayByAddingObjectsFromArray:v4];
      goto LABEL_23;
    case 10:
      v3 = [cachedCreditCardAutoFillKeywords objectForKeyedSubscript:@"maestroSynonyms"];
      v4 = creditCardLabels(7);
      v5 = [v3 arrayByAddingObjectsFromArray:v4];
      goto LABEL_23;
    case 11:
      v3 = [cachedCreditCardAutoFillKeywords objectForKeyedSubscript:@"instaPaymentSynonyms"];
      v4 = creditCardLabels(7);
      v5 = [v3 arrayByAddingObjectsFromArray:v4];
LABEL_23:
      v6 = v5;

      goto LABEL_18;
    case 12:
      v2 = @"numberFieldLabels";
      goto LABEL_17;
    case 13:
      v2 = @"securityCodeFieldLabels";
      goto LABEL_17;
    case 14:
      v2 = @"cardholderLabels";
      goto LABEL_17;
    case 15:
      v2 = @"cardTypeLabels";
      goto LABEL_17;
    case 16:
      v2 = @"compositeExpirationDateLabels";
      goto LABEL_17;
    case 17:
      v2 = @"nonCreditCardNumberLabels";
      goto LABEL_17;
    default:
      v2 = @"americanExpressSynonyms";
LABEL_17:
      v6 = [cachedCreditCardAutoFillKeywords objectForKeyedSubscript:v2];
LABEL_18:

      return v6;
  }
}

uint64_t SafariShared::FrameMetadata::FrameMetadata(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *a1 = &unk_1F3A5BE50;
  v7 = v5;
  *(a1 + 48) = v7;
  v8 = v6;
  *(a1 + 56) = v8;
  if (+[WBSFormMetadataController isAutoFillDrivenByUIProcess])
  {
    v9 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_DEFAULT, "Will not inject JavaScript in injected bundle", buf, 2u);
    }

    goto LABEL_21;
  }

  v10 = [*(a1 + 48) jsContextForMetadataControllerScriptWorld];
  if (!v10)
  {
    goto LABEL_21;
  }

  if ((_MergedGlobals & 1) == 0)
  {
    SafariShared::FrameMetadata::FrameMetadata();
  }

  v11 = &qword_1EBC78F28;
  v12 = 4;
  while (1)
  {
    if (!strcmp(*(v11 - 3), "WAS") && [v8 pageTestType] != 1)
    {
      goto LABEL_19;
    }

    GlobalObject = JSContextGetGlobalObject(v10);
    SafariShared::JSUtilities::jsString(*(v11 - 3), buf);
    HasProperty = JSObjectHasProperty(v10, GlobalObject, *buf);
    if (*buf)
    {
      JSStringRelease(*buf);
    }

    if (HasProperty)
    {
      goto LABEL_19;
    }

    if (!*v11)
    {
      break;
    }

LABEL_16:
    *buf = 0;
    if (!JSScriptEvaluate() && *buf)
    {
      v16 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      SafariShared::JSUtilities::logExceptionInChannel(v16, v10, *buf);
    }

LABEL_19:
    v11 += 5;
    if (!--v12)
    {
      SafariShared::JSController::addScriptObjectToGlobalObject(a1, v10);
      SafariShared::JSController::scriptObjectReady(a1, v10);
      goto LABEL_21;
    }
  }

  JSContextGetGroup(v10);
  ReferencingImmortalASCIIText = JSScriptCreateReferencingImmortalASCIIText();
  if (ReferencingImmortalASCIIText)
  {
    *v11 = ReferencingImmortalASCIIText;

    goto LABEL_16;
  }

  v18 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = *(v11 - 4);
    *buf = 136446722;
    *&buf[4] = v19;
    v21 = 1024;
    v22 = 0;
    v23 = 2114;
    v24 = 0;
    _os_log_error_impl(&dword_1BB6F3000, v18, OS_LOG_TYPE_ERROR, "Failed to create script %{public}s: line %i: %{public}@", buf, 0x1Cu);
  }

LABEL_21:
  return a1;
}

void sub_1BB78CB30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, JSStringRef string)
{
  SafariShared::JSController::~JSController(v11);

  _Unwind_Resume(a1);
}

JSClassRef SafariShared::FrameMetadata::staticJSClass(SafariShared::FrameMetadata *this)
{
  {
    return SafariShared::FrameMetadata::staticJSClass(void)::jsClass;
  }

  result = SafariShared::JSController::createJSClass(this);
  SafariShared::FrameMetadata::staticJSClass(void)::jsClass = result;
  return result;
}

JSValueRef SafariShared::jsSetInputElementAutofilled(JSContextRef ctx, const OpaqueJSContext *a2, JSObjectRef object, OpaqueJSValue *a4, JSValueRef *a5, const OpaqueJSValue *const *a6, const OpaqueJSValue **a7)
{
  if (isAutoFillDrivenByUIProcess != 1 && a4 == 2 && (v9 = SafariShared::JSController::jsController(object)) != 0)
  {
    v10 = v9;
    v11 = [v9[7] formAutoFillNodeForJSWrapper:JSValueToObject(ctx inContext:{*a5, 0), ctx}];
    if (v11)
    {
      v12 = JSValueToBoolean(ctx, a5[1]);
      [v11 setHTMLInputElementAutofilled:v12];
      if (v12)
      {
        v13 = v10[6];
        v14 = v10[7];
        [v14 autoFilledField:v11 inFrame:v13];
      }
    }

    Undefined = JSValueMakeUndefined(ctx);

    return Undefined;
  }

  else
  {

    return JSValueMakeUndefined(ctx);
  }
}

JSValueRef SafariShared::jsSetInputElementAutoFilledAndViewable(JSContextRef ctx, const OpaqueJSContext *a2, JSObjectRef object, OpaqueJSValue *a4, JSValueRef *a5, const OpaqueJSValue *const *a6, const OpaqueJSValue **a7)
{
  if (isAutoFillDrivenByUIProcess == 1 || (v9 = SafariShared::JSController::jsController(object)) == 0)
  {

    return JSValueMakeUndefined(ctx);
  }

  else
  {
    v10 = [v9[7] formAutoFillNodeForJSWrapper:JSValueToObject(ctx inContext:{*a5, 0), ctx}];
    if (v10)
    {
      [v10 setHTMLInputElementAutoFilledAndViewable:{JSValueToBoolean(ctx, a5[1])}];
    }

    Undefined = JSValueMakeUndefined(ctx);

    return Undefined;
  }
}

JSValueRef SafariShared::jsSetInputElementSpellCheckEnabled(JSContextRef ctx, const OpaqueJSContext *a2, JSObjectRef object, OpaqueJSValue *a4, JSValueRef *a5, const OpaqueJSValue *const *a6, const OpaqueJSValue **a7)
{
  if (isAutoFillDrivenByUIProcess != 1 && a4 == 2 && (v9 = SafariShared::JSController::jsController(object)) != 0)
  {
    v10 = [v9[7] formAutoFillNodeForJSWrapper:JSValueToObject(ctx inContext:{*a5, 0), ctx}];
    if (v10)
    {
      if (objc_opt_respondsToSelector())
      {
        [v10 setHTMLInputElementSpellCheckEnabled:{JSValueToBoolean(ctx, a5[1])}];
      }
    }

    Undefined = JSValueMakeUndefined(ctx);

    return Undefined;
  }

  else
  {

    return JSValueMakeUndefined(ctx);
  }
}

JSValueRef SafariShared::jsSpecifierForAutocompleteTokensAndAddressBookLabel(SafariShared *this, const OpaqueJSContext *a2, NSString *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a4 != 2)
  {
    if (!a6)
    {
LABEL_10:

      return JSValueMakeUndefined(this);
    }

    v12 = @"Expected two arguments, autocompleteTokens and addressBookLabel.";
LABEL_9:
    *a6 = SafariShared::JSUtilities::toJSError(this, v12, a3);
    goto LABEL_10;
  }

  if (JSValueIsUndefined(this, *a5))
  {
    goto LABEL_3;
  }

  if (!JSValueIsArray(this, *a5))
  {
    if (!a6)
    {
      goto LABEL_10;
    }

    v12 = @"Expected an array of autocomplete tokens.";
    goto LABEL_9;
  }

  SafariShared::JSUtilities::translateJSValueToNS(this, *a5, a3);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v14 = v31 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v15)
  {
    goto LABEL_23;
  }

  v16 = *v31;
  while (2)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v31 != v16)
      {
        objc_enumerationMutation(v14);
      }

      v18 = *(*(&v30 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a6)
        {
          *a6 = SafariShared::JSUtilities::toJSError(this, @"Expected autocomplete token to be a string.", v19);
        }

        Undefined = JSValueMakeUndefined(this);
        goto LABEL_33;
      }

      v20 = [WBSFormToABBinder specifierForAutocompleteToken:v18, v30];
      v21 = v20;
      if (v20)
      {
        v28 = [v20 dictionaryRepresentation];
        Undefined = SafariShared::JSUtilities::translateNSToJSValue(this, v28, v29);

LABEL_33:
        return Undefined;
      }
    }

    v15 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v15)
    {
      continue;
    }

    break;
  }

LABEL_23:

LABEL_3:
  if (JSValueIsUndefined(this, a5[1]) || JSValueIsNull(this, a5[1]))
  {
    return JSValueMakeNull(this);
  }

  if (JSValueIsString(this, a5[1]))
  {
    v23 = SafariShared::JSUtilities::translateJSValueToNS(this, a5[1], v22);
    v24 = [WBSFormToABBinder specifierForLabel:v23];
    v25 = v24;
    if (!v24)
    {

      return JSValueMakeNull(this);
    }

    v26 = [v24 dictionaryRepresentation];
    Undefined = SafariShared::JSUtilities::translateNSToJSValue(this, v26, v27);
  }

  else
  {
    if (a6)
    {
      *a6 = SafariShared::JSUtilities::toJSError(this, @"Expected a string for addressBookLabel.", v22);
    }

    return JSValueMakeUndefined(this);
  }

  return Undefined;
}

JSValueRef SafariShared::jsSetInputElementAutoFilledAndObscured(SafariShared *this, const OpaqueJSContext *a2, JSObjectRef object, OpaqueJSValue *a4, JSValueRef *a5, const OpaqueJSValue *const *a6, const OpaqueJSValue **a7)
{
  v9 = SafariShared::JSController::jsController(object);
  if (v9)
  {
    v10 = v9;
    v11 = [v9[7] formAutoFillNodeForJSWrapper:JSValueToObject(this inContext:{*a5, 0), this}];
    if (v11)
    {
      v12 = JSValueToBoolean(this, a5[1]);
      [v11 setHTMLInputElementAutoFilledAndObscured:v12];
      if (v12)
      {
        v13 = v10[6];
        v14 = v10[7];
        [v14 autoFilledField:v11 inFrame:v13];
      }
    }

    Undefined = JSValueMakeUndefined(this);

    return Undefined;
  }

  else
  {

    return JSValueMakeUndefined(this);
  }
}

JSValueRef SafariShared::jsDateFormatFromTemplate(SafariShared *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, const OpaqueJSContext **a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  if (a4 == 2)
  {
    if (JSValueIsString(this, *a5))
    {
      v10 = SafariShared::JSUtilities::translateJSValueToNS(this, *a5, a3);
      if (JSValueIsUndefined(this, a5[1]))
      {
        v11 = [MEMORY[0x1E695DF58] currentLocale];
      }

      else
      {
        if (!JSValueIsString(this, a5[1]))
        {
          if (a6)
          {
            *a6 = SafariShared::JSUtilities::toJSError(this, @"Expected locale to be a string or undefined.", v14);
          }

          Undefined = JSValueMakeUndefined(this);
          goto LABEL_19;
        }

        v15 = MEMORY[0x1E695DF58];
        v16 = SafariShared::JSUtilities::translateJSValueToNS(this, a5[1], v14);
        v11 = [v15 localeWithLocaleIdentifier:v16];
      }

      v17 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:v10 options:0 locale:v11];
      Undefined = SafariShared::JSUtilities::translateNSToJSValue(this, v17, v18);

LABEL_19:
      return Undefined;
    }

    if (a6)
    {
      v12 = @"Expected template to be a string.";
      goto LABEL_9;
    }
  }

  else if (a6)
  {
    v12 = @"Expected two arguments, template and locale.";
LABEL_9:
    *a6 = SafariShared::JSUtilities::toJSError(this, v12, a3);
  }

  return JSValueMakeUndefined(this);
}

JSValueRef SafariShared::jsStringFromDateFormat(SafariShared *this, const OpaqueJSContext *a2, NSString *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  if (a4 != 2)
  {
    if (!a6)
    {
      goto LABEL_12;
    }

    v18 = @"Expected two arguments, format and date.";
LABEL_11:
    *a6 = SafariShared::JSUtilities::toJSError(this, v18, a3);
    goto LABEL_12;
  }

  if (!JSValueIsString(this, *a5))
  {
    if (!a6)
    {
      goto LABEL_12;
    }

    v18 = @"Expected format to be a string.";
    goto LABEL_11;
  }

  if (JSValueIsDate(this, a5[1]))
  {
    v10 = SafariShared::JSUtilities::translateJSValueToNS(this, *a5, a3);
    v12 = SafariShared::JSUtilities::translateJSValueToNS(this, a5[1], v11);
    v13 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v13 setDateFormat:v10];
    v14 = [v13 stringFromDate:v12];
    v16 = SafariShared::JSUtilities::translateNSToJSValue(this, v14, v15);

    return v16;
  }

  if (a6)
  {
    v18 = @"Expected date to be a Date object instance.";
    goto LABEL_11;
  }

LABEL_12:

  return JSValueMakeUndefined(this);
}

JSValueRef SafariShared::jsIsDebugConsoleLoggingEnabled(SafariShared *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v7 = [MEMORY[0x1E69C8880] isInternalInstall];
  if (v7)
  {
    v5 = [MEMORY[0x1E695E000] standardUserDefaults];
    v8 = [v5 BOOLForKey:@"WBSDebugAutoFillConsoleLoggingEnabled"];
  }

  else
  {
    v8 = 0;
  }

  Boolean = JSValueMakeBoolean(this, v8);
  if (v7)
  {
  }

  return Boolean;
}

JSObjectRef SafariShared::jsAddressBookFieldLabelPatternMatchers(SafariShared *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v6 = [WBSFormToABBinder addressBookFieldLabelPatternMatchers:a3];

  return makeJSFieldPatternMatcherArray(this, v6);
}

JSObjectRef SafariShared::jsEmailFieldLabelPatternMatchers(SafariShared *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v6 = [WBSFormToABBinder emailFieldLabelPatternMatchers:a3];

  return makeJSFieldPatternMatcherArray(this, v6);
}

JSObjectRef SafariShared::jsCreditCardNumberFieldLabelPatternMatchers(SafariShared *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v10[1] = *MEMORY[0x1E69E9840];
  {
    v5 = SafariShared::jsCreditCardNumberFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers;
  }

  else
  {
    v9 = this;
    v7 = creditCardLabels(12);
    v10[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v5 = [_WBSFieldLabelPatternMatcherFactory createFieldLabelPatternMatcherArrayFromWordArrays:v8 allowingEndOfWordMatches:0];

    SafariShared::jsCreditCardNumberFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers = v5;
    this = v9;
  }

  return makeJSFieldPatternMatcherArray(this, v5);
}

JSObjectRef SafariShared::jsCreditCardSecurityCodeFieldLabelPatternMatchers(SafariShared *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v10[1] = *MEMORY[0x1E69E9840];
  {
    v5 = SafariShared::jsCreditCardSecurityCodeFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers;
  }

  else
  {
    v9 = this;
    v7 = creditCardLabels(13);
    v10[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v5 = [_WBSFieldLabelPatternMatcherFactory createFieldLabelPatternMatcherArrayFromWordArrays:v8 allowingEndOfWordMatches:0];

    SafariShared::jsCreditCardSecurityCodeFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers = v5;
    this = v9;
  }

  return makeJSFieldPatternMatcherArray(this, v5);
}

JSObjectRef SafariShared::jsCreditCardCardholderFieldLabelPatternMatchers(SafariShared *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v10[1] = *MEMORY[0x1E69E9840];
  {
    v5 = SafariShared::jsCreditCardCardholderFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers;
  }

  else
  {
    v9 = this;
    v7 = creditCardLabels(14);
    v10[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v5 = [_WBSFieldLabelPatternMatcherFactory createFieldLabelPatternMatcherArrayFromWordArrays:v8 allowingEndOfWordMatches:0];

    SafariShared::jsCreditCardCardholderFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers = v5;
    this = v9;
  }

  return makeJSFieldPatternMatcherArray(this, v5);
}

JSObjectRef SafariShared::jsCreditCardTypeFieldLabelPatternMatchers(SafariShared *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v10[1] = *MEMORY[0x1E69E9840];
  {
    v5 = SafariShared::jsCreditCardTypeFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers;
  }

  else
  {
    v9 = this;
    v7 = creditCardLabels(15);
    v10[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v5 = [_WBSFieldLabelPatternMatcherFactory createFieldLabelPatternMatcherArrayFromWordArrays:v8 allowingEndOfWordMatches:0];

    SafariShared::jsCreditCardTypeFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers = v5;
    this = v9;
  }

  return makeJSFieldPatternMatcherArray(this, v5);
}

JSObjectRef SafariShared::jsNonCreditCardCardNumberFieldLabelPatternMatchers(SafariShared *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v10[1] = *MEMORY[0x1E69E9840];
  {
    v5 = SafariShared::jsNonCreditCardCardNumberFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers;
  }

  else
  {
    v9 = this;
    v7 = creditCardLabels(17);
    v10[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v5 = [_WBSFieldLabelPatternMatcherFactory createFieldLabelPatternMatcherArrayFromWordArrays:v8 allowingEndOfWordMatches:0];

    SafariShared::jsNonCreditCardCardNumberFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers = v5;
    this = v9;
  }

  return makeJSFieldPatternMatcherArray(this, v5);
}

JSObjectRef SafariShared::jsDayFieldLabelPatternMatchers(SafariShared *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v11[1] = *MEMORY[0x1E69E9840];
  {
    v5 = SafariShared::jsDayFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers;
  }

  else
  {
    v10 = this;
    v7 = SafariShared::dayFieldLabels(this);
    v11[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v9 = [_WBSFieldLabelPatternMatcherFactory createFieldLabelPatternMatcherArrayFromWordArrays:v8 allowingEndOfWordMatches:1];

    v5 = v9;
    SafariShared::jsDayFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers = v9;
    this = v10;
  }

  return makeJSFieldPatternMatcherArray(this, v5);
}

JSObjectRef SafariShared::jsMonthFieldLabelPatternMatchers(SafariShared *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v11[1] = *MEMORY[0x1E69E9840];
  {
    v5 = SafariShared::jsMonthFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers;
  }

  else
  {
    v10 = this;
    v7 = SafariShared::monthFieldLabels(this);
    v11[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v9 = [_WBSFieldLabelPatternMatcherFactory createFieldLabelPatternMatcherArrayFromWordArrays:v8 allowingEndOfWordMatches:1];

    v5 = v9;
    SafariShared::jsMonthFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers = v9;
    this = v10;
  }

  return makeJSFieldPatternMatcherArray(this, v5);
}

JSObjectRef SafariShared::jsYearFieldLabelPatternMatchers(SafariShared *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v11[1] = *MEMORY[0x1E69E9840];
  {
    v5 = SafariShared::jsYearFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers;
  }

  else
  {
    v10 = this;
    v7 = SafariShared::yearFieldLabels(this);
    v11[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v9 = [_WBSFieldLabelPatternMatcherFactory createFieldLabelPatternMatcherArrayFromWordArrays:v8 allowingEndOfWordMatches:1];

    v5 = v9;
    SafariShared::jsYearFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers = v9;
    this = v10;
  }

  return makeJSFieldPatternMatcherArray(this, v5);
}

JSObjectRef SafariShared::jsCreditCardCompositeExpirationDateFieldLabelPatternMatchers(SafariShared *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v10[1] = *MEMORY[0x1E69E9840];
  {
    v5 = SafariShared::jsCreditCardCompositeExpirationDateFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers;
  }

  else
  {
    v9 = this;
    v7 = creditCardLabels(16);
    v10[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v5 = [_WBSFieldLabelPatternMatcherFactory createFieldLabelPatternMatcherArrayFromWordArrays:v8 allowingEndOfWordMatches:0];

    SafariShared::jsCreditCardCompositeExpirationDateFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers = v5;
    this = v9;
  }

  return makeJSFieldPatternMatcherArray(this, v5);
}

JSObjectRef SafariShared::jsIgnoredDataTypeFieldLabelPatternMatchers(SafariShared *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v11[1] = *MEMORY[0x1E69E9840];
  {
    v5 = SafariShared::jsIgnoredDataTypeFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers;
  }

  else
  {
    v10 = this;
    v7 = ignoredDataTypeFieldLabels();
    v11[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v9 = [_WBSFieldLabelPatternMatcherFactory createFieldLabelPatternMatcherArrayFromWordArrays:v8 allowingEndOfWordMatches:1];

    v5 = v9;
    SafariShared::jsIgnoredDataTypeFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers = v9;
    this = v10;
  }

  return makeJSFieldPatternMatcherArray(this, v5);
}

JSObjectRef SafariShared::jsOneTimeCodeFieldLabelPatternMatchersFieldLabelPatternMatchers(SafariShared *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v11[1] = *MEMORY[0x1E69E9840];
  {
    v5 = SafariShared::jsOneTimeCodeFieldLabelPatternMatchersFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers;
  }

  else
  {
    v10 = this;
    v7 = oneTimeCodeFieldLabels();
    v11[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v9 = [_WBSFieldLabelPatternMatcherFactory createFieldLabelPatternMatcherArrayFromWordArrays:v8 allowingEndOfWordMatches:1];

    v5 = v9;
    SafariShared::jsOneTimeCodeFieldLabelPatternMatchersFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers = v9;
    this = v10;
  }

  return makeJSFieldPatternMatcherArray(this, v5);
}

JSObjectRef SafariShared::jsWeakOneTimeCodeFieldLabelPatternMatchersFieldLabelPatternMatchers(SafariShared *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v11[1] = *MEMORY[0x1E69E9840];
  {
    v5 = SafariShared::jsWeakOneTimeCodeFieldLabelPatternMatchersFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers;
  }

  else
  {
    v10 = this;
    v7 = WeakOneTimeCodeFieldLabels();
    v11[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v9 = [_WBSFieldLabelPatternMatcherFactory createFieldLabelPatternMatcherArrayFromWordArrays:v8 allowingEndOfWordMatches:1];

    v5 = v9;
    SafariShared::jsWeakOneTimeCodeFieldLabelPatternMatchersFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers = v9;
    this = v10;
  }

  return makeJSFieldPatternMatcherArray(this, v5);
}

JSObjectRef SafariShared::jsCodeButNotOneTimeCodeFieldLabelsPatternMatchersFieldLabelPatternMatchers(SafariShared *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v11[1] = *MEMORY[0x1E69E9840];
  {
    v5 = SafariShared::jsCodeButNotOneTimeCodeFieldLabelsPatternMatchersFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers;
  }

  else
  {
    v10 = this;
    v7 = CodeButNotOneTimeCodeFieldLabels();
    v11[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v9 = [_WBSFieldLabelPatternMatcherFactory createFieldLabelPatternMatcherArrayFromWordArrays:v8 allowingEndOfWordMatches:1];

    v5 = v9;
    SafariShared::jsCodeButNotOneTimeCodeFieldLabelsPatternMatchersFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers = v9;
    this = v10;
  }

  return makeJSFieldPatternMatcherArray(this, v5);
}

JSObjectRef SafariShared::jsUsernameFieldLabelPatternMatchers(SafariShared *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v11[1] = *MEMORY[0x1E69E9840];
  {
    v5 = SafariShared::jsUsernameFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers;
  }

  else
  {
    v10 = this;
    v7 = usernameFieldLabels();
    v11[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v9 = [_WBSFieldLabelPatternMatcherFactory createFieldLabelPatternMatcherArrayFromWordArrays:v8 allowingEndOfWordMatches:0];

    v5 = v9;
    SafariShared::jsUsernameFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers = v9;
    this = v10;
  }

  return makeJSFieldPatternMatcherArray(this, v5);
}

JSObjectRef SafariShared::jsNonAccountPasswordSecureTextEntryFieldLabelPatternMatchers(SafariShared *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v11[1] = *MEMORY[0x1E69E9840];
  {
    v5 = SafariShared::jsNonAccountPasswordSecureTextEntryFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers;
  }

  else
  {
    v10 = this;
    v7 = nonAccountPasswordSecureTextEntryFieldLabels();
    v11[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v9 = [_WBSFieldLabelPatternMatcherFactory createFieldLabelPatternMatcherArrayFromWordArrays:v8 allowingEndOfWordMatches:0];

    v5 = v9;
    SafariShared::jsNonAccountPasswordSecureTextEntryFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers = v9;
    this = v10;
  }

  return makeJSFieldPatternMatcherArray(this, v5);
}

JSObjectRef SafariShared::jsNonUsernameFieldLabelPatternMatchers(SafariShared *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v11[1] = *MEMORY[0x1E69E9840];
  {
    v5 = SafariShared::jsNonUsernameFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers;
  }

  else
  {
    v10 = this;
    v7 = nonUsernameFieldLabels();
    v11[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v9 = [_WBSFieldLabelPatternMatcherFactory createFieldLabelPatternMatcherArrayFromWordArrays:v8 allowingEndOfWordMatches:0];

    v5 = v9;
    SafariShared::jsNonUsernameFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers = v9;
    this = v10;
  }

  return makeJSFieldPatternMatcherArray(this, v5);
}

JSObjectRef SafariShared::jsNonEmailFieldLabelPatternMatchers(SafariShared *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v11[1] = *MEMORY[0x1E69E9840];
  {
    v5 = SafariShared::jsNonEmailFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers;
  }

  else
  {
    v10 = this;
    v7 = nonEmailFieldLabels();
    v11[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v9 = [_WBSFieldLabelPatternMatcherFactory createFieldLabelPatternMatcherArrayFromWordArrays:v8 allowingEndOfWordMatches:0];

    v5 = v9;
    SafariShared::jsNonEmailFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers = v9;
    this = v10;
  }

  return makeJSFieldPatternMatcherArray(this, v5);
}

JSObjectRef SafariShared::jsOldPasswordFieldLabelPatternMatchers(SafariShared *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v11[1] = *MEMORY[0x1E69E9840];
  {
    v5 = SafariShared::jsOldPasswordFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers;
  }

  else
  {
    v10 = this;
    v7 = oldPasswordFieldLabels();
    v11[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v9 = [_WBSFieldLabelPatternMatcherFactory createFieldLabelPatternMatcherArrayFromWordArrays:v8 allowingEndOfWordMatches:0];

    v5 = v9;
    SafariShared::jsOldPasswordFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers = v9;
    this = v10;
  }

  return makeJSFieldPatternMatcherArray(this, v5);
}

JSObjectRef SafariShared::jsPasswordFieldLabelPatternMatchers(SafariShared *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v11[1] = *MEMORY[0x1E69E9840];
  {
    v5 = SafariShared::jsPasswordFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers;
  }

  else
  {
    v10 = this;
    v7 = passwordFieldLabels();
    v11[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v9 = [_WBSFieldLabelPatternMatcherFactory createFieldLabelPatternMatcherArrayFromWordArrays:v8 allowingEndOfWordMatches:0];

    v5 = v9;
    SafariShared::jsPasswordFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers = v9;
    this = v10;
  }

  return makeJSFieldPatternMatcherArray(this, v5);
}

JSObjectRef SafariShared::jsConfirmPasswordFieldLabelPatternMatchers(SafariShared *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v11[1] = *MEMORY[0x1E69E9840];
  {
    v5 = SafariShared::jsConfirmPasswordFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers;
  }

  else
  {
    v10 = this;
    v7 = confirmPasswordFieldLabels();
    v11[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v9 = [_WBSFieldLabelPatternMatcherFactory createFieldLabelPatternMatcherArrayFromWordArrays:v8 allowingEndOfWordMatches:0];

    v5 = v9;
    SafariShared::jsConfirmPasswordFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers = v9;
    this = v10;
  }

  return makeJSFieldPatternMatcherArray(this, v5);
}

JSObjectRef SafariShared::jsConfirmEmailFieldLabelPatternMatchers(SafariShared *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v11[1] = *MEMORY[0x1E69E9840];
  {
    v5 = SafariShared::jsConfirmEmailFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers;
  }

  else
  {
    v10 = this;
    v7 = confirmEmailFieldLabels();
    v11[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v9 = [_WBSFieldLabelPatternMatcherFactory createFieldLabelPatternMatcherArrayFromWordArrays:v8 allowingEndOfWordMatches:0];

    v5 = v9;
    SafariShared::jsConfirmEmailFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers = v9;
    this = v10;
  }

  return makeJSFieldPatternMatcherArray(this, v5);
}

JSObjectRef SafariShared::jsShowHideButtonLabelPatternMatchers(SafariShared *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v11[1] = *MEMORY[0x1E69E9840];
  {
    v5 = SafariShared::jsShowHideButtonLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers;
  }

  else
  {
    v10 = this;
    v7 = showHideButtonLabels();
    v11[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v9 = [_WBSFieldLabelPatternMatcherFactory createFieldLabelPatternMatcherArrayFromWordArrays:v8 allowingEndOfWordMatches:0];

    v5 = v9;
    SafariShared::jsShowHideButtonLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers = v9;
    this = v10;
  }

  return makeJSFieldPatternMatcherArray(this, v5);
}

JSObjectRef SafariShared::jsSearchFieldLabelPatternMatchers(SafariShared *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v11[1] = *MEMORY[0x1E69E9840];
  {
    v5 = SafariShared::jsSearchFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers;
  }

  else
  {
    v10 = this;
    v7 = searchFieldLabels();
    v11[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v9 = [_WBSFieldLabelPatternMatcherFactory createFieldLabelPatternMatcherArrayFromWordArrays:v8 allowingEndOfWordMatches:0];

    v5 = v9;
    SafariShared::jsSearchFieldLabelPatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers = v9;
    this = v10;
  }

  return makeJSFieldPatternMatcherArray(this, v5);
}

JSObjectRef SafariShared::jsLoginFormTypePatternMatchers(SafariShared *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v11[1] = *MEMORY[0x1E69E9840];
  {
    v5 = SafariShared::jsLoginFormTypePatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers;
  }

  else
  {
    v10 = this;
    v7 = mapOfKeywordsIndicatingLoginFormTypeToScoreForMatching();
    v8 = [v7 allKeys];
    v11[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v5 = [_WBSFieldLabelPatternMatcherFactory createFieldLabelPatternMatcherArrayFromWordArrays:v9 allowingEndOfWordMatches:0];

    SafariShared::jsLoginFormTypePatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers = v5;
    this = v10;
  }

  return makeJSFieldPatternMatcherArray(this, v5);
}

JSObjectRef SafariShared::jsNewAccountFormTypePatternMatchers(SafariShared *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v11[1] = *MEMORY[0x1E69E9840];
  {
    v5 = SafariShared::jsNewAccountFormTypePatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers;
  }

  else
  {
    v10 = this;
    v7 = mapOfKeywordsIndicatingNewAccountFormTypeToScoreForMatching();
    v8 = [v7 allKeys];
    v11[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v5 = [_WBSFieldLabelPatternMatcherFactory createFieldLabelPatternMatcherArrayFromWordArrays:v9 allowingEndOfWordMatches:0];

    SafariShared::jsNewAccountFormTypePatternMatchers(OpaqueJSContext const*,OpaqueJSValue *,OpaqueJSString *,OpaqueJSValue const**)::patternMatchers = v5;
    this = v10;
  }

  return makeJSFieldPatternMatcherArray(this, v5);
}

uint64_t SafariShared::jsMapOfKeywordsIndicatingLoginFormTypeToScoreForMatching(SafariShared *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v6 = mapOfKeywordsIndicatingLoginFormTypeToScoreForMatching();
  v8 = SafariShared::JSUtilities::translateNSToJSValue(this, v6, v7);

  return v8;
}

uint64_t SafariShared::jsMapOfKeywordsIndicatingNewAccountFormTypeToScoreForMatching(SafariShared *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v6 = mapOfKeywordsIndicatingNewAccountFormTypeToScoreForMatching();
  v8 = SafariShared::JSUtilities::translateNSToJSValue(this, v6, v7);

  return v8;
}

uint64_t SafariShared::jsMapOfKeywordsIndicatingChangePasswordFormTypeToScoreForMatching(SafariShared *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  updateCachedArraysIfNeeded();
  v7 = cachedMapOfKeywordsIndicatingChangePasswordFormTypeToScoreForMatching;

  return SafariShared::JSUtilities::translateNSToJSValue(this, v7, v6);
}

uint64_t SafariShared::jsRegularExpressionsIndicatingNonAutoFillableFormType(SafariShared *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  updateCachedArraysIfNeeded();
  v7 = cachedRegularExpressionsIndicatingNonAutoFillableFormType;

  return SafariShared::JSUtilities::translateNSToJSValue(this, v7, v6);
}

uint64_t SafariShared::jsRegularExpressionsForForgotPasswordAffordance(SafariShared *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  updateCachedArraysIfNeeded();
  v7 = cachedRegularExpressionsForForgotPasswordAffordance;

  return SafariShared::JSUtilities::translateNSToJSValue(this, v7, v6);
}

uint64_t SafariShared::jsRegularExpressionsForForgotUserNameAffordance(SafariShared *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  updateCachedArraysIfNeeded();
  v7 = cachedRegularExpressionsForForgotUserNameAffordance;

  return SafariShared::JSUtilities::translateNSToJSValue(this, v7, v6);
}

uint64_t SafariShared::jsRegularExpressionsForForgotEmailAffordance(SafariShared *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  updateCachedArraysIfNeeded();
  v7 = cachedRegularExpressionsForForgotEmailAffordance;

  return SafariShared::JSUtilities::translateNSToJSValue(this, v7, v6);
}

JSValueRef SafariShared::jsCollectAllFields(SafariShared *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v6 = [WBSFormMetadataController collectAllFields:a3];

  return JSValueMakeBoolean(this, v6);
}

uint64_t SafariShared::FrameMetadata::getFormsAndMetadata(uint64_t a1, unint64_t a2, JSObjectRef *a3, JSValueRef *a4)
{
  v18[1] = *MEMORY[0x1E69E9840];
  *a3 = 0;
  *a4 = 0;
  v7 = [*(a1 + 48) jsContextForMetadataControllerScriptWorld];
  if (!v7)
  {
    return 0;
  }

  v9 = v7;
  v10 = SafariShared::JSUtilities::globalJSObjectByName(v7, "FormMetadataJS", v8);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v18[0] = JSValueMakeNumber(v9, a2);
  v12 = SafariShared::JSUtilities::callJSMethodWithArguments(v9, v11, "formsAndMetadata", v18, 1);
  if (!v12)
  {
    return 0;
  }

  v13 = JSValueToObject(v9, v12, 0);
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  PropertyAtIndex = JSObjectGetPropertyAtIndex(v9, v13, 0, 0);
  *a3 = JSValueToObject(v9, PropertyAtIndex, 0);
  v16 = 1;
  *a4 = JSObjectGetPropertyAtIndex(v9, v14, 1u, 0);
  return v16;
}

uint64_t SafariShared::FrameMetadata::getFormsAndMetadata(uint64_t a1, unint64_t a2, JSObjectRef *a3, void **a4)
{
  v18 = 0;
  result = SafariShared::FrameMetadata::getFormsAndMetadata(a1, a2, a3, &v18);
  if (result)
  {
    result = [*(a1 + 48) jsContextForMetadataControllerScriptWorld];
    if (result)
    {
      v7 = MEMORY[0x1E696EB58];
      v8 = v18;
      v9 = [MEMORY[0x1E696EB40] contextWithJSGlobalContextRef:JSContextGetGlobalContext(result)];
      v10 = [v7 valueWithJSValueRef:v8 inContext:v9];

      [MEMORY[0x1E695DF70] array];
      *a4 = v11 = 0;
      while (1)
      {
        v12 = [v10 objectForKeyedSubscript:@"length"];
        v13 = [v12 toUInt32];

        if (v11 >= v13)
        {
          break;
        }

        v14 = *a4;
        v15 = [WBSFormMetadata alloc];
        v16 = [v10 objectAtIndexedSubscript:v11];
        v17 = [(WBSFormMetadata *)v15 initWithJSValue:v16];
        [v14 addObject:v17];

        ++v11;
      }

      return 1;
    }
  }

  return result;
}

id SafariShared::FrameMetadata::metadataForAllForms(uint64_t a1, unint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v19 = 0;
  if (SafariShared::FrameMetadata::getFormsAndMetadata(a1, a2, &v20, &v19) && (v3 = [*(a1 + 48) jsContextForMetadataControllerScriptWorld]) != 0)
  {
    v4 = v3;
    v5 = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v19;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v7)
    {
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [*(a1 + 56) formMetadataControlsByAddingAdditionalControlInformationToFormMetadata:v10 inFrame:*(a1 + 48) inContext:v4 withControlMetadataContainingAdditionalControlInformation:{0, v15}];
          SafariShared::addPasswordRequirementsToFormMetadata(v10, v12);
          v13 = [(SafariShared *)v10 formMetadataByReplacingControlsWith:v11];
          [v5 addObject:v13];
        }

        v7 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void SafariShared::addPasswordRequirementsToFormMetadata(SafariShared *this, WBSFormMetadata *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = this;
  if (([(SafariShared *)v2 type]- 6) > 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = [(SafariShared *)v2 passwordElementUniqueID];
    v33 = v3;
    v36 = [(SafariShared *)v2 confirmPasswordElementUniqueID];
    v4 = [v3 length];
    v5 = v4 != 0;
    v6 = [v36 length];
    v7 = v6 != 0;
    if (!(v4 | v6))
    {
      [(SafariShared *)v2 setPasswordRequirements:0];
LABEL_52:

      goto LABEL_53;
    }

    [(SafariShared *)v2 controls];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v8 = v38 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v9)
    {
      v34 = 0;
      v35 = 0;
      v10 = *v38;
LABEL_6:
      v11 = 0;
      while (1)
      {
        if (*v38 != v10)
        {
          objc_enumerationMutation(v8);
        }

        if (!v5 && !v7)
        {
          goto LABEL_25;
        }

        v12 = *(*(&v37 + 1) + 8 * v11);
        v13 = [v12 uniqueID];
        v14 = v13;
        if (v13)
        {
          if (v5 && ([v13 isEqualToString:v3] & 1) != 0)
          {
            v5 = 0;
            v15 = v35;
            v35 = v12;
          }

          else
          {
            if (!v7)
            {
              v7 = 0;
              goto LABEL_20;
            }

            if (![v14 isEqualToString:v36])
            {
              v7 = 1;
              goto LABEL_20;
            }

            v7 = 0;
            v15 = v34;
            v34 = v12;
          }

          v16 = v12;

          v3 = v33;
        }

LABEL_20:

        if (v9 == ++v11)
        {
          v9 = [v8 countByEnumeratingWithState:&v37 objects:v41 count:16];
          if (v9)
          {
            goto LABEL_6;
          }

          goto LABEL_25;
        }
      }
    }

    v34 = 0;
    v35 = 0;
LABEL_25:

    v17 = [v35 passwordRules];
    if ([v17 length])
    {
      v18 = [MEMORY[0x1E69C8998] parsePasswordRules:v17 error:0];
    }

    else
    {
      v18 = 0;
    }

    v19 = [v34 passwordRules];

    if ([v19 length])
    {
      v32 = [MEMORY[0x1E69C8998] parsePasswordRules:v19 error:0];
      if (v18 && v32)
      {
        v30 = [MEMORY[0x1E69C8998] mergePasswordRuleSet:v18 withPasswordRuleSet:v32];
        goto LABEL_37;
      }
    }

    else
    {
      v32 = 0;
    }

    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = v32;
      v32 = v20;
    }

    v30 = v20;
LABEL_37:
    v21 = [v35 maxLength];
    v22 = [v35 minLength];
    v23 = [v34 maxLength];
    v24 = [v34 minLength];
    if (v21 < v23)
    {
      v23 = v21;
    }

    if (v22 <= v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = v22;
    }

    v26 = MEMORY[0x1E69C8970];
    if (v25)
    {
      v27 = [MEMORY[0x1E696AD98] numberWithInteger:v25];
      if (v23)
      {
LABEL_44:
        v28 = [MEMORY[0x1E696AD98] numberWithInteger:v23];
LABEL_47:
        v29 = [v26 requirementsForPasswordRuleSet:v31 respectingMinLength:v27 maxLength:v28];
        [(SafariShared *)v2 setPasswordRequirements:v29];

        if (v23)
        {
        }

        if (v25)
        {
        }

        goto LABEL_52;
      }
    }

    else
    {
      v27 = 0;
      if (v23)
      {
        goto LABEL_44;
      }
    }

    v28 = 0;
    goto LABEL_47;
  }

  [(SafariShared *)v2 setPasswordRequirements:0];
LABEL_53:
}

JSValueRef SafariShared::FrameMetadata::currentMetadataForForm(uint64_t a1, OpaqueJSValue *a2, unint64_t a3)
{
  v58[16] = *MEMORY[0x1E69E9840];
  value = 0;
  object = 0;
  if (!SafariShared::FrameMetadata::getFormsAndMetadata(a1, a3, &object, &value))
  {
    return 0;
  }

  v5 = [*(a1 + 48) jsContextForMetadataControllerScriptWorld];
  if (!v5)
  {
    return 0;
  }

  ctx = v5;
  v40 = JSValueToObject(v5, value, 0);
  SafariShared::JSUtilities::jsString("length", v58);
  Property = JSObjectGetProperty(ctx, v40, v58[0], 0);
  v7 = JSValueToNumber(ctx, Property, 0);
  if (v58[0])
  {
    JSStringRelease(v58[0]);
  }

  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v7)
  {
    v8 = 0;
    v9 = object;
    do
    {
      PropertyAtIndex = JSObjectGetPropertyAtIndex(ctx, v9, v8, 0);
      if (JSValueToObject(ctx, PropertyAtIndex, 0) == a2)
      {
        v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
        [v34 addObject:v11];
      }

      ++v8;
    }

    while (v7 != v8);
  }

  v12 = [v34 count];
  if (v12)
  {
    if (v12 == 1)
    {
      v38 = [v34 objectAtIndexedSubscript:0];
      v13 = JSObjectGetPropertyAtIndex(ctx, v40, [v38 unsignedIntegerValue], 0);
    }

    else
    {
      v38 = [MEMORY[0x1E696EB40] contextWithJSGlobalContextRef:JSContextGetGlobalContext(ctx)];
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      obj = v34;
      v39 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
      if (v39)
      {
        propertyIndex = 0;
        v37 = *v48;
        v43 = -1;
        do
        {
          for (i = 0; i != v39; ++i)
          {
            if (*v48 != v37)
            {
              objc_enumerationMutation(obj);
            }

            v42 = *(*(&v47 + 1) + 8 * i);
            v15 = JSObjectGetPropertyAtIndex(ctx, v40, [v42 unsignedIntegerValue], 0);
            v16 = [WBSFormMetadata alloc];
            v17 = [MEMORY[0x1E696EB58] valueWithJSValueRef:v15 inContext:v38];
            v18 = [(WBSFormMetadata *)v16 initWithJSValue:v17];

            v45 = v18;
            v19 = [(WBSFormMetadata *)v45 firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID];
            v20 = [(WBSFormMetadata *)v45 userNameElementUniqueID];
            v21 = [(WBSFormMetadata *)v45 passwordElementUniqueID];
            v22 = [(WBSFormMetadata *)v45 confirmPasswordElementUniqueID];
            v23 = v19 != 0;
            v24 = 1;
            if (v19)
            {
              v24 = 2;
            }

            if (v20)
            {
              v23 = v24;
            }

            if (v21)
            {
              ++v23;
            }

            v46 = v22;
            if (v22)
            {
              v25 = v23 + 1;
            }

            else
            {
              v25 = v23;
            }

            if (v25)
            {
              v55 = 0u;
              v56 = 0u;
              v53 = 0u;
              v54 = 0u;
              v26 = [(WBSFormMetadata *)v45 controls];
              v27 = [v26 countByEnumeratingWithState:&v53 objects:v58 count:16];
              if (v27)
              {
                v28 = *v54;
                do
                {
                  for (j = 0; j != v27; ++j)
                  {
                    if (*v54 != v28)
                    {
                      objc_enumerationMutation(v26);
                    }

                    v30 = *(*(&v53 + 1) + 8 * j);
                    v31 = [v30 uniqueID];
                    if (([v31 isEqualToString:v19] & 1) != 0 || (objc_msgSend(v31, "isEqualToString:", v20) & 1) != 0 || (objc_msgSend(v31, "isEqualToString:", v21) & 1) != 0 || objc_msgSend(v31, "isEqualToString:", v46))
                    {
                      v32 = [v30 value];
                      if ([v32 length])
                      {
                        v25 += 10;
                      }
                    }
                  }

                  v27 = [v26 countByEnumeratingWithState:&v53 objects:v58 count:16];
                }

                while (v27);
              }
            }

            if (v25 > v43)
            {
              propertyIndex = [v42 unsignedIntegerValue];
              v43 = v25;
            }
          }

          v39 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
        }

        while (v39);
      }

      else
      {
        propertyIndex = 0;
      }

      v13 = JSObjectGetPropertyAtIndex(ctx, v40, propertyIndex, 0);
    }

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

JSValueRef SafariShared::FrameMetadata::lockedMetadataForForm(id *this, OpaqueJSValue *a2)
{
  v3 = [this[6] jsContextForMetadataControllerScriptWorld];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  SafariShared::JSUtilities::jsString("_safariLockedFormMetadata", &propertyName);
  if (JSObjectHasProperty(v4, a2, propertyName))
  {
    Property = JSObjectGetProperty(v4, a2, propertyName, 0);
  }

  else
  {
    Property = 0;
  }

  if (propertyName)
  {
    JSStringRelease(propertyName);
  }

  return Property;
}

void sub_1BB7904D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, JSStringRef string)
{
  if (string)
  {
    JSStringRelease(string);
  }

  _Unwind_Resume(exception_object);
}

WBSFormMetadata *SafariShared::FrameMetadata::metadataForForm(id *a1, OpaqueJSValue *a2, unint64_t a3)
{
  v6 = [a1[6] jsContextForMetadataControllerScriptWorld];
  if (v6 && (v7 = v6, (v8 = SafariShared::FrameMetadata::jsMetadataForForm(a1, a2, a3)) != 0))
  {
    v9 = v8;
    v10 = [WBSFormMetadata alloc];
    v11 = MEMORY[0x1E696EB58];
    v12 = [MEMORY[0x1E696EB40] contextWithJSGlobalContextRef:JSContextGetGlobalContext(v7)];
    v13 = [v11 valueWithJSValueRef:v9 inContext:v12];
    v14 = [(WBSFormMetadata *)v10 initWithJSValue:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

JSValueRef SafariShared::FrameMetadata::jsMetadataForForm(id *this, OpaqueJSValue *a2, unint64_t a3)
{
  if (a3 || (result = SafariShared::FrameMetadata::lockedMetadataForForm(this, a2)) == 0)
  {

    return SafariShared::FrameMetadata::currentMetadataForForm(this, a2, a3);
  }

  return result;
}

const OpaqueJSContext *controlObject(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3)
  {
    if (v4)
    {
      v7 = [v3 jsContextForMetadataControllerScriptWorld];
      v6 = v7;
      if (v7)
      {
        v9 = SafariShared::JSUtilities::globalJSObjectByName(v7, "FormMetadataJS", v8);
        if (v9)
        {
          v10 = JSStringCreateWithCFString(v5);
          *v13 = JSValueMakeString(v6, v10);
          v11 = SafariShared::JSUtilities::callJSMethodWithArguments(v6, v9, "formControlWithUniqueID", v13, 1);
          if (!v11 || JSValueIsUndefined(v6, v11))
          {
            v6 = 0;
            if (!v10)
            {
              goto LABEL_12;
            }

            goto LABEL_11;
          }

          v6 = JSValueToObject(v6, v11, 0);
          if (v10)
          {
LABEL_11:
            JSStringRelease(v10);
          }
        }

        else
        {
          v6 = 0;
        }
      }
    }
  }

LABEL_12:

  return v6;
}

void sub_1BB790F0C(_Unwind_Exception *a1)
{
  if (v3)
  {
    JSStringRelease(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1BB7925F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1BB7928F8(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB13480](v2, 0x10A1C406DF74740);

  _Unwind_Resume(a1);
}

uint64_t *WTF::HashMap<OpaqueFormAutoFillFrame *,std::unique_ptr<SafariShared::FrameMetadata>,WTF::DefaultHash<OpaqueFormAutoFillFrame *>,WTF::HashTraits<OpaqueFormAutoFillFrame *>,WTF::HashTraits<std::unique_ptr<SafariShared::FrameMetadata>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<decltype(nullptr)>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (!*a2)
  {
    WTF::HashMap<OpaqueFormAutoFillFrame *,std::unique_ptr<SafariShared::FrameMetadata>,WTF::DefaultHash<OpaqueFormAutoFillFrame *>,WTF::HashTraits<OpaqueFormAutoFillFrame *>,WTF::HashTraits<std::unique_ptr<SafariShared::FrameMetadata>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<decltype(nullptr)>();
  }

  if (v4 == -1)
  {
    WTF::HashMap<OpaqueFormAutoFillFrame *,std::unique_ptr<SafariShared::FrameMetadata>,WTF::DefaultHash<OpaqueFormAutoFillFrame *>,WTF::HashTraits<OpaqueFormAutoFillFrame *>,WTF::HashTraits<std::unique_ptr<SafariShared::FrameMetadata>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<decltype(nullptr)>();
  }

  v6 = result;
  v7 = *result;
  if (!*result)
  {
    result = WTF::HashTable<OpaqueFormAutoFillFrame *,WTF::KeyValuePair<OpaqueFormAutoFillFrame *,std::unique_ptr<SafariShared::FrameMetadata>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<OpaqueFormAutoFillFrame *,std::unique_ptr<SafariShared::FrameMetadata>>>,WTF::DefaultHash<OpaqueFormAutoFillFrame *>,WTF::HashMap<OpaqueFormAutoFillFrame *,std::unique_ptr<SafariShared::FrameMetadata>,WTF::DefaultHash<OpaqueFormAutoFillFrame *>,WTF::HashTraits<OpaqueFormAutoFillFrame *>,WTF::HashTraits<std::unique_ptr<SafariShared::FrameMetadata>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<OpaqueFormAutoFillFrame *>,WTF::FastMalloc>::expand(result, 0);
    v7 = *v6;
    v4 = *a2;
  }

  v8 = *(v7 - 8);
  v9 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
  v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
  v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
  v12 = v8 & ((v11 >> 31) ^ v11);
  v13 = (v7 + 16 * v12);
  v14 = *v13;
  if (*v13)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      if (v14 == v4)
      {
        v19 = 0;
        v20 = v7 + 16 * *(v7 - 4);
        goto LABEL_26;
      }

      if (v14 == -1)
      {
        v15 = v13;
      }

      v12 = (v12 + v16) & v8;
      v13 = (v7 + 16 * v12);
      v14 = *v13;
      ++v16;
    }

    while (*v13);
    if (v15)
    {
      *v15 = 0;
      v15[1] = 0;
      --*(*v6 - 16);
      v4 = *a2;
      v13 = v15;
    }
  }

  result = v13[1];
  *v13 = v4;
  v13[1] = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v17 = *v6;
  if (*v6)
  {
    v18 = *(v17 - 12) + 1;
  }

  else
  {
    v18 = 1;
  }

  *(v17 - 12) = v18;
  v21 = (*(v17 - 16) + v18);
  v22 = *(v17 - 4);
  if (v22 > 0x400)
  {
    if (v22 > 2 * v21)
    {
      goto LABEL_24;
    }
  }

  else if (3 * v22 > 4 * v21)
  {
    goto LABEL_24;
  }

  result = WTF::HashTable<OpaqueFormAutoFillFrame *,WTF::KeyValuePair<OpaqueFormAutoFillFrame *,std::unique_ptr<SafariShared::FrameMetadata>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<OpaqueFormAutoFillFrame *,std::unique_ptr<SafariShared::FrameMetadata>>>,WTF::DefaultHash<OpaqueFormAutoFillFrame *>,WTF::HashMap<OpaqueFormAutoFillFrame *,std::unique_ptr<SafariShared::FrameMetadata>,WTF::DefaultHash<OpaqueFormAutoFillFrame *>,WTF::HashTraits<OpaqueFormAutoFillFrame *>,WTF::HashTraits<std::unique_ptr<SafariShared::FrameMetadata>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<OpaqueFormAutoFillFrame *>,WTF::FastMalloc>::expand(v6, v13);
  v13 = result;
  v17 = *v6;
  if (!*v6)
  {
    v23 = 0;
    goto LABEL_25;
  }

LABEL_24:
  v23 = *(v17 - 4);
LABEL_25:
  v20 = v17 + 16 * v23;
  v19 = 1;
LABEL_26:
  *a3 = v13;
  *(a3 + 8) = v20;
  *(a3 + 16) = v19;
  return result;
}

void sub_1BB792EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, void *a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void SafariShared::addAdditionalControlMetadata(void *a1, void *a2)
{
  v10 = a1;
  v3 = a2;
  [v3 elementBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [v10 setRectLeft:?];
  [v10 setRectTop:v5];
  [v10 setRectWidth:v7];
  [v10 setRectHeight:v9];
  [v10 setAutoFillButtonType:{objc_msgSend(v3, "htmlInputElementAutoFillButtonType")}];
  [v10 setLastAutoFillButtonType:{objc_msgSend(v3, "htmlInputElementLastAutoFillButtonType")}];
}

void sub_1BB793A4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, JSStringRef string)
{
  if (string)
  {
    JSStringRelease(string);
  }

  _Unwind_Resume(a1);
}

void sub_1BB793B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, JSStringRef string)
{
  if (string)
  {
    JSStringRelease(string);
  }

  _Unwind_Resume(a1);
}

void sub_1BB793FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, const OpaqueJSContext *a16, SafariShared::JSUtilities *a17, void *a18)
{
  SafariShared::JSUtilities::callJSMethodWithArguments(a17, a16, "clearTextFieldOrSelectElementMetadataCache", 0, 0);
  v23 = *(v19 + 16);
  *(v19 + 16) = 0;

  _Unwind_Resume(a1);
}

void sub_1BB794784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 80), 8);

  _Unwind_Resume(a1);
}

BOOL SafariShared::jsObjectHasOnBeforeUnloadProperty(SafariShared *this, const OpaqueJSContext *a2, OpaqueJSValue *a3)
{
  SafariShared::JSUtilities::jsString("onbeforeunload", &propertyName);
  Property = JSObjectGetProperty(this, a2, propertyName, 0);
  if (propertyName)
  {
    JSStringRelease(propertyName);
  }

  v6 = [MEMORY[0x1E696AEC0] safari_stringWithJSValue:Property context:this nullStringPolicy:2];
  v7 = [v6 length] != 0;

  return v7;
}

void sub_1BB7949BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, JSStringRef string)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_1BB795C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void SafariShared::FrameMetadata::~FrameMetadata(id *this)
{

  SafariShared::JSController::~JSController(this);
}

{

  SafariShared::JSController::~JSController(this);

  JUMPOUT(0x1BFB13480);
}

void updateCachedArraysIfNeeded(void)
{
  if ((updateCachedArraysIfNeeded(void)::haveLoadedData & 1) == 0)
  {
    v0 = [MEMORY[0x1E696AAE8] safari_safariSharedBundle];
    v1 = [v0 URLForResource:@"WBSFormAutoFillKeywords" withExtension:@"json"];

    v32 = 0;
    v2 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v1 options:0 error:&v32];
    v3 = v32;
    v31 = v3;
    v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v2 options:0 error:&v31];
    v5 = v31;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v4 safari_arrayForKey:@"UsernameFieldLabels"];
      if (v6)
      {
        objc_storeStrong(&cachedUsernameFieldLabels, v6);
      }

      v7 = [v4 safari_arrayForKey:@"NonAccountPasswordSecureTextEntryFieldLabels"];
      if (v7)
      {
        objc_storeStrong(&cachedNonAccountPasswordSecureTextEntryFieldLabels, v7);
      }

      v8 = [v4 safari_arrayForKey:@"NonUsernameFieldLabels"];
      if (v8)
      {
        objc_storeStrong(&cachedNonUsernameFieldLabels, v8);
      }

      v9 = [v4 safari_arrayForKey:@"NonEmailFieldLabels"];
      if (v9)
      {
        objc_storeStrong(&cachedNonEmailFieldLabels, v9);
      }

      v10 = [v4 safari_arrayForKey:@"OldPasswordFieldLabels"];
      if (v10)
      {
        objc_storeStrong(&cachedOldPasswordFieldLabels, v10);
      }

      v11 = [v4 safari_arrayForKey:@"PasswordFieldLabels"];
      if (v11)
      {
        objc_storeStrong(&cachedPasswordFieldLabels, v11);
      }

      v12 = [v4 safari_arrayForKey:@"ConfirmPasswordFieldLabels"];
      if (v12)
      {
        objc_storeStrong(&cachedConfirmPasswordFieldLabels, v12);
      }

      v13 = [v4 safari_arrayForKey:@"ConfirmEmailFieldLabels"];
      if (v13)
      {
        objc_storeStrong(&cachedConfirmEmailFieldLabels, v13);
      }

      v14 = [v4 safari_arrayForKey:@"ShowHideButtonLabels"];
      if (v14)
      {
        objc_storeStrong(&cachedShowHideButtonLabels, v14);
      }

      v15 = [v4 safari_arrayForKey:@"SearchFieldLabels"];
      if (v15)
      {
        objc_storeStrong(&cachedSearchFieldLabels, v15);
      }

      v16 = [v4 safari_dictionaryForKey:@"LoginFormTypeKeywords"];
      if (v16)
      {
        objc_storeStrong(&cachedMapOfKeywordsIndicatingLoginFormTypeToScoreForMatching, v16);
      }

      v17 = [v4 safari_dictionaryForKey:@"NewAccountFormTypeKeywords"];
      if (v17)
      {
        objc_storeStrong(&cachedMapOfKeywordsIndicatingNewAccountFormTypeToScoreForMatching, v17);
      }

      v18 = [v4 safari_dictionaryForKey:@"ChangePasswordFormTypeKeywords"];
      if (v18)
      {
        objc_storeStrong(&cachedMapOfKeywordsIndicatingChangePasswordFormTypeToScoreForMatching, v18);
      }

      v19 = [v4 safari_arrayForKey:@"NonAutoFillableFormTypeRegularExpressions"];
      if (v19)
      {
        objc_storeStrong(&cachedRegularExpressionsIndicatingNonAutoFillableFormType, v19);
      }

      v20 = [v4 safari_arrayForKey:@"IgnoredDataTypeFieldLabels"];
      if (v20)
      {
        objc_storeStrong(&cachedIgnoredDataTypeFieldLabels, v20);
      }

      v21 = [v4 safari_arrayForKey:@"ForgotPasswordAffordanceRegularExpressions"];
      if (v21)
      {
        objc_storeStrong(&cachedRegularExpressionsForForgotPasswordAffordance, v21);
      }

      v22 = [v4 safari_arrayForKey:@"ForgotUserNameAffordanceRegularExpressions"];
      if (v22)
      {
        objc_storeStrong(&cachedRegularExpressionsForForgotUserNameAffordance, v22);
      }

      v23 = [v4 safari_arrayForKey:@"ForgotEmailAffordanceRegularExpressions"];
      if (v23)
      {
        objc_storeStrong(&cachedRegularExpressionsForForgotEmailAffordance, v23);
      }

      v24 = [v4 safari_arrayForKey:@"OneTimeCodeFieldLabels"];
      if (v24)
      {
        objc_storeStrong(&cachedOneTimeCodeFieldLabels, v24);
      }

      v25 = [v4 safari_arrayForKey:@"WeakOneTimeCodeFieldLabels"];
      if (v25)
      {
        objc_storeStrong(&cachedWeakOneTimeCodeFieldLabels, v25);
      }

      v26 = [v4 safari_arrayForKey:@"CodeButNotOneTimeCodeFieldLabels"];
      if (v26)
      {
        objc_storeStrong(&cachedCodeButNotOneTimeCodeFieldLabels, v26);
      }

      v27 = [v4 safari_arrayForKey:@"DayFieldLabels"];
      if (v27)
      {
        objc_storeStrong(&cachedDayFieldLabels, v27);
      }

      v28 = [v4 safari_arrayForKey:@"MonthFieldLabels"];
      if (v28)
      {
        objc_storeStrong(&cachedMonthFieldLabels, v28);
      }

      v29 = [v4 safari_arrayForKey:@"YearFieldLabels"];
      if (v29)
      {
        objc_storeStrong(&cachedYearFieldLabels, v29);
      }

      v30 = [v4 safari_dictionaryForKey:@"creditCardAutoFill"];
      if (v30)
      {
        objc_storeStrong(&cachedCreditCardAutoFillKeywords, v30);
      }

      updateCachedArraysIfNeeded(void)::haveLoadedData = 1;
    }
  }
}

JSObjectRef makeJSFieldPatternMatcherArray(const OpaqueJSContext *a1, const __WBSFieldLabelPatternMatcherArray *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  Count = WBSFieldLabelPatternMatcherArrayGetCount(a2);
  MEMORY[0x1EEE9AC00]();
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v5 >= 0x200)
  {
    v7 = 512;
  }

  else
  {
    v7 = v5;
  }

  bzero(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      PatternMatcherAtIndex = WBSFieldLabelPatternMatcherArrayGetPatternMatcherAtIndex(a2, i);
      {
        v10 = makeJSFieldPatternMatcher(OpaqueJSContext const*,__WBSFieldLabelPatternMatcher const*)::jsClass;
      }

      else
      {
        v16[2] = xmmword_1F3A5C480;
        v16[3] = unk_1F3A5C490;
        v17 = qword_1F3A5C4A0;
        v16[0] = xmmword_1F3A5C460;
        v16[1] = unk_1F3A5C470;
        memset(&definition.staticFunctions, 0, 96);
        *&definition.version = 0;
        *&definition.parentClass = 0u;
        definition.className = "FieldPatternMatcher";
        definition.staticFunctions = v16;
        v14 = PatternMatcherAtIndex;
        v11 = JSClassCreate(&definition);
        PatternMatcherAtIndex = v14;
        v10 = v11;
        makeJSFieldPatternMatcher(OpaqueJSContext const*,__WBSFieldLabelPatternMatcher const*)::jsClass = v11;
      }

      v6[i] = JSObjectMake(a1, v10, PatternMatcherAtIndex);
    }
  }

  *&definition.version = 0;
  return JSObjectMakeArray(a1, Count, v6, &definition);
}

uint64_t callPatternMatcherFunction<CFRange (*)(__WBSFieldLabelPatternMatcher const*,unsigned short const*,long)>(const OpaqueJSContext *a1, OpaqueJSValue *a2, uint64_t a3, JSValueRef *a4, uint64_t (*a5)(void *, const JSChar *, size_t))
{
  if (!a3)
  {
    return 0;
  }

  v8 = JSValueToStringCopy(a1, *a4, 0);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  Private = JSObjectGetPrivate(a2);
  CharactersPtr = JSStringGetCharactersPtr(v9);
  Length = JSStringGetLength(v9);
  v13 = a5(Private, CharactersPtr, Length);
  if (v13 == -1)
  {
    v26 = 0;
  }

  else
  {
    v15 = JSStringCreateWithCharacters(&CharactersPtr[v13], v14);
    v17 = SafariShared::JSUtilities::nsString(v15, v16);
    v18 = [v17 lowercaseString];
    v19 = [WBSFormToABBinder specifierForLabel:v18];

    v20 = objc_alloc(MEMORY[0x1E695DEC8]);
    v21 = [v19 property];
    v22 = [v19 category];
    v23 = [v19 parentProperty];
    v24 = [v20 initWithObjects:{v17, v21, v22, v23, 0}];

    v26 = SafariShared::JSUtilities::translateNSToJSValue(a1, v24, v25);
    if (v15)
    {
      JSStringRelease(v15);
    }
  }

  JSStringRelease(v9);
  return v26;
}

void sub_1BB7972A0(_Unwind_Exception *a1)
{
  if (v2)
  {
    JSStringRelease(v2);
  }

  JSStringRelease(v1);
  _Unwind_Resume(a1);
}

id SafariShared::dayFieldLabels(SafariShared *this)
{
  updateCachedArraysIfNeeded();
  v1 = cachedDayFieldLabels;

  return v1;
}

id SafariShared::monthFieldLabels(SafariShared *this)
{
  updateCachedArraysIfNeeded();
  v1 = cachedMonthFieldLabels;

  return v1;
}

id SafariShared::yearFieldLabels(SafariShared *this)
{
  updateCachedArraysIfNeeded();
  v1 = cachedYearFieldLabels;

  return v1;
}

id ignoredDataTypeFieldLabels(void)
{
  updateCachedArraysIfNeeded();
  v0 = cachedIgnoredDataTypeFieldLabels;

  return v0;
}

id oneTimeCodeFieldLabels(void)
{
  updateCachedArraysIfNeeded();
  v0 = cachedOneTimeCodeFieldLabels;

  return v0;
}

id WeakOneTimeCodeFieldLabels(void)
{
  updateCachedArraysIfNeeded();
  v0 = cachedWeakOneTimeCodeFieldLabels;

  return v0;
}

id CodeButNotOneTimeCodeFieldLabels(void)
{
  updateCachedArraysIfNeeded();
  v0 = cachedCodeButNotOneTimeCodeFieldLabels;

  return v0;
}

id usernameFieldLabels(void)
{
  updateCachedArraysIfNeeded();
  v0 = cachedUsernameFieldLabels;

  return v0;
}

id nonAccountPasswordSecureTextEntryFieldLabels(void)
{
  updateCachedArraysIfNeeded();
  v0 = cachedNonAccountPasswordSecureTextEntryFieldLabels;

  return v0;
}

id nonUsernameFieldLabels(void)
{
  updateCachedArraysIfNeeded();
  v0 = cachedNonUsernameFieldLabels;

  return v0;
}

id nonEmailFieldLabels(void)
{
  updateCachedArraysIfNeeded();
  v0 = cachedNonEmailFieldLabels;

  return v0;
}

id oldPasswordFieldLabels(void)
{
  updateCachedArraysIfNeeded();
  v0 = cachedOldPasswordFieldLabels;

  return v0;
}

id passwordFieldLabels(void)
{
  updateCachedArraysIfNeeded();
  v0 = cachedPasswordFieldLabels;

  return v0;
}

id confirmPasswordFieldLabels(void)
{
  updateCachedArraysIfNeeded();
  v0 = cachedConfirmPasswordFieldLabels;

  return v0;
}

id confirmEmailFieldLabels(void)
{
  updateCachedArraysIfNeeded();
  v0 = cachedConfirmEmailFieldLabels;

  return v0;
}

id showHideButtonLabels(void)
{
  updateCachedArraysIfNeeded();
  v0 = cachedShowHideButtonLabels;

  return v0;
}

id searchFieldLabels(void)
{
  updateCachedArraysIfNeeded();
  v0 = cachedSearchFieldLabels;

  return v0;
}

id mapOfKeywordsIndicatingLoginFormTypeToScoreForMatching(void)
{
  updateCachedArraysIfNeeded();
  v0 = cachedMapOfKeywordsIndicatingLoginFormTypeToScoreForMatching;

  return v0;
}

id mapOfKeywordsIndicatingNewAccountFormTypeToScoreForMatching(void)
{
  updateCachedArraysIfNeeded();
  v0 = cachedMapOfKeywordsIndicatingNewAccountFormTypeToScoreForMatching;

  return v0;
}

uint64_t WTF::HashTable<OpaqueFormAutoFillFrame *,WTF::KeyValuePair<OpaqueFormAutoFillFrame *,std::unique_ptr<SafariShared::FrameMetadata>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<OpaqueFormAutoFillFrame *,std::unique_ptr<SafariShared::FrameMetadata>>>,WTF::DefaultHash<OpaqueFormAutoFillFrame *>,WTF::HashMap<OpaqueFormAutoFillFrame *,std::unique_ptr<SafariShared::FrameMetadata>,WTF::DefaultHash<OpaqueFormAutoFillFrame *>,WTF::HashTraits<OpaqueFormAutoFillFrame *>,WTF::HashTraits<std::unique_ptr<SafariShared::FrameMetadata>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<OpaqueFormAutoFillFrame *>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        v5 = *v4;
        *v4 = 0;
        if (v5)
        {
          (*(*v5 + 8))(v5);
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<OpaqueFormAutoFillFrame *,WTF::KeyValuePair<OpaqueFormAutoFillFrame *,std::unique_ptr<SafariShared::FrameMetadata>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<OpaqueFormAutoFillFrame *,std::unique_ptr<SafariShared::FrameMetadata>>>,WTF::DefaultHash<OpaqueFormAutoFillFrame *>,WTF::HashMap<OpaqueFormAutoFillFrame *,std::unique_ptr<SafariShared::FrameMetadata>,WTF::DefaultHash<OpaqueFormAutoFillFrame *>,WTF::HashTraits<OpaqueFormAutoFillFrame *>,WTF::HashTraits<std::unique_ptr<SafariShared::FrameMetadata>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<OpaqueFormAutoFillFrame *>,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
{
  result = a2[1];
  *a2 = -1;
  a2[1] = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<OpaqueFormAutoFillFrame *,WTF::KeyValuePair<OpaqueFormAutoFillFrame *,std::unique_ptr<SafariShared::FrameMetadata>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<OpaqueFormAutoFillFrame *,std::unique_ptr<SafariShared::FrameMetadata>>>,WTF::DefaultHash<OpaqueFormAutoFillFrame *>,WTF::HashMap<OpaqueFormAutoFillFrame *,std::unique_ptr<SafariShared::FrameMetadata>,WTF::DefaultHash<OpaqueFormAutoFillFrame *>,WTF::HashTraits<OpaqueFormAutoFillFrame *>,WTF::HashTraits<std::unique_ptr<SafariShared::FrameMetadata>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<OpaqueFormAutoFillFrame *>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<OpaqueFormAutoFillFrame *,WTF::KeyValuePair<OpaqueFormAutoFillFrame *,std::unique_ptr<SafariShared::FrameMetadata>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<OpaqueFormAutoFillFrame *,std::unique_ptr<SafariShared::FrameMetadata>>>,WTF::DefaultHash<OpaqueFormAutoFillFrame *>,WTF::HashMap<OpaqueFormAutoFillFrame *,std::unique_ptr<SafariShared::FrameMetadata>,WTF::DefaultHash<OpaqueFormAutoFillFrame *>,WTF::HashTraits<OpaqueFormAutoFillFrame *>,WTF::HashTraits<std::unique_ptr<SafariShared::FrameMetadata>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<OpaqueFormAutoFillFrame *>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = (v6 + 16 * v11);
      v14 = *v13;
      if (*v13 != -1)
      {
        if (v14)
        {
          v16 = *a1;
          if (*a1)
          {
            v17 = *(v16 - 8);
          }

          else
          {
            v17 = 0;
          }

          v18 = (~(v14 << 32) + v14) ^ ((~(v14 << 32) + v14) >> 22);
          v19 = 9 * ((v18 + ~(v18 << 13)) ^ ((v18 + ~(v18 << 13)) >> 8));
          v20 = (v19 ^ (v19 >> 15)) + ~((v19 ^ (v19 >> 15)) << 27);
          v21 = v17 & ((v20 >> 31) ^ v20);
          v22 = 1;
          do
          {
            v23 = v21;
            v24 = *(v16 + 16 * v21);
            v21 = (v21 + v22++) & v17;
          }

          while (v24);
          v25 = v16 + 16 * v23;
          v26 = *(v25 + 8);
          *(v25 + 8) = 0;
          if (v26)
          {
            (*(*v26 + 8))(v26);
          }

          v27 = *v13;
          v13[1] = 0;
          *v25 = v27;
          v28 = v13[1];
          v13[1] = 0;
          if (v28)
          {
            (*(*v28 + 8))(v28);
          }

          if (v13 == a3)
          {
            v12 = v25;
          }
        }

        else
        {
          v15 = v13[1];
          v13[1] = 0;
          if (v15)
          {
            (*(*v15 + 8))(v15);
          }
        }
      }

      ++v11;
    }

    while (v11 != v7);
  }

  else
  {
    v12 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v12;
}

uint64_t WTF::HashTable<OpaqueFormAutoFillFrame *,WTF::KeyValuePair<OpaqueFormAutoFillFrame *,std::unique_ptr<SafariShared::FrameMetadata>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<OpaqueFormAutoFillFrame *,std::unique_ptr<SafariShared::FrameMetadata>>>,WTF::DefaultHash<OpaqueFormAutoFillFrame *>,WTF::HashMap<OpaqueFormAutoFillFrame *,std::unique_ptr<SafariShared::FrameMetadata>,WTF::DefaultHash<OpaqueFormAutoFillFrame *>,WTF::HashTraits<OpaqueFormAutoFillFrame *>,WTF::HashTraits<std::unique_ptr<SafariShared::FrameMetadata>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<OpaqueFormAutoFillFrame *>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<OpaqueFormAutoFillFrame *,std::unique_ptr<SafariShared::FrameMetadata>,WTF::DefaultHash<OpaqueFormAutoFillFrame *>,WTF::HashTraits<OpaqueFormAutoFillFrame *>,WTF::HashTraits<std::unique_ptr<SafariShared::FrameMetadata>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<OpaqueFormAutoFillFrame *>>,(WTF::ShouldValidateKey)1,OpaqueFormAutoFillFrame *>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = *a2;
  if (!*a2)
  {
    [WBSFormMetadataController textFieldFocused:inFrame:textFieldMetadata:formMetadata:];
  }

  if (v3 == -1)
  {
    [WBSFormMetadataController textFieldFocused:inFrame:textFieldMetadata:formMetadata:];
  }

  v4 = *(v2 - 8);
  v5 = (~(v3 << 32) + v3) ^ ((~(v3 << 32) + v3) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  v9 = *(v2 + 16 * v8);
  if (v9 == v3)
  {
    return v2 + 16 * v8;
  }

  v10 = 1;
  while (v9)
  {
    v8 = (v8 + v10) & v4;
    v9 = *(v2 + 16 * v8);
    ++v10;
    if (v9 == v3)
    {
      return v2 + 16 * v8;
    }
  }

  return v2 + 16 * *(v2 - 4);
}

uint64_t WTF::HashTable<OpaqueFormAutoFillFrame *,WTF::KeyValuePair<OpaqueFormAutoFillFrame *,std::unique_ptr<SafariShared::FrameMetadata>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<OpaqueFormAutoFillFrame *,std::unique_ptr<SafariShared::FrameMetadata>>>,WTF::DefaultHash<OpaqueFormAutoFillFrame *>,WTF::HashMap<OpaqueFormAutoFillFrame *,std::unique_ptr<SafariShared::FrameMetadata>,WTF::DefaultHash<OpaqueFormAutoFillFrame *>,WTF::HashTraits<OpaqueFormAutoFillFrame *>,WTF::HashTraits<std::unique_ptr<SafariShared::FrameMetadata>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<OpaqueFormAutoFillFrame *>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  if (*a1 && (v4 = *(v3 - 4)) != 0)
  {
    v5 = v4 << (6 * *(v3 - 12) >= (2 * v4));
  }

  else
  {
    v5 = 8;
  }

  return WTF::HashTable<OpaqueFormAutoFillFrame *,WTF::KeyValuePair<OpaqueFormAutoFillFrame *,std::unique_ptr<SafariShared::FrameMetadata>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<OpaqueFormAutoFillFrame *,std::unique_ptr<SafariShared::FrameMetadata>>>,WTF::DefaultHash<OpaqueFormAutoFillFrame *>,WTF::HashMap<OpaqueFormAutoFillFrame *,std::unique_ptr<SafariShared::FrameMetadata>,WTF::DefaultHash<OpaqueFormAutoFillFrame *>,WTF::HashTraits<OpaqueFormAutoFillFrame *>,WTF::HashTraits<std::unique_ptr<SafariShared::FrameMetadata>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<OpaqueFormAutoFillFrame *>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

__CFString *WBSStringFromAutoFillFormType(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"WBSAutoFillFormTypeUndetermined";
  }

  else
  {
    return off_1E7FC64F8[a1 - 1];
  }
}

void sub_1BB798B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Unwind_Resume(a1);
}

void sub_1BB79941C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose((v65 - 256), 8);
  _Unwind_Resume(a1);
}

void sub_1BB799F38(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id lookupSynonyms(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = findEntry<SafariShared::AddressBookAutoCompleteMappingData::SynonymCollection>(a1, v5);
  v8 = v7;
  v23 = v5;
  if (v7 && v7[1])
  {
    v9 = 0;
    v10 = 0;
    v11 = v7[2];
    v12 = -1;
    do
    {
      v25 = 0;
      v26 = 0;
      while (1)
      {
        v13 = *v11++;
        v14 = v13;
        v24 = v14;
        if (!v14)
        {
          break;
        }

        v15 = HIDWORD(v26);
        if (HIDWORD(v26) == v26)
        {
          WTF::Vector<NSString const* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,NSString const* {__strong}&>(&v25, &v24);
        }

        else
        {
          v16 = v25;
          *(v16 + 8 * v15) = v14;
          ++HIDWORD(v26);
        }
      }

      v17 = objc_alloc(MEMORY[0x1E695DEC8]);
      v18 = [v17 initWithObjects:v25 count:{HIDWORD(v26), v23, v24}];
      v24 = -1;
      if ([WBSFormToABBinder indexOfBestMatchForString:v6 inArray:v18 startingPosition:&v24]!= 0x7FFFFFFFFFFFFFFFLL)
      {
        v19 = v24;
        if (v24 < v12)
        {
          v20 = v18;

          v10 = v20;
          v12 = v19;
        }
      }

      WTF::Vector<NSString const* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v25, v21);
      ++v9;
    }

    while (v9 < v8[1]);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

unint64_t lookupSpecifier(uint64_t a1, void *a2)
{
  v3 = a2;
  result = [v3 length];
  v5 = result;
  __key[0] = result;
  v11 = v12;
  v6 = v12;
  if (result >= 0x81)
  {
    if (result >> 31)
    {
      __break(0xC471u);
      return result;
    }

    v6 = WTF::fastMalloc((2 * result));
    v11 = v6;
  }

  [v3 getCharacters:v6 range:{0, v5}];
  __key[1] = v11;
  v7 = bsearch_b(__key, *(a1 + 8), *a1, 0x18uLL, &__block_literal_global_18_0);
  if (v7)
  {
    v9 = v7[2];
    v10 = [objc_alloc(MEMORY[0x1E69C8808]) initWithProperty:*v9 component:v9[1] label:v9[2] category:v9[3] parentProperty:v9[4] classification:v9[5] classificationHint:v9[6]];
  }

  else
  {
    v10 = 0;
  }

  if (v12 != v11 && v11)
  {
    WTF::fastFree(v11, v8);
  }

  return v10;
}

void *findEntry<SafariShared::AddressBookAutoCompleteMappingData::SynonymCollectionMap>(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    v7[0] = v3;
    v5 = bsearch_b(v7, *(a1 + 8), *a1, 0x10uLL, &__block_literal_global_53);
  }

  return v5;
}

void *findEntry<SafariShared::AddressBookAutoCompleteMappingData::SynonymCollection>(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    __key[0] = v3;
    v5 = bsearch_b(__key, *(a1 + 8), *a1, 0x18uLL, &__block_literal_global_16_0);
  }

  return v5;
}

uint64_t WTF::Vector<NSString const* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,NSString const* {__strong}&>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<NSString const* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *(a1 + 12);
  v5 = *a1;
  *(v5 + 8 * v4) = *v3;
  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<NSString const* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 8 * *(a1 + 12) <= a3)
  {
    v10 = *(a1 + 8);
    if (v10 + (v10 >> 1) <= v10 + 1)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = v10 + (v10 >> 1);
    }

    if (v11 <= a2)
    {
      v11 = a2;
    }

    if (v11 <= 0x10)
    {
      v12 = 16;
    }

    else
    {
      v12 = v11;
    }

    WTF::Vector<NSString const* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
  }

  else
  {
    v6 = a3 - v5;
    v7 = *(a1 + 8);
    if (v7 + (v7 >> 1) <= v7 + 1)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = v7 + (v7 >> 1);
    }

    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v8 <= 0x10)
    {
      v9 = 16;
    }

    else
    {
      v9 = v8;
    }

    WTF::Vector<NSString const* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<NSString const* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  v2 = a2;
  if (!(a2 >> 29))
  {
    v3 = result;
    v4 = *result;
    v5 = *(result + 12);
    v6 = WTF::fastMalloc((8 * a2));
    *(v3 + 8) = v2;
    *v3 = v6;
    if (v5)
    {
      v8 = v6;
      v9 = 8 * v5;
      v10 = v4;
      do
      {
        v11 = *v10;
        *v10 = 0;
        *v8++ = v11;
        v12 = *v10++;

        v9 -= 8;
      }

      while (v9);
    }

    if (v4)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      WTF::fastFree(v4, v7);
    }

    return 1;
  }

  __break(0xC471u);
  return result;
}

uint64_t WTF::Vector<NSString const* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 8 * v3;
    do
    {
      v6 = *v4++;

      v5 -= 8;
    }

    while (v5);
  }

  v7 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v7, a2);
  }

  return a1;
}

uint64_t ___ZL15lookupSpecifierRKN12SafariShared34AddressBookAutoCompleteMappingData3MapEP8NSString_block_invoke(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v3 = *a3;
  v4 = *a2;
  if (*a3 >= *a2)
  {
    v5 = *a2;
  }

  else
  {
    v5 = *a3;
  }

  if (v5)
  {
    v6 = a3[1];
    v7 = a2[1];
    while (1)
    {
      v8 = *v7;
      v9 = *v6;
      if (v8 < v9)
      {
        return 0xFFFFFFFFLL;
      }

      if (v9 < v8)
      {
        return 1;
      }

      ++v7;
      ++v6;
      if (!--v5)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    if (v4 < v3)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v3 < v4;
    }
  }
}

void sub_1BB79AC84(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

__CFString *mobileGestaltStringForQuery(const __CFString *a1)
{
  v1 = MGCopyAnswer();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = &stru_1F3A5E418;
  }

  v3 = v2;

  return v2;
}

void sub_1BB79B0C0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1BB79BD28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = WBSFrequentlyVisitedSitesBannedURLStore;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id **std::unique_ptr<SafariShared::SuddenTerminationDisabler>::~unique_ptr[abi:sn200100](id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v2);
    MEMORY[0x1BFB13480]();
  }

  return a1;
}

void sub_1BB79C8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1BB79E00C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, id location)
{
  objc_destroyWeak((v21 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB79F2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}

void sub_1BB7A0558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  _Block_object_dispose(&a24, 8);

  _Unwind_Resume(a1);
}

void sub_1BB7A2598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  _Block_object_dispose((v22 - 112), 8);

  _Unwind_Resume(a1);
}

void sub_1BB7A292C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1BB7A4FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB7A5380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1BB7A5518(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id __copy_helper_block_e8_64n17_8_8_t0w24_s24_s32(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 64) = v4;
  *(a1 + 88) = *(a2 + 88);
  result = *(a2 + 96);
  *(a1 + 96) = result;
  return result;
}

void __destroy_helper_block_e8_64n9_8_s24_s32(uint64_t a1)
{
  v2 = *(a1 + 96);
}

void sub_1BB7ACB50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  _Block_object_dispose((v2 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1BB7AD94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB7AE6E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB7AE8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB7AEBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB7B05DC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id WBSHistoryTruncatePageTitle(void *a1, unint64_t a2)
{
  v3 = a1;
  if ([v3 length] > a2)
  {
    v4 = [v3 rangeOfComposedCharacterSequencesForRange:{0, a2 - 1}];
    v6 = [v3 substringWithRange:{v4, v5}];
    v7 = [v6 stringByAppendingString:@"…"];

    v3 = v7;
  }

  return v3;
}

id WBSHistoryDecodeAutocompleteTriggers(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AE40] propertyListWithData:a1 options:1 format:0 error:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    if ([v2 count])
    {
      v3 = [v2 count];
      if (v3 - 1 >= 0)
      {
        do
        {
          v4 = [v2 objectAtIndexedSubscript:--v3];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            [v2 removeObjectAtIndex:v3];
          }
        }

        while (v3 > 0);
      }
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t WBSHistoryAddAutocompleteTriggerToArray(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (![v4 length])
  {
LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  v5 = [v3 count];
  if (v5)
  {
    v6 = v5 - 1;
    while (1)
    {
      v7 = [v3 objectAtIndexedSubscript:v6];
      if ([v7 safari_hasPrefix:v4])
      {
        break;
      }

      if ([v4 safari_hasPrefix:v7])
      {
        [v3 removeObjectAtIndex:v6];
      }

      if (--v6 == -1)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_10;
  }

LABEL_8:
  [v3 addObject:v4];
  v8 = 1;
LABEL_11:

  return v8;
}

unsigned int *WBSHistoryCollapseDailyVisitsToWeekly(unsigned int *result, _DWORD *a2)
{
  v3 = result[3];
  if (v3 <= 0xD)
  {
    v12 = a2[3];
  }

  else
  {
    v4 = result;
    do
    {
      v13 = 0;
      v5 = 0;
      v6 = v3 - 7;
      v7 = *v4;
      v8 = 7;
      do
      {
        if (v6 >= v3)
        {
          __break(0xC471u);
          return result;
        }

        v5 += *(v7 + 4 * v6);
        v13 = v5;
        ++v6;
        --v8;
      }

      while (v8);
      v4[3] = v3 - 7;
      v9 = a2[3];
      if (v9 == a2[2])
      {
        v10 = WTF::Vector<SafariShared::FieldLabelPatternMatcher::DFA::State,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a2, v9 + 1, &v13);
        v9 = a2[3];
      }

      else
      {
        v10 = &v13;
      }

      v11 = *a2;
      result = memmove((*a2 + 4), *a2, 4 * v9);
      *v11 = *v10;
      v12 = a2[3] + 1;
      a2[3] = v12;
      v3 = v4[3];
    }

    while (v3 > 0xD);
  }

  if (v12 > 5uLL)
  {
    a2[3] = 5;
  }

  return result;
}

uint64_t WBSHistoryPadDailyCountsForNewVisitAtTime(unsigned int *a1, unsigned int *a2, double a3, double a4)
{
  v8 = a1[3];
  if (!v8)
  {
    LODWORD(v17) = 0;
    if (a1[2])
    {
      **a1 = 0;
    }

    else
    {
      *(*a1 + 4 * a1[3]) = *WTF::Vector<SafariShared::FieldLabelPatternMatcher::DFA::State,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, 1uLL, &v17);
    }

    v8 = a1[3] + 1;
    a1[3] = v8;
  }

  if (a3 == 0.0)
  {
    return 0;
  }

  v9 = vcvtpd_s64_f64(a4 / 86400.0);
  v10 = vcvtpd_s64_f64(a3 / 86400.0);
  v11 = v9 - v10;
  if (v9 == v10)
  {
    return 0;
  }

  if (v11 > 49)
  {
    WTF::Vector<SafariShared::FieldLabelPatternMatcher::DFA::State,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(a1, 0);
    LODWORD(v17) = 0;
    v12 = a1[3];
    if (v12 == a1[2])
    {
      *(*a1 + 4 * a1[3]) = *WTF::Vector<SafariShared::FieldLabelPatternMatcher::DFA::State,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, v12 + 1, &v17);
    }

    else
    {
      *(*a1 + 4 * v12) = 0;
    }

    ++a1[3];
    WTF::Vector<SafariShared::FieldLabelPatternMatcher::DFA::State,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(a2, 0);
    return 0;
  }

  v13 = v10 - v9;
  if (v13 > 49)
  {
    return 0xFFFFFFFFLL;
  }

  v17 = v19;
  v18 = 32;
  if (v11 < 1)
  {
    if (v8 <= v13)
    {
      v16 = 0;
      WTF::Vector<int,32ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::fill(&v17, &v16, 1 - v8 - v11);
      WTF::Vector<int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendVector<int,32ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>(a1, &v17);
    }
  }

  else
  {
    v16 = 0;
    WTF::Vector<int,32ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::fill(&v17, &v16, v11);
    WTF::Vector<int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::insertSpan<int const,18446744073709551615ul>(a1, 0, v17, HIDWORD(v18));
    v13 = 0;
  }

  v15 = v17;
  if (v19 != v17 && v17)
  {
    v17 = 0;
    LODWORD(v18) = 0;
    WTF::fastFree(v15, a2);
  }

  return v13;
}

void sub_1BB7B0EB0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF *a11, int a12)
{
  if (v12 != a11)
  {
    if (a11)
    {
      WTF::fastFree(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<int,32ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::fill(uint64_t result, int *a2, unint64_t a3)
{
  v5 = result;
  v6 = *(result + 12);
  if (v6 <= a3)
  {
    if (*(result + 8) < a3)
    {
      WTF::Vector<int,32ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(result, 0);
      result = WTF::Vector<int,32ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(v5, a3);
      LODWORD(v6) = *(v5 + 12);
    }
  }

  else
  {
    *(result + 12) = a3;
    LODWORD(v6) = a3;
  }

  v7 = *v5;
  if (v6)
  {
    v8 = 0;
    v9 = *a2;
    v10 = v6;
    v11 = (v6 + 3) & 0x1FFFFFFFCLL;
    v12 = vdupq_n_s64(v10 - 1);
    v13 = (v7 + 8);
    do
    {
      v14 = vdupq_n_s64(v8);
      v15 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_1BB9146D0)));
      if (vuzp1_s16(v15, *v12.i8).u8[0])
      {
        *(v13 - 2) = v9;
      }

      if (vuzp1_s16(v15, *&v12).i8[2])
      {
        *(v13 - 1) = v9;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_1BB9146C0)))).i32[1])
      {
        *v13 = v9;
        v13[1] = v9;
      }

      v8 += 4;
      v13 += 4;
    }

    while (v11 != v8);
    v16 = *(v5 + 12);
  }

  else
  {
    v16 = 0;
  }

  if (v16 != a3)
  {
    v17 = 0;
    v18 = *a2;
    v19 = (4 * a3 - 4 * v16 - 4) >> 2;
    v20 = vdupq_n_s64(v19);
    v21 = (v7 + 4 * v16 + 8);
    do
    {
      v22 = vdupq_n_s64(v17);
      v23 = vmovn_s64(vcgeq_u64(v20, vorrq_s8(v22, xmmword_1BB9146D0)));
      if (vuzp1_s16(v23, *v20.i8).u8[0])
      {
        *(v21 - 2) = v18;
      }

      if (vuzp1_s16(v23, *&v20).i8[2])
      {
        *(v21 - 1) = v18;
      }

      if (vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v20, vorrq_s8(v22, xmmword_1BB9146C0)))).i32[1])
      {
        *v21 = v18;
        v21[1] = v18;
      }

      v17 += 4;
      v21 += 4;
    }

    while (((v19 + 4) & 0x7FFFFFFFFFFFFFFCLL) != v17);
  }

  *(v5 + 12) = a3;
  return result;
}

uint64_t WTF::Vector<int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendVector<int,32ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 12);
  if (v2)
  {
    v3 = result;
    v4 = *a2;
    v6 = *(result + 8);
    v5 = *(result + 12);
    v7 = v5 + v2;
    if (v5 + v2 <= v6)
    {
      goto LABEL_11;
    }

    v8 = v6 + (v6 >> 1);
    if (v8 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v8 <= v7)
    {
      v8 = v7;
    }

    v9 = v8 <= 0x10 ? 16 : v8;
    result = WTF::Vector<SafariShared::FieldLabelPatternMatcher::DFA::State,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(result, v9);
    v5 = *(v3 + 12);
    if (v7 < v5)
    {
      __break(0xC471u);
    }

    else
    {
LABEL_11:
      result = memcpy((*v3 + 4 * v5), v4, 4 * v2);
      *(v3 + 12) = v7;
    }
  }

  return result;
}

uint64_t WBSHistoryAddVisitToScore(int a1, unsigned int *a2, unsigned int *a3, double a4, double a5)
{
  result = WBSHistoryPadDailyCountsForNewVisitAtTime(a2, a3, a4, a5);
  if ((result & 0x80000000) == 0)
  {
    if (a2[3] <= result)
    {
      __break(0xC471u);
    }

    else
    {
      *(*a2 + 4 * result) += a1;

      return WBSHistoryCollapseDailyVisitsToWeekly(a2, a3);
    }
  }

  return result;
}

uint64_t WBSHistoryUpdateScoreOfVisit(uint64_t result, int a2, uint64_t a3, double a4, double a5, uint64_t a6, char *a7)
{
  v7 = vcvtpd_s64_f64(a4 / 86400.0) - vcvtpd_s64_f64(a5 / 86400.0);
  if (*(a3 + 12) <= v7)
  {
    if (!a7)
    {
      return result;
    }

    v8 = 1;
  }

  else
  {
    *(*a3 + 4 * v7) += a2 - result;
    if (!a7)
    {
      return result;
    }

    v8 = 0;
  }

  *a7 = v8;
  return result;
}

unsigned int *WBSHistoryTimesOfVisitsToSynthesizeFromDailyCounts@<X0>(unsigned int *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = result;
  *a3 = 0;
  *(a3 + 8) = 0;
  v8 = result[3];
  if (v8)
  {
    v9 = 0;
    v10 = *result;
    v11 = 4 * v8;
    do
    {
      v12 = *v10++;
      v9 += v12;
      v11 -= 4;
    }

    while (v11);
  }

  else
  {
    v9 = 0;
  }

  v13 = *(a2 + 12);
  if (v13)
  {
    v14 = 0;
    v15 = *a2;
    v16 = 4 * v13;
    do
    {
      v17 = *v15++;
      v14 += v17;
      v16 -= 4;
    }

    while (v16);
  }

  else
  {
    v14 = 0;
  }

  v18 = v14 + v9;
  if (v14 + v9)
  {
    if (v18 >> 29)
    {
      __break(0xC471u);
      return result;
    }

    result = WTF::fastMalloc((8 * v18));
    *(a3 + 8) = v18;
    *a3 = result;
    v8 = v5[3];
  }

  v19 = vcvtpd_s64_f64(a4 / 86400.0);
  if (v8)
  {
    for (i = 0; i < v8; ++i)
    {
      v21 = v19 - 1;
      v22 = *(*v5 + 4 * i);
      if (v22)
      {
        v23 = 86400.0 * v19;
        if (!i)
        {
          v23 = a4;
        }

        timesForVisits(86400.0 * v21, v23, v22 - (i == 0), &v47);
        v25 = v49;
        v26 = *(a3 + 8);
        v27 = v49 + *(a3 + 12);
        if (v27 > v26)
        {
          v28 = v26 + (v26 >> 1);
          if (v28 <= v26 + 1)
          {
            v28 = v26 + 1;
          }

          if (v28 <= v27)
          {
            v28 = v49 + *(a3 + 12);
          }

          if (v28 <= 0x10)
          {
            v29 = 16;
          }

          else
          {
            v29 = v28;
          }

          WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a3, v29);
          v25 = v49;
        }

        result = v47;
        if (v25)
        {
          v30 = *a3;
          v31 = *(a3 + 12);
          v32 = 8 * v25;
          v33 = v47;
          do
          {
            v34 = *v33;
            v33 = (v33 + 8);
            *(v30 + 8 * v31++) = v34;
            v32 -= 8;
          }

          while (v32);
          *(a3 + 12) = v31;
        }

        if (result)
        {
          v47 = 0;
          v48 = 0;
          result = WTF::fastFree(result, v24);
        }

        v8 = v5[3];
      }

      v19 = v21;
    }
  }

  else
  {
    v21 = v19;
  }

  if (*(a2 + 12))
  {
    v35 = 0;
    do
    {
      timesForVisits(86400.0 * (v21 - 7), 86400.0 * v21, *(*a2 + 4 * v35), &v47);
      v37 = v49;
      v38 = *(a3 + 8);
      v39 = v49 + *(a3 + 12);
      if (v39 > v38)
      {
        v40 = v38 + (v38 >> 1);
        if (v40 <= v38 + 1)
        {
          v40 = v38 + 1;
        }

        if (v40 <= v39)
        {
          v40 = v49 + *(a3 + 12);
        }

        if (v40 <= 0x10)
        {
          v41 = 16;
        }

        else
        {
          v41 = v40;
        }

        WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a3, v41);
        v37 = v49;
      }

      result = v47;
      if (v37)
      {
        v42 = *a3;
        v43 = *(a3 + 12);
        v44 = 8 * v37;
        v45 = v47;
        do
        {
          v46 = *v45;
          v45 = (v45 + 8);
          *(v42 + 8 * v43++) = v46;
          v44 -= 8;
        }

        while (v44);
        *(a3 + 12) = v43;
      }

      if (result)
      {
        v47 = 0;
        v48 = 0;
        result = WTF::fastFree(result, v36);
      }

      ++v35;
      v21 -= 7;
    }

    while (v35 < *(a2 + 12));
  }

  return result;
}

void sub_1BB7B14D8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10)
{
  v12 = *v10;
  if (*v10)
  {
    *v10 = 0;
    *(v10 + 8) = 0;
    WTF::fastFree(v12, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t timesForVisits@<X0>(double a1@<D0>, double a2@<D1>, unint64_t a3@<X0>, uint64_t a4@<X8>)
{
  v6 = a3;
  result = WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a4, a3);
  if (v6)
  {
    v8 = (a2 - a1) / (v6 + 1);
    v9 = *(result + 12);
    v10 = *result;
    while (v9)
    {
      a1 = v8 + a1;
      *v10++ = a1;
      --v9;
      if (!--v6)
      {
        return result;
      }
    }

    __break(0xC471u);
  }

  return result;
}

uint64_t WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = a2;
  if (!a2)
  {
    return v3;
  }

  if (!(a2 >> 29))
  {
    v4 = WTF::fastMalloc((8 * a2));
    *(v3 + 8) = v2;
    *v3 = v4;
    v5 = *(v3 + 12);
    if (v5)
    {
      bzero(v4, 8 * v5);
    }

    return v3;
  }

  __break(0xC471u);
  return result;
}

uint64_t WTF::Vector<int,32ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t a2)
{
  if (*(result + 8) > a2)
  {
    v2 = result;
    v3 = *(result + 12);
    if (v3 > a2)
    {
      *(result + 12) = a2;
      LODWORD(v3) = a2;
    }

    v4 = *result;
    v5 = *result;
    if (a2)
    {
      if (a2 >= 0x21)
      {
        *(result + 8) = a2;
        result = WTF::fastRealloc(v4, (4 * a2));
        *v2 = result;
        return result;
      }

      *result = result + 16;
      *(result + 8) = 32;
      v5 = v4;
      if ((result + 16) != v4)
      {
        result = memcpy((result + 16), v4, 4 * v3);
        v5 = (v2 + 16);
      }
    }

    if ((v2 + 16) != v4 && v4 != 0)
    {
      if (v5 == v4)
      {
        *v2 = 0;
        *(v2 + 8) = 0;
      }

      result = WTF::fastFree(v4, a2);
      v5 = *v2;
    }

    if (!v5)
    {
      *v2 = v2 + 16;
      *(v2 + 8) = 32;
    }
  }

  return result;
}

uint64_t WTF::Vector<int,32ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  v4 = *result;
  v5 = *(result + 12);
  if (a2 < 0x21)
  {
    v6 = (result + 16);
    *v3 = v3 + 16;
    *(v3 + 8) = 32;
LABEL_6:
    memcpy(v6, v4, 4 * v5);
    if ((v3 + 16) != v4 && v4 != 0)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      WTF::fastFree(v4, v7);
    }

    return 1;
  }

  if (!(a2 >> 30))
  {
    v6 = WTF::fastMalloc((4 * a2));
    *(v3 + 8) = v2;
    *v3 = v6;
    goto LABEL_6;
  }

  __break(0xC471u);
  return result;
}

uint64_t WTF::Vector<int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::insertSpan<int const,18446744073709551615ul>(uint64_t result, unint64_t a2, int *a3, uint64_t a4)
{
  v7 = result;
  v9 = *(result + 8);
  v8 = *(result + 12);
  v10 = a4 + v8;
  if (a4 + v8 > v9)
  {
    v11 = v9 + (v9 >> 1);
    if (v11 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    if (v11 <= v10)
    {
      v11 = v10;
    }

    if (v11 <= 0x10)
    {
      v12 = 16;
    }

    else
    {
      v12 = v11;
    }

    result = WTF::Vector<SafariShared::FieldLabelPatternMatcher::DFA::State,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(result, v12);
    v8 = *(v7 + 12);
  }

  if (v10 < v8)
  {
    __break(0xC471u);
LABEL_18:
    __break(1u);
    return result;
  }

  v13 = v8 >= a2;
  v14 = v8 - a2;
  if (!v13)
  {
    goto LABEL_18;
  }

  v15 = (*v7 + 4 * a2);
  result = memmove(&v15[a4], v15, 4 * v14);
  if (a4)
  {
    v16 = 4 * a4;
    do
    {
      v17 = *a3++;
      *v15++ = v17;
      v16 -= 4;
    }

    while (v16);
  }

  *(v7 + 12) = v10;
  return result;
}

uint64_t WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  v2 = a2;
  if (!(a2 >> 29))
  {
    v3 = result;
    v4 = *result;
    v5 = *(result + 12);
    v6 = WTF::fastMalloc((8 * a2));
    *(v3 + 8) = v2;
    *v3 = v6;
    if (v5)
    {
      v8 = 8 * v5;
      v9 = v6;
      v10 = v4;
      do
      {
        v11 = *v10;
        v10 = (v10 + 8);
        *v9++ = v11;
        v8 -= 8;
      }

      while (v8);
    }

    if (v4)
    {
      if (v6 == v4)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      WTF::fastFree(v4, v7);
    }

    return 1;
  }

  __break(0xC471u);
  return result;
}

void *std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::find<long long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_1BB7B4468(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,void *>>>>::~unique_ptr[abi:sn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,void *>>>>::~unique_ptr[abi:sn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::__erase_unique<long long>(void *a1, unint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::find<long long>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::erase(a1, result);
    return 1;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::erase(void *result, uint64_t *a2)
{
  if (a2)
  {
    v2 = *a2;
    std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::remove(result, a2, v3);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,void *>>>>::~unique_ptr[abi:sn200100](v3);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void *std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::__emplace_unique_key_args<long long,std::pair<long long,WBSHistoryItem * {__strong}>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_1BB7B48C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,void *>>>>::~unique_ptr[abi:sn200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_1BB7B4B24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,void *>>>>::~unique_ptr[abi:sn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,void *>>>>::~unique_ptr[abi:sn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      objc_destroyWeak(v2 + 3);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>>>::erase(void *result, uint64_t *a2)
{
  if (a2)
  {
    v2 = *a2;
    std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::remove(result, a2, v3);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,void *>>>>::~unique_ptr[abi:sn200100](v3);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>>>::__emplace_unique_key_args<long long,std::pair<long long,WBSHistoryVisit * {__strong}>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_1BB7B4E14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,void *>>>>::~unique_ptr[abi:sn200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__hash_table<std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void std::__hash_table<std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      objc_destroyWeak(v2 + 3);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryVisit * {__weak}>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1BB7B6FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25)
{
  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(&a20, 8);

  _Unwind_Resume(a1);
}

uint64_t WBSHistoryServiceMain(WTF *a1)
{
  WTF::initializeMainThread(a1);
  v1 = objc_autoreleasePoolPush();
  v2 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:*MEMORY[0x1E69C8DA8] placeholder:0];
  v3 = [v2 dataContainerURL];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 path];
    setenv("HOME", [v5 fileSystemRepresentation], 1);

    v6 = [v4 path];
    setenv("CFFIXED_USER_HOME", [v6 fileSystemRepresentation], 1);

    v7 = [v4 URLByAppendingPathComponent:@"tmp"];
    v8 = [v7 path];
    setenv("TMPDIR", [v8 fileSystemRepresentation], 1);
  }

  v9 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    LOWORD(v18[0]) = 0;
    _os_log_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_INFO, "History service launched", v18, 2u);
  }

  +[WBSURLCompletionDatabase initializeURLCompletionOnMainThread];
  v10 = objc_alloc_init(WBSHistoryService);
  v11 = objc_alloc_init(WBSCloudHistoryPushAgent);
  v12 = v10;
  v13 = qos_class_self();
  v14 = dispatch_get_global_queue(v13, 0);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = ___ZL19setUpSignalHandlersP17WBSHistoryService_block_invoke;
  v18[3] = &unk_1E7FB6F80;
  v15 = v12;
  v19 = v15;
  WBSSetSignalHandler();

  objc_autoreleasePoolPop(v1);
  [(WBSHistoryService *)v15 resume];
  v16 = [MEMORY[0x1E695DFD0] currentRunLoop];
  [v16 run];

  return 0;
}

void ___ZL19setUpSignalHandlersP17WBSHistoryService_block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_1BB6F3000, v2, OS_LOG_TYPE_INFO, "Received termination signal. Closing databases and terminating", v3, 2u);
  }

  [*(a1 + 32) shutdown];
  exit(0);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong}&,NSString * {__strong}&,long &>(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  [v7 bindString:*a2 atParameterIndex:1];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * {__strong}&,long &>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * {__strong}&,long &>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindString:*a2 atParameterIndex:2];
  [v5 bindInt64:*a3 atParameterIndex:3];
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong}&,long &>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindString:*a2 atParameterIndex:1];
  [v5 bindInt64:*a3 atParameterIndex:2];
}

double SafariShared::DeletionPlan::DeletionPlan(SafariShared::DeletionPlan *this)
{
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 1065353216;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 1065353216;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 1065353216;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 48) = 1065353216;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 25) = 0;
  return result;
}

{
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 1065353216;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 1065353216;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 1065353216;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 48) = 1065353216;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 25) = 0;
  return result;
}

uint64_t *SafariShared::DeletionPlan::sanitizeItemTouched(uint64_t *this)
{
  v1 = this[7];
  if (v1)
  {
    v2 = this;
    do
    {
      v3 = v1[2];
      this = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__erase_unique<long long>(v2 + 10, &v3);
      v1 = *v1;
    }

    while (v1);
  }

  return this;
}

void *SafariShared::DeletionPlan::sanitizeVisitsToDelete(void *this)
{
  v1 = this[22];
  if (v1)
  {
    v2 = this;
    do
    {
      while (1)
      {
        v3 = v1[2];
        this = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(v2, &v3);
        if (!this)
        {
          break;
        }

        v3 = this[3];
        if (!v3)
        {
          break;
        }

        this = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(v2 + 5, &v3);
        if (!this)
        {
          break;
        }

        this = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::erase(v2 + 20, v1);
        v1 = this;
        if (!this)
        {
          return this;
        }
      }

      v1 = *v1;
    }

    while (v1);
  }

  return this;
}

void *SafariShared::DeletionPlan::findItemIDForVisitID(SafariShared::DeletionPlan *this, unint64_t a2)
{
  v3 = a2;
  result = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(this, &v3);
  if (result)
  {
    return result[3];
  }

  return result;
}

void sub_1BB7B8384(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void WBSHistoryTagComputeFrecencyScore(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v5 = sqlite3_value_int64(*a3);
  v6 = sqlite3_value_double(a3[1]);
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v8 = WBSHistoryTopicScore(v5, v6, v7);

  sqlite3_result_double(a1, v8);
}

void sub_1BB7B9A8C(_Unwind_Exception *a1)
{
  v5 = v2;

  _Unwind_Resume(a1);
}

void sub_1BB7BA268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

id createQueryWithList(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [MEMORY[0x1E696AD60] stringWithCapacity:{objc_msgSend(v6, "length") + objc_msgSend(v5, "length") + 2 * *(a2 + 24)}];
  [v7 appendString:v5];
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = 1;
    do
    {
      v10 = v8[2];
      if ((v9 & 1) == 0)
      {
        [v7 appendString:{@", "}];
      }

      v11 = [MEMORY[0x1E696AD98] numberWithLongLong:v10];
      v12 = [v11 stringValue];
      [v7 appendString:v12];

      v9 = 0;
      v8 = *v8;
    }

    while (v8);
  }

  [v7 appendString:v6];

  return v7;
}

void sub_1BB7BAFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(&a13);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(&a19);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v44 - 144);

  SafariShared::HistoryObjectStreamWriter::~HistoryObjectStreamWriter(&a26);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(&a29);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(&a35);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(&a41);

  _Unwind_Resume(a1);
}

sqlite3_int64 initializeStreamedHistoryVisitFromSQLiteRow(sqlite3_stmt *a1, _HistoryStreamedVisit *a2, int a3)
{
  a2->var2 = sqlite3_column_int64(a1, a3 + 1);
  a2->var1 = sqlite3_column_int64(a1, a3);
  a2->var3 = sqlite3_column_double(a1, a3 + 2);
  a2->var13 = sqlite3_column_text(a1, a3 + 3);
  a2->var4 = sqlite3_column_int64(a1, a3 + 4);
  a2->var5 = sqlite3_column_int64(a1, a3 + 5);
  a2->var6 = sqlite3_column_int64(a1, a3 + 6);
  a2->var8 = sqlite3_column_int64(a1, a3 + 7);
  a2->var9 = sqlite3_column_int64(a1, a3 + 8);
  a2->var10 = sqlite3_column_int64(a1, a3 + 9);
  a2->var11 = sqlite3_column_int64(a1, a3 + 10);
  a2->var12 = sqlite3_column_int64(a1, a3 + 11);
  result = sqlite3_column_int64(a1, a3 + 12);
  a2->var7 = result;
  return result;
}

void sub_1BB7BBF24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18)
{
  v25 = v23;

  _Unwind_Resume(a1);
}

void sub_1BB7BC7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, void *a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id a46)
{
  _Block_object_dispose(&a35, 8);

  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

id SafariShared::WBSSQLiteDatabaseFetch<double,double>(void *a1, void *a2, double *a3, double *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v7 query:v8];
  SafariShared::_WBSSQLiteStatementBindAllParameters<1,double,double>(v9, a3, a4);
  v10 = [v9 fetch];

  return v10;
}

uint64_t __Block_byref_object_copy__101(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BB7BCA90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

uint64_t SafariShared::WBSSQLiteDatabaseEnumerate<void({block_pointer} {__strong})(int,NSDate *)>(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v7 query:v8 error:a2];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 handle];
    v14 = MEMORY[0x1BFB13CE0](*a4);
    v12 = SafariShared::_WBSSQLiteStatementBindOrStep<0,0,std::tuple<void({block_pointer} {__strong})(int,NSDate *)>>(v7, v11, a2, &v14);

    [v10 invalidate];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id SafariShared::WBSSQLiteDatabaseFetch<unsigned long &>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v5 query:v6];
  [v7 bindInt64:*a3 atParameterIndex:1];
  v8 = [v7 fetch];

  return v8;
}

id SafariShared::WBSSQLiteDatabaseFetch<long long &,long long &>(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v7 query:v8];
  SafariShared::_WBSSQLiteStatementBindAllParameters<1,long long &,long long &>(v9, a3, a4);
  v10 = [v9 fetch];

  return v10;
}

void sub_1BB7BF13C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, void *a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id a46)
{
  _Block_object_dispose(&a41, 8);

  _Unwind_Resume(a1);
}

void sub_1BB7BF830(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t SafariShared::WBSSQLiteDatabaseEnumerate<NSString * {__strong},std::tuple<long long &>>(void *a1, uint64_t a2, id *a3, void **a4)
{
  v7 = a1;
  v8 = [v7 database];
  v9 = [v7 handle];
  v10 = *a3;
  v11 = *a4;
  v14[0] = v10;
  v14[1] = v11;
  v12 = SafariShared::_WBSSQLiteStatementBindOrStep<0,1,std::tuple<NSString * {__strong},std::tuple<long long &>>>(v8, v9, a2, v14);

  [v7 reset];
  return v12;
}

void sub_1BB7C17A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, uint64_t a18, void *a19, uint64_t a20, void *a21, void *a22)
{
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v26 - 144);

  _Unwind_Resume(a1);
}

uint64_t SafariShared::WBSSQLiteDatabaseEnumerate<double,std::tuple<long long &>>(void *a1, uint64_t a2, double *a3, double *a4)
{
  v7 = a1;
  v8 = [v7 database];
  v9 = [v7 handle];
  v12[0] = *a3;
  v12[1] = *a4;
  v10 = SafariShared::_WBSSQLiteStatementBindOrStep<0,1,std::tuple<double,std::tuple<long long &>>>(v8, v9, a2, v12);

  [v7 reset];
  return v10;
}

uint64_t SafariShared::WBSSQLiteDatabaseEnumerate<std::tuple<long long &>>(void *a1, uint64_t a2, sqlite3_int64 **a3)
{
  v5 = a1;
  v6 = [v5 database];
  v7 = [v5 handle];
  v10 = *a3;
  v8 = SafariShared::_WBSSQLiteStatementBindOrStep<0,0,std::tuple<std::tuple<long long &>>>(v6, v7, a2, &v10);

  [v5 reset];
  return v8;
}

uint64_t SafariShared::WBSSQLiteDatabaseEnumerate<NSString * {__strong}&,std::tuple<NSData * {__strong}&>>(void *a1, uint64_t a2, void *a3, id *a4, id **a5)
{
  v9 = a1;
  v10 = a3;
  v11 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v9 query:v10 error:a2];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 handle];
    v14 = *a5;
    v17[0] = a4;
    v17[1] = v14;
    v15 = SafariShared::_WBSSQLiteStatementBindOrStep<0,1,std::tuple<NSString * {__strong}&,std::tuple<NSData * {__strong}&>>>(v9, v13, a2, v17);
    [v12 invalidate];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void sub_1BB7C23BC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t SafariShared::WBSSQLiteDatabaseEnumerate<NSString * const {__strong}&,std::tuple<NSData * {__strong}&>>(void *a1, uint64_t a2, void *a3, id *a4, id **a5)
{
  v9 = a1;
  v10 = a3;
  v11 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v9 query:v10 error:a2];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 handle];
    v14 = *a5;
    v17[0] = a4;
    v17[1] = v14;
    v15 = SafariShared::_WBSSQLiteStatementBindOrStep<0,1,std::tuple<NSString * const {__strong}&,std::tuple<NSData * {__strong}&>>>(v9, v13, a2, v17);
    [v12 invalidate];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t SafariShared::WBSSQLiteDatabaseEnumerate<NSString * {__strong},double,std::tuple<int &,int &>>(void *a1, uint64_t a2, void *a3, id *a4, id *a5, __int128 *a6)
{
  v11 = a1;
  v12 = a3;
  v13 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v11 query:v12 error:a2];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 handle];
    v18[0] = *a4;
    v18[1] = *a5;
    v19 = *a6;
    v16 = SafariShared::_WBSSQLiteStatementBindOrStep<0,2,std::tuple<NSString * {__strong},double,std::tuple<int &,int &>>>(v11, v15, a2, v18);

    [v14 invalidate];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void sub_1BB7C3B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t SafariShared::WBSSQLiteDatabaseEnumerate<NSDate * {__strong}&,void({block_pointer} {__strong})(long long)>(void *a1, uint64_t a2, void *a3, id *a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v11 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v9 query:v10 error:a2];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 handle];
    v16 = a4;
    v17 = MEMORY[0x1BFB13CE0](*a5);
    v14 = SafariShared::_WBSSQLiteStatementBindOrStep<0,1,std::tuple<NSDate * {__strong}&,void({block_pointer} {__strong})(long long)>>(v9, v13, a2, &v16);

    [v12 invalidate];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t SafariShared::WBSSQLiteDatabaseEnumerate<void({block_pointer} {__strong})(long long)>(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v7 query:v8 error:a2];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 handle];
    v14 = MEMORY[0x1BFB13CE0](*a4);
    v12 = SafariShared::_WBSSQLiteStatementBindOrStep<0,0,std::tuple<void({block_pointer} {__strong})(long long)>>(v7, v11, a2, &v14);

    [v10 invalidate];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t SafariShared::WBSSQLiteDatabaseEnumerate<void({block_pointer} {__strong})(long long,NSString *)>(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v7 query:v8 error:a2];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 handle];
    v14 = MEMORY[0x1BFB13CE0](*a4);
    v12 = SafariShared::_WBSSQLiteStatementBindOrStep<0,0,std::tuple<void({block_pointer} {__strong})(long long,NSString *)>>(v7, v11, a2, &v14);

    [v10 invalidate];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_1BB7C5578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  SafariShared::DeletionPlan::~DeletionPlan((v34 + 48));
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__251(uint64_t a1, uint64_t a2)
{
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__hash_table(a1 + 48, (a2 + 48));
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__hash_table(a1 + 88, (a2 + 88));
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__hash_table(a1 + 128, (a2 + 128));
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__hash_table(a1 + 168, (a2 + 168));
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__hash_table(a1 + 208, (a2 + 208));
  result = *(a2 + 248);
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  *(a1 + 248) = result;
  v5 = *(a2 + 264);
  *(a2 + 264) = 0;
  *(a1 + 264) = v5;
  return result;
}

uint64_t __Block_byref_object_dispose__252(id *a1)
{
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table((a1 + 26));
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table((a1 + 21));
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table((a1 + 16));
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table((a1 + 11));

  return std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table((a1 + 6));
}

void SafariShared::DeletionPlan::~DeletionPlan(id *this)
{
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table((this + 20));
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table((this + 15));
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table((this + 10));
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table((this + 5));

  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(this);
}

void sub_1BB7C5AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, ...)
{
  va_start(va, a17);

  _Block_object_dispose(va, 8);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v17 + 48);
  _Unwind_Resume(a1);
}

uint64_t SafariShared::WBSSQLiteDatabaseEnumerate<NSDate * {__strong}&,NSDate * {__strong}&,void({block_pointer} {__strong})(long long)>(void *a1, uint64_t a2, void *a3, id *a4, id *a5, void *a6)
{
  v11 = a1;
  v12 = a3;
  v13 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v11 query:v12 error:a2];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 handle];
    v18[0] = a4;
    v18[1] = a5;
    v19 = MEMORY[0x1BFB13CE0](*a6);
    v16 = SafariShared::_WBSSQLiteStatementBindOrStep<0,2,std::tuple<NSDate * {__strong}&,NSDate * {__strong}&,void({block_pointer} {__strong})(long long)>>(v11, v15, a2, v18);

    [v14 invalidate];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void sub_1BB7C71E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, id a61, id a62, uint64_t a63)
{
  SafariShared::DeletionPlan::~DeletionPlan(&a69);

  _Block_object_dispose(&a50, 8);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(&a56);

  _Unwind_Resume(a1);
}

uint64_t SafariShared::WBSSQLiteDatabaseEnumerate<NSData * {__strong},NSData * {__strong},std::tuple<long long &>>(void *a1, uint64_t a2, id *a3, id *a4, uint64_t *a5)
{
  v9 = a1;
  v10 = [v9 database];
  v11 = [v9 handle];
  v16 = *a3;
  v12 = *a4;
  v13 = *a5;
  v17 = v12;
  v18 = v13;
  v14 = SafariShared::_WBSSQLiteStatementBindOrStep<0,2,std::tuple<NSData * {__strong},NSData * {__strong},std::tuple<long long &>>>(v10, v11, a2, &v16);

  [v9 reset];
  return v14;
}

uint64_t SafariShared::WBSSQLiteDatabaseEnumerate<long long &,NSDate * {__strong}&,NSDate * {__strong}&,void({block_pointer} {__strong}&)(long long)>(void *a1, uint64_t a2, sqlite3_int64 *a3, sqlite3_int64 *a4, sqlite3_int64 *a5, sqlite3_int64 *a6)
{
  v11 = a1;
  v12 = [v11 database];
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = SafariShared::_WBSSQLiteStatementBindOrStep<0,3,std::tuple<long long &,NSDate * {__strong}&,NSDate * {__strong}&,void({block_pointer} {__strong}&)(long long)>>(v12, [v11 handle], a2, v15);

  [v11 reset];
  return v13;
}

void sub_1BB7C78A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18)
{
  _Block_object_dispose((v18 - 80), 8);

  _Unwind_Resume(a1);
}

uint64_t SafariShared::WBSSQLiteDatabaseEnumerate<void({block_pointer} {__strong})(long long,long long,long long,long long)>(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v7 query:v8 error:a2];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 handle];
    v14 = MEMORY[0x1BFB13CE0](*a4);
    v12 = SafariShared::_WBSSQLiteStatementBindOrStep<0,0,std::tuple<void({block_pointer} {__strong})(long long,long long,long long,long long)>>(v7, v11, a2, &v14);

    [v10 invalidate];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_1BB7C91A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _Block_object_dispose(va, 8);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v9 + 48);

  _Unwind_Resume(a1);
}

uint64_t SafariShared::WBSSQLiteDatabaseEnumerate<std::tuple<long long &>>(void *a1, uint64_t a2, void *a3, sqlite3_int64 **a4)
{
  v7 = a1;
  v8 = a3;
  v9 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v7 query:v8 error:a2];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 handle];
    v14 = *a4;
    v12 = SafariShared::_WBSSQLiteStatementBindOrStep<0,0,std::tuple<std::tuple<long long &>>>(v7, v11, a2, &v14);
    [v10 invalidate];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_1BB7C9914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v12 + 48);

  _Unwind_Resume(a1);
}

void sub_1BB7C9C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v10 + 48);

  _Unwind_Resume(a1);
}

uint64_t SafariShared::WBSSQLiteDatabaseEnumerate<double &,void({block_pointer} {__strong})(long long)>(void *a1, uint64_t a2, void *a3, double *a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v11 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v9 query:v10 error:a2];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 handle];
    v16 = a4;
    v17 = MEMORY[0x1BFB13CE0](*a5);
    v14 = SafariShared::_WBSSQLiteStatementBindOrStep<0,1,std::tuple<double &,void({block_pointer} {__strong})(long long)>>(v9, v13, a2, &v16);

    [v12 invalidate];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t SafariShared::WBSSQLiteDatabaseEnumerate<void({block_pointer} {__strong})(NSString *)>(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v7 query:v8 error:a2];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 handle];
    v14 = MEMORY[0x1BFB13CE0](*a4);
    v12 = SafariShared::_WBSSQLiteStatementBindOrStep<0,0,std::tuple<void({block_pointer} {__strong})(NSString *)>>(v7, v11, a2, &v14);

    [v10 invalidate];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_1BB7CBF2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v8 - 192);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v8 - 144);
  SafariShared::DeletionPlan::~DeletionPlan(va);

  _Unwind_Resume(a1);
}

id SafariShared::WBSSQLiteDatabaseFetch<WBSHistoryVisitOrigin>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v5 query:v6];
  [v7 bindInt64:*a3 atParameterIndex:1];
  v8 = [v7 fetch];

  return v8;
}

uint64_t SafariShared::WBSSQLiteDatabaseEnumerate<NSDate * const {__strong}&,NSDate * const {__strong},int,void({block_pointer} {__strong})(NSString *)>(void *a1, uint64_t a2, void *a3, id *a4, id *a5, int *a6, void *a7)
{
  v13 = a1;
  v14 = a3;
  v15 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v13 query:v14 error:a2];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 handle];
    v20[0] = a4;
    v20[1] = a5;
    v21 = *a6;
    v22 = MEMORY[0x1BFB13CE0](*a7);
    v18 = SafariShared::_WBSSQLiteStatementBindOrStep<0,3,std::tuple<NSDate * const {__strong}&,NSDate * const {__strong},int,void({block_pointer} {__strong})(NSString *)>>(v13, v17, a2, v20);

    [v16 invalidate];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

uint64_t SafariShared::WBSSQLiteDatabaseEnumerate<NSDate * const {__strong}&,NSDate * const {__strong},void({block_pointer} {__strong})(NSString *)>(void *a1, uint64_t a2, void *a3, id *a4, id *a5, void *a6)
{
  v11 = a1;
  v12 = a3;
  v13 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v11 query:v12 error:a2];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 handle];
    v18[0] = a4;
    v18[1] = a5;
    v19 = MEMORY[0x1BFB13CE0](*a6);
    v16 = SafariShared::_WBSSQLiteStatementBindOrStep<0,2,std::tuple<NSDate * const {__strong}&,NSDate * const {__strong},void({block_pointer} {__strong})(NSString *)>>(v11, v15, a2, v18);

    [v14 invalidate];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

uint64_t SafariShared::WBSSQLiteDatabaseEnumerate<NSDate * const {__strong}&,std::tuple<long long &>>(void *a1, uint64_t a2, void *a3, id *a4, id **a5)
{
  v9 = a1;
  v10 = a3;
  v11 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v9 query:v10 error:a2];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 handle];
    v14 = *a5;
    v17[0] = a4;
    v17[1] = v14;
    v15 = SafariShared::_WBSSQLiteStatementBindOrStep<0,1,std::tuple<NSDate * const {__strong}&,std::tuple<long long &>>>(v9, v13, a2, v17);
    [v12 invalidate];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

__n128 __Block_byref_object_copy__381(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[4].n128_u32[0] = a2[4].n128_u32[0];
  a1[3] = result;
  return result;
}

void sub_1BB7CE190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40)
{
  std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::~__hash_table(&a27);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v43 - 144);

  _Unwind_Resume(a1);
}

id eventListenerSetToString(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = [a1 allObjects];
  v3 = [v2 componentsJoinedByString:@":"];
  v4 = [v1 stringWithFormat:@":%@:", v3];

  return v4;
}

uint64_t SafariShared::WBSSQLiteDatabaseEnumerate<NSString * {__strong},double,std::tuple<long long &>>(void *a1, uint64_t a2, id *a3, id *a4, id *a5)
{
  v9 = a1;
  v10 = [v9 database];
  v11 = [v9 handle];
  v14[0] = *a3;
  v14[1] = *a4;
  v14[2] = *a5;
  v12 = SafariShared::_WBSSQLiteStatementBindOrStep<0,2,std::tuple<NSString * {__strong},double,std::tuple<long long &>>>(v10, v11, a2, v14);

  [v9 reset];
  return v12;
}

uint64_t SafariShared::WBSSQLiteDatabaseEnumerate<void({block_pointer} {__strong})(NSString *,double,NSString *,int,int,NSString *,double,NSString *,double,long long)>(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v7 query:v8 error:a2];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 handle];
    v14 = MEMORY[0x1BFB13CE0](*a4);
    v12 = SafariShared::_WBSSQLiteStatementBindOrStep<0,0,std::tuple<void({block_pointer} {__strong})(NSString *,double,NSString *,int,int,NSString *,double,NSString *,double,long long)>>(v7, v11, a2, &v14);

    [v10 invalidate];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t SafariShared::WBSSQLiteDatabaseEnumerate<long long &,int,double const&,void({block_pointer} {__strong})(NSString *,double,NSString *,int,int,NSString *,double,NSString *,double)>(void *a1, uint64_t a2, sqlite3_int64 *a3, int *a4, uint64_t a5, void *a6)
{
  v11 = a1;
  v12 = [v11 database];
  v13 = [v11 handle];
  v16 = a3;
  v17 = *a4;
  v18 = a5;
  v19 = MEMORY[0x1BFB13CE0](*a6);
  v14 = SafariShared::_WBSSQLiteStatementBindOrStep<0,3,std::tuple<long long &,int,double const&,void({block_pointer} {__strong})(NSString *,double,NSString *,int,int,NSString *,double,NSString *,double)>>(v12, v13, a2, &v16);

  [v11 reset];
  return v14;
}

uint64_t std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

uint64_t *std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__erase_unique<long long>(void *a1, unint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::find<long long>(a1, a2);
  if (result)
  {
    std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::erase(a1, result);
    return 1;
  }

  return result;
}

void *std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::erase(void *result, uint64_t *a2)
{
  if (a2)
  {
    v2 = *a2;
    std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::remove(result, a2, &__p);
    v3 = __p;
    __p = 0;
    if (v3)
    {
      operator delete(v3);
    }

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v3 == v8)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<0,0,std::tuple<void({block_pointer} {__strong})(int,NSDate *)>>(void *a1, sqlite3_stmt *a2, uint64_t a3, void **a4)
{
  v7 = a1;
  while (1)
  {
    v8 = sqlite3_step(a2);
    if (v8 != 100)
    {
      break;
    }

    SafariShared::WBSSQLiteEnumerationBlock<void,int,NSDate * {__strong}>::_callBlockWithAllColumns<0,1>(&v11, a2, *a4);
  }

  if (v8 == 101)
  {
    v9 = 1;
  }

  else
  {
    [v7 reportErrorWithCode:v8 statement:a2 error:a3];
    v9 = 0;
  }

  return v9;
}

void SafariShared::WBSSQLiteEnumerationBlock<void,int,NSDate * {__strong}>::_callBlockWithAllColumns<0,1>(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = a3;
  v4 = sqlite3_column_int(a2, 0);
  if (sqlite3_column_type(a2, 1) == 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{sqlite3_column_double(a2, 1)}];
  }

  v6[2](v6, v4, v5);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,unsigned long const&,double>(void *a1, void *a2, double *a3)
{
  v5 = a1;
  [v5 bindInt64:*a2 atParameterIndex:1];
  [v5 bindDouble:2 atParameterIndex:*a3];
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&,NSData * {__strong}>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v18 = 0;
  v11 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v9 query:v10 error:&v18];
  v12 = v18;
  v13 = v12;
  if (v11)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong}&,NSData * {__strong}>(v11, a4, a5);
    v14 = [v11 execute];
    [v11 invalidate];
    if ((v14 - 100) >= 2 && v14 != 0)
    {
      [v9 reportErrorWithCode:v14 statement:objc_msgSend(v11 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v16 = v12;
      *a2 = v13;
    }

    v14 = [v13 code];
  }

  return v14;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong}&,NSData * {__strong}>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindString:*a2 atParameterIndex:1];
  [v5 bindData:*a3 atParameterIndex:2];
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&,NSString * {__strong}>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v18 = 0;
  v11 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v9 query:v10 error:&v18];
  v12 = v18;
  v13 = v12;
  if (v11)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong}&,NSString * {__strong}>(v11, a4, a5);
    v14 = [v11 execute];
    [v11 invalidate];
    if ((v14 - 100) >= 2 && v14 != 0)
    {
      [v9 reportErrorWithCode:v14 statement:objc_msgSend(v11 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v16 = v12;
      *a2 = v13;
    }

    v14 = [v13 code];
  }

  return v14;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong}&,NSString * {__strong}>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindString:*a2 atParameterIndex:1];
  [v5 bindString:*a3 atParameterIndex:2];
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&,double>(void *a1, void *a2, void *a3, void *a4, double *a5)
{
  v9 = a1;
  v10 = a3;
  v18 = 0;
  v11 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v9 query:v10 error:&v18];
  v12 = v18;
  v13 = v12;
  if (v11)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong}&,double>(v11, a4, a5);
    v14 = [v11 execute];
    [v11 invalidate];
    if ((v14 - 100) >= 2 && v14 != 0)
    {
      [v9 reportErrorWithCode:v14 statement:objc_msgSend(v11 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v16 = v12;
      *a2 = v13;
    }

    v14 = [v13 code];
  }

  return v14;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong}&,double>(void *a1, void *a2, double *a3)
{
  v5 = a1;
  [v5 bindString:*a2 atParameterIndex:1];
  [v5 bindDouble:2 atParameterIndex:*a3];
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&,BOOL>(void *a1, void *a2, void *a3, void *a4, unsigned __int8 *a5)
{
  v9 = a1;
  v10 = a3;
  v18 = 0;
  v11 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v9 query:v10 error:&v18];
  v12 = v18;
  v13 = v12;
  if (v11)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong}&,BOOL>(v11, a4, a5);
    v14 = [v11 execute];
    [v11 invalidate];
    if ((v14 - 100) >= 2 && v14 != 0)
    {
      [v9 reportErrorWithCode:v14 statement:objc_msgSend(v11 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v16 = v12;
      *a2 = v13;
    }

    v14 = [v13 code];
  }

  return v14;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong}&,BOOL>(void *a1, void *a2, unsigned __int8 *a3)
{
  v5 = a1;
  [v5 bindString:*a2 atParameterIndex:1];
  [v5 bindInt:*a3 atParameterIndex:2];
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&,long long>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v18 = 0;
  v11 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v9 query:v10 error:&v18];
  v12 = v18;
  v13 = v12;
  if (v11)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong}&,long long>(v11, a4, a5);
    v14 = [v11 execute];
    [v11 invalidate];
    if ((v14 - 100) >= 2 && v14 != 0)
    {
      [v9 reportErrorWithCode:v14 statement:objc_msgSend(v11 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v16 = v12;
      *a2 = v13;
    }

    v14 = [v13 code];
  }

  return v14;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong}&,long long>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindString:*a2 atParameterIndex:1];
  [v5 bindInt64:*a3 atParameterIndex:2];
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSData * {__strong},long>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v18 = 0;
  v11 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v9 query:v10 error:&v18];
  v12 = v18;
  v13 = v12;
  if (v11)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSData * {__strong},long>(v11, a4, a5);
    v14 = [v11 execute];
    [v11 invalidate];
    if ((v14 - 100) >= 2 && v14 != 0)
    {
      [v9 reportErrorWithCode:v14 statement:objc_msgSend(v11 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v16 = v12;
      *a2 = v13;
    }

    v14 = [v13 code];
  }

  return v14;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSData * {__strong},long>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindData:*a2 atParameterIndex:1];
  [v5 bindInt64:*a3 atParameterIndex:2];
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<0,1,std::tuple<NSString * {__strong},std::tuple<long long &>>>(void *a1, sqlite3_stmt *a2, uint64_t a3, id *a4)
{
  v7 = a1;
  v8 = *a4;
  v9 = v8;
  if (v8)
  {
    v10 = sqlite3_bind_text(a2, 1, [v8 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v10 = sqlite3_bind_null(a2, 1);
  }

  v11 = v10;

  if (v11)
  {
    [v7 reportErrorWithCode:1 statement:a2 error:a3];
    v12 = 0;
  }

  else
  {
    v12 = SafariShared::_WBSSQLiteStatementBindOrStep<1,1,std::tuple<NSString * {__strong},std::tuple<long long &>>>(v7, a2, a3, a4);
  }

  return v12;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<1,1,std::tuple<NSString * {__strong},std::tuple<long long &>>>(void *a1, sqlite3_stmt *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = sqlite3_step(a2);
  if (v8 == 100 && (**(a4 + 8) = sqlite3_column_int64(a2, 0), v8 = sqlite3_step(a2), v8 == 101))
  {
    v9 = 1;
  }

  else
  {
    [v7 reportErrorWithCode:v8 statement:a2 error:a3];
    v9 = 0;
  }

  return v9;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * const {__strong}&,unsigned long,long long &,NSData * {__strong}&,NSData * {__strong},long>(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a1;
  [v13 bindString:*a2 atParameterIndex:1];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,unsigned long,long long &,NSData * {__strong}&,NSData * {__strong}&,long>(v13, a3, a4, a5, a6, a7);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,unsigned long,long long &,NSData * {__strong}&,NSData * {__strong}&,long>(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  [v11 bindInt64:*a2 atParameterIndex:2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<3,long long &,NSData * {__strong}&,NSData * {__strong}&,long>(v11, a3, a4, a5, a6);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<3,long long &,NSData * {__strong}&,NSData * {__strong}&,long>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  [v9 bindInt64:*a2 atParameterIndex:3];
  SafariShared::_WBSSQLiteStatementBindAllParameters<4,NSData * {__strong}&,NSData * {__strong}&,long>(v9, a3, a4, a5);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<4,NSData * {__strong}&,NSData * {__strong}&,long>(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  [v7 bindData:*a2 atParameterIndex:4];
  SafariShared::_WBSSQLiteStatementBindAllParameters<5,NSData * {__strong}&,long>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<5,NSData * {__strong}&,long>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindData:*a2 atParameterIndex:5];
  [v5 bindInt64:*a3 atParameterIndex:6];
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,unsigned long,long long &,NSData * {__strong}&,NSData * {__strong}&,long,long long &>(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a1;
  [v13 bindInt64:*a2 atParameterIndex:1];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,long long &,NSData * {__strong}&,NSData * {__strong}&,long,long long &>(v13, a3, a4, a5, a6, a7);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,long long &,NSData * {__strong}&,NSData * {__strong}&,long,long long &>(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  [v11 bindInt64:*a2 atParameterIndex:2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<3,NSData * {__strong}&,NSData * {__strong}&,long,long long &>(v11, a3, a4, a5, a6);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<3,NSData * {__strong}&,NSData * {__strong}&,long,long long &>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  [v9 bindData:*a2 atParameterIndex:3];
  SafariShared::_WBSSQLiteStatementBindAllParameters<4,NSData * {__strong}&,long,long long &>(v9, a3, a4, a5);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<4,NSData * {__strong}&,long,long long &>(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  [v7 bindData:*a2 atParameterIndex:4];
  SafariShared::_WBSSQLiteStatementBindAllParameters<5,long,long long &>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<5,long,long long &>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindInt64:*a2 atParameterIndex:5];
  [v5 bindInt64:*a3 atParameterIndex:6];
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,long long &,double,NSString * {__strong},int,int,int,long &,int,unsigned long>(void *a1, void *a2, double *a3, void *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, void *a8, unsigned int *a9, void *a10)
{
  v17 = a1;
  [v17 bindInt64:*a2 atParameterIndex:1];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,double,NSString * {__strong},int,int,int,long &,int,unsigned long>(v17, a3, a4, a5, a6, a7, a8, a9, a10);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,double,NSString * {__strong},int,int,int,long &,int,unsigned long>(void *a1, double *a2, void *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, void *a7, unsigned int *a8, void *a9)
{
  v16 = a1;
  [v16 bindDouble:2 atParameterIndex:*a2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<3,NSString * {__strong},int,int,int,long &,int,unsigned long>(v16, a3, a4, a5, a6, a7, a8, a9);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<3,NSString * {__strong},int,int,int,long &,int,unsigned long>(void *a1, void *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, void *a6, unsigned int *a7, void *a8)
{
  v15 = a1;
  [v15 bindString:*a2 atParameterIndex:3];
  SafariShared::_WBSSQLiteStatementBindAllParameters<4,int,int,int,long &,int,unsigned long>(v15, a3, a4, a5, a6, a7, a8);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<4,int,int,int,long &,int,unsigned long>(void *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, void *a5, unsigned int *a6, void *a7)
{
  v13 = a1;
  [v13 bindInt:*a2 atParameterIndex:4];
  SafariShared::_WBSSQLiteStatementBindAllParameters<5,int,int,long &,int,unsigned long>(v13, a3, a4, a5, a6, a7);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<5,int,int,long &,int,unsigned long>(void *a1, unsigned int *a2, unsigned int *a3, void *a4, unsigned int *a5, void *a6)
{
  v11 = a1;
  [v11 bindInt:*a2 atParameterIndex:5];
  SafariShared::_WBSSQLiteStatementBindAllParameters<6,int,long &,int,unsigned long>(v11, a3, a4, a5, a6);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<6,int,long &,int,unsigned long>(void *a1, unsigned int *a2, void *a3, unsigned int *a4, void *a5)
{
  v9 = a1;
  [v9 bindInt:*a2 atParameterIndex:6];
  SafariShared::_WBSSQLiteStatementBindAllParameters<7,long &,int,unsigned long>(v9, a3, a4, a5);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<7,long &,int,unsigned long>(void *a1, void *a2, unsigned int *a3, void *a4)
{
  v7 = a1;
  [v7 bindInt64:*a2 atParameterIndex:7];
  SafariShared::_WBSSQLiteStatementBindAllParameters<8,int,unsigned long>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<8,int,unsigned long>(void *a1, unsigned int *a2, void *a3)
{
  v5 = a1;
  [v5 bindInt:*a2 atParameterIndex:8];
  [v5 bindInt64:*a3 atParameterIndex:9];
}

void *std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<0,1,std::tuple<double,std::tuple<long long &>>>(void *a1, sqlite3_stmt *a2, uint64_t a3, double *a4)
{
  v7 = a1;
  if (sqlite3_bind_double(a2, 1, *a4))
  {
    [v7 reportErrorWithCode:1 statement:a2 error:a3];
    v8 = 0;
  }

  else
  {
    v8 = SafariShared::_WBSSQLiteStatementBindOrStep<1,1,std::tuple<double,std::tuple<long long &>>>(v7, a2, a3, a4);
  }

  return v8;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<1,1,std::tuple<double,std::tuple<long long &>>>(void *a1, sqlite3_stmt *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = sqlite3_step(a2);
  if (v8 == 100 && (**(a4 + 8) = sqlite3_column_int64(a2, 0), v8 = sqlite3_step(a2), v8 == 101))
  {
    v9 = 1;
  }

  else
  {
    [v7 reportErrorWithCode:v8 statement:a2 error:a3];
    v9 = 0;
  }

  return v9;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong},long long &>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindString:*a2 atParameterIndex:1];
  [v5 bindInt64:*a3 atParameterIndex:2];
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,unsigned long,unsigned long,long long &>(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  [v7 bindInt64:*a2 atParameterIndex:1];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,unsigned long,long long &>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,unsigned long,long long &>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindInt64:*a2 atParameterIndex:2];
  [v5 bindInt64:*a3 atParameterIndex:3];
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<0,0,std::tuple<std::tuple<long long &>>>(void *a1, sqlite3_stmt *a2, uint64_t a3, sqlite3_int64 **a4)
{
  v7 = a1;
  v8 = sqlite3_step(a2);
  if (v8 == 100 && (**a4 = sqlite3_column_int64(a2, 0), v8 = sqlite3_step(a2), v8 == 101))
  {
    v9 = 1;
  }

  else
  {
    [v7 reportErrorWithCode:v8 statement:a2 error:a3];
    v9 = 0;
  }

  return v9;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,long long &,long long &>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindInt64:*a2 atParameterIndex:1];
  [v5 bindInt64:*a3 atParameterIndex:2];
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<0,1,std::tuple<NSString * {__strong}&,std::tuple<NSData * {__strong}&>>>(void *a1, sqlite3_stmt *a2, uint64_t a3, id **a4)
{
  v7 = a1;
  v8 = **a4;
  v9 = v8;
  if (v8)
  {
    v10 = sqlite3_bind_text(a2, 1, [v8 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v10 = sqlite3_bind_null(a2, 1);
  }

  v11 = v10;

  if (v11)
  {
    [v7 reportErrorWithCode:1 statement:a2 error:a3];
    v12 = 0;
  }

  else
  {
    v12 = SafariShared::_WBSSQLiteStatementBindOrStep<1,1,std::tuple<NSString * {__strong}&,std::tuple<NSData * {__strong}&>>>(v7, a2, a3, a4);
  }

  return v12;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<1,1,std::tuple<NSString * {__strong}&,std::tuple<NSData * {__strong}&>>>(void *a1, sqlite3_stmt *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = sqlite3_step(a2);
  if (v8 != 100)
  {
    goto LABEL_5;
  }

  if (!SafariShared::_WBSStatementFetchColumnsInTuple<std::tuple<NSData * {__strong}&>,0>(a2, (a4 + 8)))
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v8 = sqlite3_step(a2);
  if (v8 != 101)
  {
LABEL_5:
    [v7 reportErrorWithCode:v8 statement:a2 error:a3];
    goto LABEL_6;
  }

  v9 = 1;
LABEL_7:

  return v9;
}

uint64_t SafariShared::_WBSStatementFetchColumnsInTuple<std::tuple<NSData * {__strong}&>,0>(sqlite3_stmt *a1, void ***a2)
{
  v3 = SafariShared::WBSSQLiteDatatypeTraits<NSData * {__strong}>::fetch(a1, 0);
  v4 = **a2;
  **a2 = v3;

  return 1;
}

CFDataRef SafariShared::WBSSQLiteDatatypeTraits<NSData * {__strong}>::fetch(sqlite3_stmt *a1, int a2)
{
  if (sqlite3_column_type(a1, a2) == 5)
  {
    v4 = 0;
  }

  else
  {
    v5 = *MEMORY[0x1E695E480];
    v6 = sqlite3_column_blob(a1, a2);
    v7 = sqlite3_column_bytes(a1, a2);
    v4 = CFDataCreate(v5, v6, v7);
  }

  return v4;
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSData * {__strong}&,NSString * {__strong}&>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v18 = 0;
  v11 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v9 query:v10 error:&v18];
  v12 = v18;
  v13 = v12;
  if (v11)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSData * {__strong}&,NSString * {__strong}&>(v11, a4, a5);
    v14 = [v11 execute];
    [v11 invalidate];
    if ((v14 - 100) >= 2 && v14 != 0)
    {
      [v9 reportErrorWithCode:v14 statement:objc_msgSend(v11 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v16 = v12;
      *a2 = v13;
    }

    v14 = [v13 code];
  }

  return v14;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSData * {__strong}&,NSString * {__strong}&>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindData:*a2 atParameterIndex:1];
  [v5 bindString:*a3 atParameterIndex:2];
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<0,1,std::tuple<NSString * const {__strong}&,std::tuple<NSData * {__strong}&>>>(void *a1, sqlite3_stmt *a2, uint64_t a3, id **a4)
{
  v7 = a1;
  v8 = **a4;
  v9 = v8;
  if (v8)
  {
    v10 = sqlite3_bind_text(a2, 1, [v8 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v10 = sqlite3_bind_null(a2, 1);
  }

  v11 = v10;

  if (v11)
  {
    [v7 reportErrorWithCode:1 statement:a2 error:a3];
    v12 = 0;
  }

  else
  {
    v12 = SafariShared::_WBSSQLiteStatementBindOrStep<1,1,std::tuple<NSString * const {__strong}&,std::tuple<NSData * {__strong}&>>>(v7, a2, a3, a4);
  }

  return v12;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<1,1,std::tuple<NSString * const {__strong}&,std::tuple<NSData * {__strong}&>>>(void *a1, sqlite3_stmt *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = sqlite3_step(a2);
  if (v8 != 100)
  {
    goto LABEL_5;
  }

  if (!SafariShared::_WBSStatementFetchColumnsInTuple<std::tuple<NSData * {__strong}&>,0>(a2, (a4 + 8)))
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v8 = sqlite3_step(a2);
  if (v8 != 101)
  {
LABEL_5:
    [v7 reportErrorWithCode:v8 statement:a2 error:a3];
    goto LABEL_6;
  }

  v9 = 1;
LABEL_7:

  return v9;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<0,2,std::tuple<NSString * {__strong},double,std::tuple<int &,int &>>>(void *a1, sqlite3_stmt *a2, uint64_t a3, id *a4)
{
  v7 = a1;
  v8 = *a4;
  v9 = v8;
  if (v8)
  {
    v10 = sqlite3_bind_text(a2, 1, [v8 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v10 = sqlite3_bind_null(a2, 1);
  }

  v11 = v10;

  if (v11)
  {
    [v7 reportErrorWithCode:1 statement:a2 error:a3];
    v12 = 0;
  }

  else
  {
    v12 = SafariShared::_WBSSQLiteStatementBindOrStep<1,2,std::tuple<NSString * {__strong},double,std::tuple<int &,int &>>>(v7, a2, a3, a4);
  }

  return v12;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<1,2,std::tuple<NSString * {__strong},double,std::tuple<int &,int &>>>(void *a1, sqlite3_stmt *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  if (sqlite3_bind_double(a2, 2, *(a4 + 8)))
  {
    [v7 reportErrorWithCode:1 statement:a2 error:a3];
    v8 = 0;
  }

  else
  {
    v8 = SafariShared::_WBSSQLiteStatementBindOrStep<2,2,std::tuple<NSString * {__strong},double,std::tuple<int &,int &>>>(v7, a2, a3, a4);
  }

  return v8;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<2,2,std::tuple<NSString * {__strong},double,std::tuple<int &,int &>>>(void *a1, sqlite3_stmt *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = sqlite3_step(a2);
  if (v8 == 100 && (v9 = sqlite3_column_int(a2, 0), v10 = sqlite3_column_int(a2, 1), v11 = *(a4 + 24), **(a4 + 16) = v9, *v11 = v10, v8 = sqlite3_step(a2), v8 == 101))
  {
    v12 = 1;
  }

  else
  {
    [v7 reportErrorWithCode:v8 statement:a2 error:a3];
    v12 = 0;
  }

  return v12;
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<long long const&>(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v16 = 0;
  v9 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v7 query:v8 error:&v16];
  v10 = v16;
  v11 = v10;
  if (v9)
  {
    [v9 bindInt64:*a4 atParameterIndex:1];
    v12 = [v9 execute];
    [v9 invalidate];
    if ((v12 - 100) >= 2 && v12 != 0)
    {
      [v7 reportErrorWithCode:v12 statement:objc_msgSend(v9 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v14 = v10;
      *a2 = v11;
    }

    v12 = [v11 code];
  }

  return v12;
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<long long const&,NSData * const {__strong}&,NSData * const {__strong},long long const&>(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a1;
  v14 = a3;
  v22 = 0;
  v15 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v13 query:v14 error:&v22];
  v16 = v22;
  v17 = v16;
  if (v15)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,long long const&,NSData * const {__strong}&,NSData * const {__strong},long long const&>(v15, a4, a5, a6, a7);
    v18 = [v15 execute];
    [v15 invalidate];
    if ((v18 - 100) >= 2 && v18 != 0)
    {
      [v13 reportErrorWithCode:v18 statement:objc_msgSend(v15 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v20 = v16;
      *a2 = v17;
    }

    v18 = [v17 code];
  }

  return v18;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,long long const&,NSData * const {__strong}&,NSData * const {__strong},long long const&>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  [v9 bindInt64:*a2 atParameterIndex:1];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSData * const {__strong}&,NSData * const {__strong},long long const&>(v9, a3, a4, a5);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSData * const {__strong}&,NSData * const {__strong},long long const&>(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  [v7 bindData:*a2 atParameterIndex:2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<3,NSData * const {__strong}&,long long const&>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<3,NSData * const {__strong}&,long long const&>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindData:*a2 atParameterIndex:3];
  [v5 bindInt64:*a3 atParameterIndex:4];
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<0,1,std::tuple<NSDate * {__strong}&,void({block_pointer} {__strong})(long long)>>(void *a1, sqlite3_stmt *a2, uint64_t a3, id **a4)
{
  v7 = a1;
  v8 = **a4;
  v9 = v8;
  if (v8)
  {
    [v8 timeIntervalSinceReferenceDate];
    v11 = sqlite3_bind_double(a2, 1, v10);
  }

  else
  {
    v11 = sqlite3_bind_null(a2, 1);
  }

  v12 = v11;

  if (v12)
  {
    [v7 reportErrorWithCode:1 statement:a2 error:a3];
    v13 = 0;
  }

  else
  {
    v13 = SafariShared::_WBSSQLiteStatementBindOrStep<1,1,std::tuple<NSDate * {__strong}&,void({block_pointer} {__strong})(long long)>>(v7, a2, a3, a4);
  }

  return v13;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<1,1,std::tuple<NSDate * {__strong}&,void({block_pointer} {__strong})(long long)>>(void *a1, sqlite3_stmt *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  while (1)
  {
    v8 = sqlite3_step(a2);
    if (v8 != 100)
    {
      break;
    }

    if ((SafariShared::_WBSStatementCallBlockWithAllColumns<void,long long>(a2, *(a4 + 8)) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (v8 == 101)
  {
    v9 = 1;
    goto LABEL_9;
  }

  [v7 reportErrorWithCode:v8 statement:a2 error:a3];
LABEL_8:
  v9 = 0;
LABEL_9:

  return v9;
}

uint64_t SafariShared::_WBSStatementCallBlockWithAllColumns<void,long long>(sqlite3_stmt *a1, void *a2)
{
  v3 = a2;
  v4 = sqlite3_column_int64(a1, 0);
  v3[2](v3, v4);

  return 1;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<0,0,std::tuple<void({block_pointer} {__strong})(long long)>>(void *a1, sqlite3_stmt *a2, uint64_t a3, void **a4)
{
  v7 = a1;
  while (1)
  {
    v8 = sqlite3_step(a2);
    if (v8 != 100)
    {
      break;
    }

    if ((SafariShared::_WBSStatementCallBlockWithAllColumns<void,long long>(a2, *a4) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (v8 == 101)
  {
    v9 = 1;
    goto LABEL_9;
  }

  [v7 reportErrorWithCode:v8 statement:a2 error:a3];
LABEL_8:
  v9 = 0;
LABEL_9:

  return v9;
}