@interface VKCFormRegion
+ (id)autoFillContentTypeForCRContentType:(unint64_t)a3;
- (VKCFormRegion)initWithSourceRegion:(id)a3;
- (id)crFormFieldWithSize:(CGSize)a3;
- (id)debugDescription;
- (unint64_t)regionType;
@end

@implementation VKCFormRegion

- (VKCFormRegion)initWithSourceRegion:(id)a3
{
  v4 = a3;
  v5 = [(VKCFormRegion *)self init];
  -[VKCFormRegion setFieldType:](v5, "setFieldType:", [v4 fieldType]);
  v6 = [v4 boundingQuad];
  v7 = [v6 vkQuad];
  [(VKCFormRegion *)v5 setQuad:v7];

  v8 = objc_opt_class();
  v9 = VKDynamicCast(v8, v4);
  -[VKCFormRegion setContentType:](v5, "setContentType:", [v9 textContentType]);
  -[VKCFormRegion setFieldSource:](v5, "setFieldSource:", [v9 fieldSource]);
  -[VKCFormRegion setMaxCharacterCount:](v5, "setMaxCharacterCount:", [v9 maxCharacterCount]);
  [v9 suggestedLineHeight];
  [(VKCFormRegion *)v5 setSuggestedLineHeight:?];
  v10 = [v9 labelRegion];
  v11 = [v10 text];
  [(VKCFormRegion *)v5 setLabelText:v11];

  if (!v9)
  {
    v12 = [(VKCFormRegion *)v5 quad];
    [v12 maxHeight];
    [(VKCFormRegion *)v5 setSuggestedLineHeight:?];
  }

  v13 = [v4 contentsWithTypes:0x2000];
  v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v13, "count")}];
  if ([v13 count])
  {
    v15 = 0;
    do
    {
      v16 = objc_opt_class();
      v17 = [v13 objectAtIndexedSubscript:v15];
      v18 = VKDynamicCast(v16, v17);

      v19 = [[VKCFormRegion alloc] initWithSourceRegion:v18];
      [v14 addObject:v19];

      ++v15;
    }

    while ([v13 count] > v15);
  }

  [(VKCFormRegion *)v5 setChildren:v14];
  [(VKCFormRegion *)v5 setAutofillNewContextStart:0];
  if (objc_opt_respondsToSelector())
  {
    -[VKCFormRegion setAutofillNewContextStart:](v5, "setAutofillNewContextStart:", [v9 autofillNewContextStart]);
  }

  return v5;
}

- (id)crFormFieldWithSize:(CGSize)a3
{
  v4 = objc_alloc(MEMORY[0x1E69D9DD8]);
  v5 = [(VKCFormRegion *)self quad];
  [v5 boundingBox];
  v6 = [v4 initWithNormalizedBoundingBox:? size:?];

  v7 = [objc_alloc(MEMORY[0x1E69D9D70]) initWithQuad:v6 type:-[VKCFormRegion fieldType](self source:"fieldType") value:-[VKCFormRegion fieldSource](self contentType:"fieldSource") maxCharacterCount:{&stru_1F2C04538, -[VKCFormRegion contentType](self, "contentType"), -[VKCFormRegion maxCharacterCount](self, "maxCharacterCount")}];

  return v7;
}

- (unint64_t)regionType
{
  v3 = [(VKCFormRegion *)self fieldType];
  if (v3 == 2)
  {
    return 3;
  }

  if (v3 != 1)
  {
    return v3 == 0;
  }

  if ([(VKCFormRegion *)self contentType]== 50)
  {
    return 4;
  }

  return 2;
}

