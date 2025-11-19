@interface TPFTextPieceFinder
- (TPFTextPieceFinder)initWithFullText:(id)a3 maxLength:(unint64_t)a4 maxNumCandidates:(unint64_t)a5;
- (id)createPiecesWithTargets:(id)a3;
- (id)findLocationsOfTarget:(id)a3;
@end

@implementation TPFTextPieceFinder

- (TPFTextPieceFinder)initWithFullText:(id)a3 maxLength:(unint64_t)a4 maxNumCandidates:(unint64_t)a5
{
  v8 = a3;
  if (![v8 length])
  {
    v15 = SSGeneralLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [TPFTextPieceFinder initWithFullText:v15 maxLength:? maxNumCandidates:?];
    }

    goto LABEL_10;
  }

  if (!a4)
  {
    v15 = SSGeneralLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [TPFTextPieceFinder initWithFullText:v15 maxLength:? maxNumCandidates:?];
    }

LABEL_10:

    v14 = 0;
    goto LABEL_11;
  }

  v17.receiver = self;
  v17.super_class = TPFTextPieceFinder;
  v9 = [(TPFTextPieceFinder *)&v17 init];
  if (v9)
  {
    v10 = [v8 copy];
    originalFullText = v9->_originalFullText;
    v9->_originalFullText = v10;

    v12 = [v8 lowercaseString];
    searchableFullText = v9->_searchableFullText;
    v9->_searchableFullText = v12;

    v9->_maxLength = a4;
    v9->_maxNumCandidates = a5;
  }

  self = v9;
  v14 = self;
LABEL_11:

  return v14;
}

- (id)findLocationsOfTarget:(id)a3
{
  v4 = a3;
  if ([v4 length] && (-[TPFTextPieceFinder searchableFullText](self, "searchableFullText"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "length"), v5, v6))
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v8 = [v4 lowercaseString];
    v9 = [(TPFTextPieceFinder *)self searchableFullText];
    v10 = [v9 length];

    v11 = [(TPFTextPieceFinder *)self searchableFullText];
    v12 = [v11 length];

    if (v12)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = [(TPFTextPieceFinder *)self searchableFullText];
        v16 = [v15 rangeOfString:v8 options:0 range:{v14, v10}];
        v18 = v17;

        if (v16 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v19 = [MEMORY[0x1E696B098] valueWithRange:{v16, v18}];
        [v7 addObject:v19];

        v14 = v16 + v18;
        v20 = [(TPFTextPieceFinder *)self searchableFullText];
        v21 = [v20 length];

        v22 = [(TPFTextPieceFinder *)self searchableFullText];
        v23 = [v22 length];

        if (v14 >= v23)
        {
          break;
        }

        v10 = v21 - v14;
      }

      while (v13++ < 0x3E7);
    }

    v25 = [v7 copy];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)createPiecesWithTargets:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(TPFTextPieceFinder *)self findLocationsOfTarget:*(*(&v30 + 1) + 8 * i)];
        [v5 addObjectsFromArray:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v12 = [MEMORY[0x1E695DF70] array];
    v13 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v14 = [(TPFTextPieceFinder *)self originalFullText];
    v15 = [(TPFTextPieceFinder *)self originalFullText];
    v16 = [v15 length];
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __46__TPFTextPieceFinder_createPiecesWithTargets___block_invoke;
    v25 = &unk_1E8596678;
    v26 = v12;
    v27 = self;
    v28 = v5;
    v29 = v13;
    v17 = v13;
    v18 = v12;
    [v14 enumerateSubstringsInRange:0 options:v16 usingBlock:{3, &v22}];

    v19 = [v18 copy];
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

void __46__TPFTextPieceFinder_createPiecesWithTargets___block_invoke(id *a1, uint64_t a2, NSUInteger a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v48 = *MEMORY[0x1E69E9840];
  v10 = [a1[4] count];
  if (v10 >= [a1[5] maxNumCandidates])
  {
    *a7 = 1;
  }

  else
  {
    v11 = [a1[5] originalFullText];
    v12 = [v11 length] - a3;

    v13 = [a1[5] maxLength];
    if (v13 < v12)
    {
      v12 = v13;
    }

    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v14 = a1[6];
    v15 = [v14 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v43;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v43 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v51.location = [*(*(&v42 + 1) + 8 * i) rangeValue];
          v51.length = v19;
          v49.location = a3;
          v49.length = v12;
          if (NSIntersectionRange(v49, v51).length)
          {

            v20 = [a1[5] originalFullText];
            v14 = [v20 substringWithRange:{a3, v12}];

            if (v12 < [a1[5] maxLength])
            {
              goto LABEL_18;
            }

            v21 = v12 + a3;
            v22 = [a1[5] originalFullText];
            v23 = [v22 length];

            if (v21 >= v23 || ([a1[5] originalFullText], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "characterAtIndex:", v21), v24, (objc_msgSend(a1[7], "characterIsMember:", v25) & 1) != 0) || (v26 = objc_msgSend(v14, "rangeOfCharacterFromSet:options:", a1[7], 4), v26 == 0x7FFFFFFFFFFFFFFFLL))
            {
LABEL_18:
              v27 = v14;
            }

            else
            {
              v27 = [v14 substringToIndex:v26];
            }

            v28 = v27;
            v29 = [v27 stringByTrimmingCharactersInSet:a1[7]];
            if ([v29 length])
            {
              v30 = [v29 length];
              v38 = 0u;
              v39 = 0u;
              v40 = 0u;
              v41 = 0u;
              v31 = a1[6];
              v32 = [v31 countByEnumeratingWithState:&v38 objects:v46 count:16];
              if (v32)
              {
                v33 = v32;
                v34 = *v39;
                while (2)
                {
                  for (j = 0; j != v33; ++j)
                  {
                    if (*v39 != v34)
                    {
                      objc_enumerationMutation(v31);
                    }

                    v52.location = [*(*(&v38 + 1) + 8 * j) rangeValue];
                    v52.length = v36;
                    v50.location = a3;
                    v50.length = v30;
                    if (NSIntersectionRange(v50, v52).length)
                    {

                      [a1[4] addObject:v29];
                      goto LABEL_30;
                    }
                  }

                  v33 = [v31 countByEnumeratingWithState:&v38 objects:v46 count:16];
                  if (v33)
                  {
                    continue;
                  }

                  break;
                }
              }
            }

LABEL_30:

            goto LABEL_31;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v42 objects:v47 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

LABEL_31:
  }

  v37 = *MEMORY[0x1E69E9840];
}

@end