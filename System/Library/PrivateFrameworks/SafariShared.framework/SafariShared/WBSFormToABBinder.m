@interface WBSFormToABBinder
+ (id)allSynonymsForMatch:(id)a3 formAppearsToBeChinese:(BOOL)a4;
+ (id)specifierForAutocompleteToken:(id)a3;
+ (id)specifierForClassification:(id)a3 hints:(id)a4 orderedParts:(id)a5;
+ (id)specifierForLabel:(id)a3;
+ (unint64_t)indexOfBestMatchForString:(id)a3 inArray:(id)a4 startingPosition:(unint64_t *)a5;
@end

@implementation WBSFormToABBinder

+ (id)allSynonymsForMatch:(id)a3 formAppearsToBeChinese:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 key];

  if (v6)
  {
    if (v4)
    {
      v7 = [v5 key];
      if ([v7 isEqualToString:@"City"])
      {

LABEL_7:
        v8 = [v5 stringValue];
        v13 = [MEMORY[0x1E695DF70] arrayWithObject:v8];
        if (([v8 hasSuffix:@"省"] & 1) != 0 || objc_msgSend(v8, "hasSuffix:", @"市"))
        {
          v9 = [v8 substringWithRange:{0, objc_msgSend(v8, "length") - objc_msgSend(@"省", "length")}];
          [v13 addObject:v9];
        }

        else
        {
          v18 = [v8 stringByAppendingString:@"省"];
          [v13 addObject:v18];

          v9 = [v8 stringByAppendingString:@"市"];
          [v13 addObject:v9];
        }

        goto LABEL_15;
      }

      v11 = [v5 key];
      v12 = [v11 isEqualToString:@"State"];

      if (v12)
      {
        goto LABEL_7;
      }
    }

    v14 = [v5 property];
    v15 = findEntry<SafariShared::AddressBookAutoCompleteMappingData::SynonymCollectionMap>(&SafariShared::AddressBookAutoCompleteMappingData::synonyms, v14);
    if (v15)
    {
      v16 = v15[1];
    }

    else
    {
      v16 = 0;
    }

    v8 = [v5 key];
    v9 = [v5 stringValue];
    v10 = lookupSynonyms(v16, v8, v9);
  }

  else
  {
    v8 = [v5 property];
    v9 = [v5 stringValue];
    v10 = lookupSynonyms(0, v8, v9);
  }

  v13 = v10;
LABEL_15:

  return v13;
}

+ (id)specifierForLabel:(id)a3
{
  v3 = lookupSpecifier(&SafariShared::AddressBookAutoCompleteMappingData::fieldLabelMap, a3);

  return v3;
}

+ (id)specifierForAutocompleteToken:(id)a3
{
  v3 = lookupSpecifier(&SafariShared::AddressBookAutoCompleteMappingData::autocompleteTokenMap, a3);

  return v3;
}

+ (unint64_t)indexOfBestMatchForString:(id)a3 inArray:(id)a4 startingPosition:(unint64_t *)a5
{
  v7 = a3;
  v8 = a4;
  v21 = v7;
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetAlphaNumeric);
  v10 = [v7 stringByReplacingOccurrencesOfString:@"." withString:&stru_1F3A5E418];
  v11 = [v8 count];
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    v22 = a5;
    v23 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v14 = [v8 safari_stringAtIndex:v13];
      v15 = [v14 stringByReplacingOccurrencesOfString:@"." withString:&stru_1F3A5E418];

      v16 = [v15 rangeOfString:v10 options:1];
      v17 = v16;
      if (v16 && (v16 == 0x7FFFFFFFFFFFFFFFLL || CFCharacterSetIsCharacterMember(Predefined, [v15 characterAtIndex:v16 - 1])) || (v18 = objc_msgSend(v15, "length"), objc_msgSend(v10, "length") + v17 < v18) && CFCharacterSetIsCharacterMember(Predefined, objc_msgSend(v15, "characterAtIndex:")) || v12 && v18 >= objc_msgSend(v12, "length"))
      {
        v19 = v12;
      }

      else
      {
        v19 = v15;

        if (v22)
        {
          *v22 = v17;
        }

        v23 = v13;
      }

      ++v13;
      v12 = v19;
    }

    while (v11 != v13);
  }

  else
  {
    v19 = 0;
    v23 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v23;
}

+ (id)specifierForClassification:(id)a3 hints:(id)a4 orderedParts:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v7;
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    if ([(__CFString *)v10 isEqualToString:@"cc-name"])
    {
      v12 = @"name";
    }

    if ([v9 count] == 1 && -[__CFString isEqualToString:](v12, "isEqualToString:", @"name"))
    {
      v13 = [v9 objectAtIndexedSubscript:0];

      v12 = v13;
    }

    v14 = [v8 firstObject];
    if (@"FullNameComposite")
    {
      v15 = &qword_1E7FB8BD0;
      while (![v15[1] isEqualToString:v12] || v14 && !objc_msgSend(v14, "isEqualToString:", v15[2]))
      {
        v16 = v15[3];
        v15 += 7;
        if (!v16)
        {
          goto LABEL_13;
        }
      }

      v17 = [objc_alloc(MEMORY[0x1E69C8808]) initWithProperty:*(v15 - 4) component:*(v15 - 3) label:*(v15 - 2) category:*(v15 - 1) parentProperty:*v15 classification:v15[1] classificationHint:v15[2]];
    }

    else
    {
LABEL_13:
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end