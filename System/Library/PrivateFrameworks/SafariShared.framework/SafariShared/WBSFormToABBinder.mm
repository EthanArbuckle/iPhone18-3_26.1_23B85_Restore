@interface WBSFormToABBinder
+ (id)allSynonymsForMatch:(id)match formAppearsToBeChinese:(BOOL)chinese;
+ (id)specifierForAutocompleteToken:(id)token;
+ (id)specifierForClassification:(id)classification hints:(id)hints orderedParts:(id)parts;
+ (id)specifierForLabel:(id)label;
+ (unint64_t)indexOfBestMatchForString:(id)string inArray:(id)array startingPosition:(unint64_t *)position;
@end

@implementation WBSFormToABBinder

+ (id)allSynonymsForMatch:(id)match formAppearsToBeChinese:(BOOL)chinese
{
  chineseCopy = chinese;
  matchCopy = match;
  v6 = [matchCopy key];

  if (v6)
  {
    if (chineseCopy)
    {
      v7 = [matchCopy key];
      if ([v7 isEqualToString:@"City"])
      {

LABEL_7:
        stringValue = [matchCopy stringValue];
        v13 = [MEMORY[0x1E695DF70] arrayWithObject:stringValue];
        if (([stringValue hasSuffix:@"省"] & 1) != 0 || objc_msgSend(stringValue, "hasSuffix:", @"市"))
        {
          stringValue2 = [stringValue substringWithRange:{0, objc_msgSend(stringValue, "length") - objc_msgSend(@"省", "length")}];
          [v13 addObject:stringValue2];
        }

        else
        {
          v18 = [stringValue stringByAppendingString:@"省"];
          [v13 addObject:v18];

          stringValue2 = [stringValue stringByAppendingString:@"市"];
          [v13 addObject:stringValue2];
        }

        goto LABEL_15;
      }

      v11 = [matchCopy key];
      v12 = [v11 isEqualToString:@"State"];

      if (v12)
      {
        goto LABEL_7;
      }
    }

    property = [matchCopy property];
    v15 = findEntry<SafariShared::AddressBookAutoCompleteMappingData::SynonymCollectionMap>(&SafariShared::AddressBookAutoCompleteMappingData::synonyms, property);
    if (v15)
    {
      v16 = v15[1];
    }

    else
    {
      v16 = 0;
    }

    stringValue = [matchCopy key];
    stringValue2 = [matchCopy stringValue];
    v10 = lookupSynonyms(v16, stringValue, stringValue2);
  }

  else
  {
    stringValue = [matchCopy property];
    stringValue2 = [matchCopy stringValue];
    v10 = lookupSynonyms(0, stringValue, stringValue2);
  }

  v13 = v10;
LABEL_15:

  return v13;
}

+ (id)specifierForLabel:(id)label
{
  v3 = lookupSpecifier(&SafariShared::AddressBookAutoCompleteMappingData::fieldLabelMap, label);

  return v3;
}

+ (id)specifierForAutocompleteToken:(id)token
{
  v3 = lookupSpecifier(&SafariShared::AddressBookAutoCompleteMappingData::autocompleteTokenMap, token);

  return v3;
}

+ (unint64_t)indexOfBestMatchForString:(id)string inArray:(id)array startingPosition:(unint64_t *)position
{
  stringCopy = string;
  arrayCopy = array;
  v21 = stringCopy;
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetAlphaNumeric);
  v10 = [stringCopy stringByReplacingOccurrencesOfString:@"." withString:&stru_1F3A5E418];
  v11 = [arrayCopy count];
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    positionCopy = position;
    v23 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v14 = [arrayCopy safari_stringAtIndex:v13];
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

        if (positionCopy)
        {
          *positionCopy = v17;
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

+ (id)specifierForClassification:(id)classification hints:(id)hints orderedParts:(id)parts
{
  classificationCopy = classification;
  hintsCopy = hints;
  partsCopy = parts;
  v10 = classificationCopy;
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    if ([(__CFString *)v10 isEqualToString:@"cc-name"])
    {
      v12 = @"name";
    }

    if ([partsCopy count] == 1 && -[__CFString isEqualToString:](v12, "isEqualToString:", @"name"))
    {
      v13 = [partsCopy objectAtIndexedSubscript:0];

      v12 = v13;
    }

    firstObject = [hintsCopy firstObject];
    if (@"FullNameComposite")
    {
      v15 = &qword_1E7FB8BD0;
      while (![v15[1] isEqualToString:v12] || firstObject && !objc_msgSend(firstObject, "isEqualToString:", v15[2]))
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