+ (id)autoFillContentTypeForCRContentType:(unint64_t)a3
{
  switch(a3)
  {
    case 2uLL:
      v3 = getAFTextContentTypeName();
      break;
    case 3uLL:
      v3 = getAFTextContentTypeNamePrefix();
      break;
    case 4uLL:
      v3 = getAFTextContentTypeGivenName();
      break;
    case 5uLL:
      v3 = getAFTextContentTypeMiddleName();
      break;
    case 6uLL:
      v3 = getAFTextContentTypeFamilyName();
      break;
    case 7uLL:
      v3 = getAFTextContentTypeNameSuffix();
      break;
    case 8uLL:
      v3 = getAFTextContentTypeNickname();
      break;
    case 9uLL:
      v3 = getAFTextContentTypeJobTitle();
      break;
    case 0xAuLL:
      v3 = getAFTextContentTypeOrganizationName();
      break;
    case 0xBuLL:
      v3 = getAFTextContentTypeLocation();
      break;
    case 0xCuLL:
      v3 = getAFTextContentTypeFullStreetAddress();
      break;
    case 0xDuLL:
      v3 = getAFTextContentTypeStreetAddressLine1();
      break;
    case 0xEuLL:
      v3 = getAFTextContentTypeStreetAddressLine2();
      break;
    case 0xFuLL:
      v3 = getAFTextContentTypeAddressCity();
      break;
    case 0x10uLL:
      v3 = getAFTextContentTypeAddressState();
      break;
    case 0x11uLL:
      v3 = getAFTextContentTypeAddressCityAndState();
      break;
    case 0x13uLL:
      v3 = getAFTextContentTypeCountryName();
      break;
    case 0x14uLL:
      v3 = getAFTextContentTypePostalCode();
      break;
    case 0x15uLL:
      v3 = getAFTextContentTypeEmailAddress();
      break;
    case 0x16uLL:
      v3 = getAFTextContentTypeURL();
      break;
    case 0x17uLL:
      v3 = getAFTextContentTypePassword();
      break;
    case 0x18uLL:
      v3 = getAFTextContentTypeCreditCardName();
      break;
    case 0x19uLL:
      v3 = getAFTextContentTypeCreditCardGivenName();
      break;
    case 0x1AuLL:
      v3 = getAFTextContentTypeCreditCardMiddleName();
      break;
    case 0x1BuLL:
      v3 = getAFTextContentTypeCreditCardFamilyName();
      break;
    case 0x1CuLL:
      v3 = getAFTextContentTypeCreditCardNumber();
      break;
    case 0x1DuLL:
      v3 = getAFTextContentTypeCreditCardExpiration();
      break;
    case 0x1EuLL:
      v3 = getAFTextContentTypeCreditCardExpirationMonth();
      break;
    case 0x1FuLL:
      v3 = getAFTextContentTypeCreditCardExpirationYear();
      break;
    case 0x20uLL:
      v3 = getAFTextContentTypeCreditCardSecurityCode();
      break;
    case 0x21uLL:
      v3 = getAFTextContentTypeCreditCardType();
      break;
    case 0x25uLL:
      v3 = getAFTextContentTypeBirthdate();
      break;
    case 0x26uLL:
      v3 = getAFTextContentTypeBirthdateDay();
      break;
    case 0x27uLL:
      v3 = getAFTextContentTypeBirthdateMonth();
      break;
    case 0x28uLL:
      v3 = getAFTextContentTypeBirthdateYear();
      break;
    case 0x2AuLL:
      v3 = getAFTextContentTypeTelephoneNumber();
      break;
    case 0x2BuLL:
      v3 = getAFTextContentTypeTelephoneCountryCode();
      break;
    case 0x2CuLL:
      v3 = getAFTextContentTypeTelephoneNationalNumber();
      break;
    case 0x2DuLL:
      v3 = getAFTextContentTypeTelephoneAreaCode();
      break;
    case 0x2EuLL:
    case 0x2FuLL:
    case 0x30uLL:
      goto LABEL_7;
    case 0x31uLL:
      v3 = getAFTextContentTypeTelephoneExtension();
      break;
    case 0x34uLL:
    case 0x35uLL:
    case 0x36uLL:
    case 0x37uLL:
    case 0x38uLL:
    case 0x39uLL:
    case 0x3AuLL:
    case 0x3BuLL:
      v9 = 0;
      v10 = &v9;
      v11 = 0x2020000000;
      v4 = getAFTextContentTypeDateTimeSymbolLoc_ptr;
      v12 = getAFTextContentTypeDateTimeSymbolLoc_ptr;
      if (!getAFTextContentTypeDateTimeSymbolLoc_ptr)
      {
        v5 = AutoFillCoreLibrary();
        v10[3] = dlsym(v5, "AFTextContentTypeDateTime");
        getAFTextContentTypeDateTimeSymbolLoc_ptr = v10[3];
        v4 = v10[3];
      }

      _Block_object_dispose(&v9, 8);
      if (!v4)
      {
        getkDDRVInteractionDidFinishNotification_cold_1();
LABEL_7:
        v9 = 0;
        v10 = &v9;
        v11 = 0x2020000000;
        v4 = getAFTextContentTypeTelephoneLocalNumberSymbolLoc_ptr;
        v12 = getAFTextContentTypeTelephoneLocalNumberSymbolLoc_ptr;
        if (!getAFTextContentTypeTelephoneLocalNumberSymbolLoc_ptr)
        {
          v6 = AutoFillCoreLibrary();
          v10[3] = dlsym(v6, "AFTextContentTypeTelephoneLocalNumber");
          getAFTextContentTypeTelephoneLocalNumberSymbolLoc_ptr = v10[3];
          v4 = v10[3];
        }

        _Block_object_dispose(&v9, 8);
        if (!v4)
        {
          v8 = getkDDRVInteractionDidFinishNotification_cold_1();
          _Block_object_dispose(&v9, 8);
          _Unwind_Resume(v8);
        }
      }

      v3 = *v4;
      break;
    default:
      v3 = getAFTextContentTypeNone();
      break;
  }

  return v3;
}

- (id)debugDescription
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(VKCFormRegion *)self autoFillContentType];
  v27 = MEMORY[0x1E696AEC0];
  v26 = [(VKCFormRegion *)self regionType];
  v5 = [(VKCFormRegion *)self fieldSource];
  v6 = [(VKCFormRegion *)self contentType];
  v7 = [(VKCFormRegion *)self maxCharacterCount];
  if (v7 == -1)
  {
    v8 = @"uint_max";
  }

  else
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", -[VKCFormRegion maxCharacterCount](self, "maxCharacterCount")];
  }

  [(VKCFormRegion *)self suggestedLineHeight];
  v10 = v9;
  v11 = [(VKCFormRegion *)self autofillNewContextStart];
  v12 = [(VKCFormRegion *)self children];
  v25 = v11;
  v13 = v4;
  v14 = [v27 stringWithFormat:@"[VKCFormRegion] regionType:%lu source:%lu contentType:%lu autoFillType:%@, maxCharacterCount:%@ suggestedLineHeight:%lf autofillNewContextStart:%d #children:%lu", v26, v5, v6, v4, v8, v10, v25, objc_msgSend(v12, "count")];
  [v3 addObject:v14];

  if (v7 != -1)
  {
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v15 = [(VKCFormRegion *)self children];
  v16 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v29;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = MEMORY[0x1E696AEC0];
        v21 = [*(*(&v28 + 1) + 8 * i) debugDescription];
        v22 = [v20 stringWithFormat:@"- %@", v21];
        [v3 addObject:v22];
      }

      v17 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v17);
  }

  v23 = [v3 componentsJoinedByString:@"\n"];

  return v23;
}

@end