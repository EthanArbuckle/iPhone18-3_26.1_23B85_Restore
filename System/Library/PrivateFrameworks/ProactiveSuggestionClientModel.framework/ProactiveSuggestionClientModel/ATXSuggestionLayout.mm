@interface ATXSuggestionLayout
+ (id)maxSuggestionLayoutTypesForUILayoutType:(int64_t)type;
+ (id)minSuggestionLayoutTypesForUILayoutType:(int64_t)type;
+ (id)stringFromUILayoutType:(int64_t)type;
- (ATXSuggestionLayout)initWithCoder:(id)coder;
- (ATXSuggestionLayout)initWithLayoutType:(int64_t)type oneByOneSuggestions:(id)suggestions oneByTwoSuggestions:(id)twoSuggestions twoByTwoSuggestions:(id)byTwoSuggestions oneByFourSuggestions:(id)fourSuggestions twoByFourSuggestions:(id)byFourSuggestions fourByFourSuggestions:(id)fourByFourSuggestions fourByEightSuggestions:(id)self0;
- (ATXSuggestionLayout)initWithLayoutType:(int64_t)type oneByOneSuggestions:(id)suggestions oneByTwoSuggestions:(id)twoSuggestions twoByTwoSuggestions:(id)byTwoSuggestions oneByFourSuggestions:(id)fourSuggestions twoByFourSuggestions:(id)byFourSuggestions fourByFourSuggestions:(id)fourByFourSuggestions fourByEightSuggestions:(id)self0 uuid:(id)self1 layoutScore:(double)self2 isValidForSuggestionsWidget:(BOOL)self3 confidenceWarrantsSnappingOrNPlusOne:(BOOL)self4 isNPlusOne:(BOOL)self5 isLowConfidenceStackRotationForStaleStack:(BOOL)self6 widgetUniqueId:(id)self7 uuidOfHighestConfidenceSuggestion:(id)self8 numWidgetsInStack:(unint64_t)self9;
- (ATXSuggestionLayout)initWithProto:(id)proto;
- (ATXSuggestionLayout)initWithProtoData:(id)data;
- (BOOL)checkAndReportDecodingFailureIfNeededForBOOL:(BOOL)l key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)integer key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)checkAndReportDecodingFailureIfNeededFordouble:(double)fordouble key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)isEqual:(id)equal;
- (BOOL)isShortcutConversion;
- (NSString)description;
- (id)allSuggestionsInLayout;
- (id)arrayOfJSONFromSuggestionArray:(id)array;
- (id)compactDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)encodeAsProto;
- (id)jsonRawData;
- (id)minSuggestionListInLayout;
- (id)proto;
- (id)suggestionWithUUID:(id)d;
- (int)_protoLayoutTypeFromLayoutType:(int64_t)type;
- (int64_t)_layoutTypeFromProtoLayoutType:(int)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXSuggestionLayout

- (id)allSuggestionsInLayout
{
  v3 = [(NSArray *)self->_oneByOneSuggestions count];
  v4 = [(NSArray *)self->_oneByTwoSuggestions count]+ v3;
  v5 = [(NSArray *)self->_twoByTwoSuggestions count];
  v6 = v4 + v5 + [(NSArray *)self->_oneByFourSuggestions count];
  v7 = [(NSArray *)self->_twoByFourSuggestions count];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v6 + v7];
  v9 = v8;
  if (self->_oneByOneSuggestions)
  {
    [v8 addObjectsFromArray:?];
  }

  if (self->_oneByTwoSuggestions)
  {
    [v9 addObjectsFromArray:?];
  }

  if (self->_twoByTwoSuggestions)
  {
    [v9 addObjectsFromArray:?];
  }

  if (self->_oneByFourSuggestions)
  {
    [v9 addObjectsFromArray:?];
  }

  if (self->_twoByFourSuggestions)
  {
    [v9 addObjectsFromArray:?];
  }

  if (self->_fourByFourSuggestions)
  {
    [v9 addObjectsFromArray:?];
  }

  if (self->_fourByEightSuggestions)
  {
    [v9 addObjectsFromArray:?];
  }

  return v9;
}

- (id)encodeAsProto
{
  proto = [(ATXSuggestionLayout *)self proto];
  data = [proto data];

  return data;
}

- (id)proto
{
  v3 = objc_opt_new();
  [(ATXPBSuggestionLayout *)v3 setLayoutType:?];
  [(ATXPBSuggestionLayout *)v3 setLayoutScore:?];
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  [(ATXPBSuggestionLayout *)v3 setUuidString:uUIDString];

  v5 = [ATXProactiveSuggestion protoSuggestionsFromSuggestions:self->_oneByOneSuggestions];
  [(ATXPBSuggestionLayout *)v3 setOneByOneSuggestions:v5];

  v6 = [ATXProactiveSuggestion protoSuggestionsFromSuggestions:self->_oneByTwoSuggestions];
  [(ATXPBSuggestionLayout *)v3 setOneByTwoSuggestions:v6];

  v7 = [ATXProactiveSuggestion protoSuggestionsFromSuggestions:self->_twoByTwoSuggestions];
  [(ATXPBSuggestionLayout *)v3 setTwoByTwoSuggestions:v7];

  v8 = [ATXProactiveSuggestion protoSuggestionsFromSuggestions:self->_oneByFourSuggestions];
  [(ATXPBSuggestionLayout *)v3 setOneByFourSuggestions:v8];

  v9 = [ATXProactiveSuggestion protoSuggestionsFromSuggestions:self->_twoByFourSuggestions];
  [(ATXPBSuggestionLayout *)v3 setTwoByFourSuggestions:v9];

  v10 = [ATXProactiveSuggestion protoSuggestionsFromSuggestions:self->_fourByFourSuggestions];
  [(ATXPBSuggestionLayout *)v3 setFourByFourSuggestions:v10];

  v11 = [ATXProactiveSuggestion protoSuggestionsFromSuggestions:self->_fourByEightSuggestions];
  [(ATXPBSuggestionLayout *)v3 setFourByEightSuggestions:v11];

  [(ATXPBSuggestionLayout *)v3 setIsValidForSuggestionsWidget:?];
  [(ATXPBSuggestionLayout *)v3 setConfidenceWarrantsSnappingOrNPlusOne:?];
  [(ATXPBSuggestionLayout *)v3 setIsNPlusOne:?];
  [(ATXPBSuggestionLayout *)v3 setWidgetUniqueId:?];
  [(ATXPBSuggestionLayout *)v3 setIsLowConfidenceStackRotationForStaleStack:?];
  uUIDString2 = [(NSUUID *)self->_uuidOfHighestConfidenceSuggestion UUIDString];
  [(ATXPBSuggestionLayout *)v3 setUuidOfHighestConfidenceSuggestion:uUIDString2];

  [(ATXPBSuggestionLayout *)v3 setNumWidgetsInStack:?];

  return v3;
}

- (ATXSuggestionLayout)initWithLayoutType:(int64_t)type oneByOneSuggestions:(id)suggestions oneByTwoSuggestions:(id)twoSuggestions twoByTwoSuggestions:(id)byTwoSuggestions oneByFourSuggestions:(id)fourSuggestions twoByFourSuggestions:(id)byFourSuggestions fourByFourSuggestions:(id)fourByFourSuggestions fourByEightSuggestions:(id)self0
{
  eightSuggestionsCopy = eightSuggestions;
  fourByFourSuggestionsCopy = fourByFourSuggestions;
  byFourSuggestionsCopy = byFourSuggestions;
  fourSuggestionsCopy = fourSuggestions;
  byTwoSuggestionsCopy = byTwoSuggestions;
  twoSuggestionsCopy = twoSuggestions;
  suggestionsCopy = suggestions;
  v24 = objc_opt_new();
  v25 = [(ATXSuggestionLayout *)self initWithLayoutType:type oneByOneSuggestions:suggestionsCopy oneByTwoSuggestions:twoSuggestionsCopy twoByTwoSuggestions:byTwoSuggestionsCopy oneByFourSuggestions:fourSuggestionsCopy twoByFourSuggestions:byFourSuggestionsCopy fourByFourSuggestions:fourByFourSuggestionsCopy fourByEightSuggestions:eightSuggestionsCopy uuid:v24];

  return v25;
}

- (ATXSuggestionLayout)initWithLayoutType:(int64_t)type oneByOneSuggestions:(id)suggestions oneByTwoSuggestions:(id)twoSuggestions twoByTwoSuggestions:(id)byTwoSuggestions oneByFourSuggestions:(id)fourSuggestions twoByFourSuggestions:(id)byFourSuggestions fourByFourSuggestions:(id)fourByFourSuggestions fourByEightSuggestions:(id)self0 uuid:(id)self1 layoutScore:(double)self2 isValidForSuggestionsWidget:(BOOL)self3 confidenceWarrantsSnappingOrNPlusOne:(BOOL)self4 isNPlusOne:(BOOL)self5 isLowConfidenceStackRotationForStaleStack:(BOOL)self6 widgetUniqueId:(id)self7 uuidOfHighestConfidenceSuggestion:(id)self8 numWidgetsInStack:(unint64_t)self9
{
  suggestionsCopy = suggestions;
  twoSuggestionsCopy = twoSuggestions;
  byTwoSuggestionsCopy = byTwoSuggestions;
  fourSuggestionsCopy = fourSuggestions;
  byFourSuggestionsCopy = byFourSuggestions;
  v28 = twoSuggestionsCopy;
  fourByFourSuggestionsCopy = fourByFourSuggestions;
  eightSuggestionsCopy = eightSuggestions;
  uuidCopy = uuid;
  idCopy = id;
  suggestionCopy = suggestion;
  v54.receiver = self;
  v54.super_class = ATXSuggestionLayout;
  v33 = [(ATXSuggestionLayout *)&v54 init];
  v34 = v33;
  if (v33)
  {
    v33->_layoutType = type;
    v35 = [suggestionsCopy copy];
    oneByOneSuggestions = v34->_oneByOneSuggestions;
    v34->_oneByOneSuggestions = v35;

    v37 = [v28 copy];
    oneByTwoSuggestions = v34->_oneByTwoSuggestions;
    v34->_oneByTwoSuggestions = v37;

    v39 = [byTwoSuggestionsCopy copy];
    twoByTwoSuggestions = v34->_twoByTwoSuggestions;
    v34->_twoByTwoSuggestions = v39;

    v41 = [fourSuggestionsCopy copy];
    oneByFourSuggestions = v34->_oneByFourSuggestions;
    v34->_oneByFourSuggestions = v41;

    v43 = [byFourSuggestionsCopy copy];
    twoByFourSuggestions = v34->_twoByFourSuggestions;
    v34->_twoByFourSuggestions = v43;

    v45 = [fourByFourSuggestionsCopy copy];
    fourByFourSuggestions = v34->_fourByFourSuggestions;
    v34->_fourByFourSuggestions = v45;

    v47 = [eightSuggestionsCopy copy];
    fourByEightSuggestions = v34->_fourByEightSuggestions;
    v34->_fourByEightSuggestions = v47;

    objc_storeStrong(&v34->_uuid, uuid);
    v34->_layoutScore = score;
    v34->_isValidForSuggestionsWidget = widget;
    v34->_confidenceWarrantsSnappingOrNPlusOne = one;
    v34->_isNPlusOne = plusOne;
    v34->_isLowConfidenceStackRotationForStaleStack = stack;
    objc_storeStrong(&v34->_widgetUniqueId, id);
    objc_storeStrong(&v34->_uuidOfHighestConfidenceSuggestion, suggestion);
    v34->_numWidgetsInStack = inStack;
  }

  return v34;
}

- (id)compactDescription
{
  v3 = objc_opt_class();
  layoutType = [(ATXSuggestionLayout *)self layoutType];

  return [v3 stringFromUILayoutType:layoutType];
}

- (NSString)description
{
  v3 = objc_opt_new();
  uuid = self->_uuid;
  v5 = [ATXSuggestionLayout stringFromUILayoutType:self->_layoutType];
  [(ATXSuggestionLayout *)self layoutScore];
  [v3 appendFormat:@"UUID: %@, Layout type: %@, Score:%.2f\n", uuid, v5, v6];

  if (self->_oneByOneSuggestions)
  {
    [v3 appendFormat:@"[1 x 1] : %@\n", self->_oneByOneSuggestions];
  }

  if (self->_oneByTwoSuggestions)
  {
    [v3 appendFormat:@"[1 x 2] : %@\n", self->_oneByTwoSuggestions];
  }

  if (self->_twoByTwoSuggestions)
  {
    [v3 appendFormat:@"[2 x 2] : %@\n", self->_twoByTwoSuggestions];
  }

  if (self->_oneByFourSuggestions)
  {
    [v3 appendFormat:@"[1 x 4] : %@\n", self->_oneByFourSuggestions];
  }

  if (self->_twoByFourSuggestions)
  {
    [v3 appendFormat:@"[2 x 4] : %@\n", self->_twoByFourSuggestions];
  }

  if (self->_fourByFourSuggestions)
  {
    [v3 appendFormat:@"[4 x 4] : %@\n", self->_fourByFourSuggestions];
  }

  if (self->_fourByEightSuggestions)
  {
    [v3 appendFormat:@"[4 x 8] : %@\n", self->_fourByEightSuggestions];
  }

  return v3;
}

- (id)suggestionWithUUID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    [(ATXSuggestionLayout *)self allSuggestionsInLayout];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v17 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          uuid = [v9 uuid];
          v11 = [dCopy isEqual:uuid];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)minSuggestionListInLayout
{
  v3 = objc_opt_new();
  v4 = [ATXSuggestionLayout minSuggestionLayoutTypesForUILayoutType:self->_layoutType];
  v5 = [v4 objectForKeyedSubscript:&unk_1F5A40FC0];
  intValue = [v5 intValue];

  if (intValue >= 1)
  {
    v7 = [v4 objectForKeyedSubscript:&unk_1F5A40FC0];
    unsignedIntegerValue = [v7 unsignedIntegerValue];

    v9 = [(NSArray *)self->_oneByOneSuggestions subarrayWithRange:0, unsignedIntegerValue];
    [v3 addObjectsFromArray:v9];
  }

  v10 = [v4 objectForKeyedSubscript:&unk_1F5A40FD8];
  intValue2 = [v10 intValue];

  if (intValue2 >= 1)
  {
    v12 = [v4 objectForKeyedSubscript:&unk_1F5A40FD8];
    unsignedIntegerValue2 = [v12 unsignedIntegerValue];

    v14 = [(NSArray *)self->_oneByTwoSuggestions subarrayWithRange:0, unsignedIntegerValue2];
    [v3 addObjectsFromArray:v14];
  }

  v15 = [v4 objectForKeyedSubscript:&unk_1F5A40FF0];
  intValue3 = [v15 intValue];

  if (intValue3 >= 1)
  {
    v17 = [v4 objectForKeyedSubscript:&unk_1F5A40FF0];
    unsignedIntegerValue3 = [v17 unsignedIntegerValue];

    v19 = [(NSArray *)self->_twoByTwoSuggestions subarrayWithRange:0, unsignedIntegerValue3];
    [v3 addObjectsFromArray:v19];
  }

  v20 = [v4 objectForKeyedSubscript:&unk_1F5A41008];
  intValue4 = [v20 intValue];

  if (intValue4 >= 1)
  {
    v22 = [v4 objectForKeyedSubscript:&unk_1F5A41008];
    unsignedIntegerValue4 = [v22 unsignedIntegerValue];

    v24 = [(NSArray *)self->_twoByFourSuggestions subarrayWithRange:0, unsignedIntegerValue4];
    [v3 addObjectsFromArray:v24];
  }

  v25 = [v4 objectForKeyedSubscript:&unk_1F5A41020];
  intValue5 = [v25 intValue];

  if (intValue5 >= 1)
  {
    v27 = [v4 objectForKeyedSubscript:&unk_1F5A41020];
    unsignedIntegerValue5 = [v27 unsignedIntegerValue];

    v29 = [(NSArray *)self->_oneByFourSuggestions subarrayWithRange:0, unsignedIntegerValue5];
    [v3 addObjectsFromArray:v29];
  }

  v30 = [v4 objectForKeyedSubscript:&unk_1F5A41038];
  intValue6 = [v30 intValue];

  if (intValue6 >= 1)
  {
    v32 = [v4 objectForKeyedSubscript:&unk_1F5A41038];
    unsignedIntegerValue6 = [v32 unsignedIntegerValue];

    v34 = [(NSArray *)self->_fourByFourSuggestions subarrayWithRange:0, unsignedIntegerValue6];
    [v3 addObjectsFromArray:v34];
  }

  v35 = [v4 objectForKeyedSubscript:&unk_1F5A41050];
  intValue7 = [v35 intValue];

  if (intValue7 >= 1)
  {
    v37 = [v4 objectForKeyedSubscript:&unk_1F5A41050];
    unsignedIntegerValue7 = [v37 unsignedIntegerValue];

    v39 = [(NSArray *)self->_fourByEightSuggestions subarrayWithRange:0, unsignedIntegerValue7];
    [v3 addObjectsFromArray:v39];
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      layoutType = [(ATXSuggestionLayout *)v5 layoutType];
      if (layoutType == [(ATXSuggestionLayout *)self layoutType])
      {
        v7 = self->_oneByOneSuggestions;
        v8 = v7;
        if (v7 == v5->_oneByOneSuggestions)
        {
        }

        else
        {
          v9 = [(NSArray *)v7 isEqual:?];

          if ((v9 & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        v11 = self->_oneByTwoSuggestions;
        v12 = v11;
        if (v11 == v5->_oneByTwoSuggestions)
        {
        }

        else
        {
          v13 = [(NSArray *)v11 isEqual:?];

          if ((v13 & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        v14 = self->_twoByTwoSuggestions;
        v15 = v14;
        if (v14 == v5->_twoByTwoSuggestions)
        {
        }

        else
        {
          v16 = [(NSArray *)v14 isEqual:?];

          if ((v16 & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        v17 = self->_oneByFourSuggestions;
        v18 = v17;
        if (v17 == v5->_oneByFourSuggestions)
        {
        }

        else
        {
          v19 = [(NSArray *)v17 isEqual:?];

          if ((v19 & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        v20 = self->_twoByFourSuggestions;
        v21 = v20;
        if (v20 == v5->_twoByFourSuggestions)
        {
        }

        else
        {
          v22 = [(NSArray *)v20 isEqual:?];

          if ((v22 & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        v23 = self->_fourByFourSuggestions;
        v24 = v23;
        if (v23 == v5->_fourByFourSuggestions)
        {
        }

        else
        {
          v25 = [(NSArray *)v23 isEqual:?];

          if ((v25 & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        v26 = self->_fourByEightSuggestions;
        v27 = v26;
        if (v26 == v5->_fourByEightSuggestions)
        {
        }

        else
        {
          v28 = [(NSArray *)v26 isEqual:?];

          if ((v28 & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        v29 = self->_uuid;
        v30 = v29;
        if (v29 == v5->_uuid)
        {
        }

        else
        {
          v31 = [(NSUUID *)v29 isEqual:?];

          if ((v31 & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        layoutScore = self->_layoutScore;
        [(ATXSuggestionLayout *)v5 layoutScore];
        if (layoutScore != v33)
        {
          goto LABEL_48;
        }

        isValidForSuggestionsWidget = self->_isValidForSuggestionsWidget;
        if (isValidForSuggestionsWidget != [(ATXSuggestionLayout *)v5 isValidForSuggestionsWidget])
        {
          goto LABEL_48;
        }

        confidenceWarrantsSnappingOrNPlusOne = self->_confidenceWarrantsSnappingOrNPlusOne;
        if (confidenceWarrantsSnappingOrNPlusOne != [(ATXSuggestionLayout *)v5 confidenceWarrantsSnappingOrNPlusOne])
        {
          goto LABEL_48;
        }

        isNPlusOne = self->_isNPlusOne;
        if (isNPlusOne != [(ATXSuggestionLayout *)v5 isNPlusOne])
        {
          goto LABEL_48;
        }

        v37 = self->_widgetUniqueId;
        v38 = v37;
        if (v37 == v5->_widgetUniqueId)
        {
        }

        else
        {
          v39 = [(NSString *)v37 isEqual:?];

          if ((v39 & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        v40 = self->_uuidOfHighestConfidenceSuggestion;
        v41 = v40;
        if (v40 == v5->_uuidOfHighestConfidenceSuggestion)
        {
        }

        else
        {
          v42 = [(NSUUID *)v40 isEqual:?];

          if ((v42 & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        numWidgetsInStack = self->_numWidgetsInStack;
        v10 = numWidgetsInStack == [(ATXSuggestionLayout *)v5 numWidgetsInStack];
        goto LABEL_49;
      }

LABEL_48:
      v10 = 0;
LABEL_49:

      goto LABEL_50;
    }

    v10 = 0;
  }

LABEL_50:

  return v10;
}

+ (id)minSuggestionLayoutTypesForUILayoutType:(int64_t)type
{
  v43[7] = *MEMORY[0x1E69E9840];
  switch(type)
  {
    case 0:
      v42[0] = &unk_1F5A40FC0;
      v42[1] = &unk_1F5A40FD8;
      v43[0] = &unk_1F5A41068;
      v43[1] = &unk_1F5A41080;
      v42[2] = &unk_1F5A41020;
      v42[3] = &unk_1F5A40FF0;
      v43[2] = &unk_1F5A41080;
      v43[3] = &unk_1F5A41080;
      v42[4] = &unk_1F5A41008;
      v42[5] = &unk_1F5A41038;
      v43[4] = &unk_1F5A41080;
      v43[5] = &unk_1F5A41080;
      v42[6] = &unk_1F5A41050;
      v43[6] = &unk_1F5A41080;
      v3 = MEMORY[0x1E695DF20];
      v4 = v43;
      v5 = v42;
      goto LABEL_20;
    case 1:
      v40[0] = &unk_1F5A40FC0;
      v40[1] = &unk_1F5A40FD8;
      v41[0] = &unk_1F5A41098;
      v41[1] = &unk_1F5A410B0;
      v40[2] = &unk_1F5A41020;
      v40[3] = &unk_1F5A40FF0;
      v41[2] = &unk_1F5A41080;
      v41[3] = &unk_1F5A41080;
      v40[4] = &unk_1F5A41008;
      v40[5] = &unk_1F5A41038;
      v41[4] = &unk_1F5A41080;
      v41[5] = &unk_1F5A41080;
      v40[6] = &unk_1F5A41050;
      v41[6] = &unk_1F5A41080;
      v3 = MEMORY[0x1E695DF20];
      v4 = v41;
      v5 = v40;
      goto LABEL_20;
    case 2:
      v38[0] = &unk_1F5A40FC0;
      v38[1] = &unk_1F5A40FD8;
      v39[0] = &unk_1F5A41098;
      v39[1] = &unk_1F5A41080;
      v38[2] = &unk_1F5A41020;
      v38[3] = &unk_1F5A40FF0;
      v39[2] = &unk_1F5A41080;
      v39[3] = &unk_1F5A410C8;
      v38[4] = &unk_1F5A41008;
      v38[5] = &unk_1F5A41038;
      v39[4] = &unk_1F5A41080;
      v39[5] = &unk_1F5A41080;
      v38[6] = &unk_1F5A41050;
      v39[6] = &unk_1F5A41080;
      v3 = MEMORY[0x1E695DF20];
      v4 = v39;
      v5 = v38;
      goto LABEL_20;
    case 3:
      v36[0] = &unk_1F5A40FC0;
      v36[1] = &unk_1F5A40FD8;
      v37[0] = &unk_1F5A41080;
      v37[1] = &unk_1F5A41080;
      v36[2] = &unk_1F5A41020;
      v36[3] = &unk_1F5A40FF0;
      v37[2] = &unk_1F5A41080;
      v37[3] = &unk_1F5A41080;
      v36[4] = &unk_1F5A41008;
      v36[5] = &unk_1F5A41038;
      v37[4] = &unk_1F5A410C8;
      v37[5] = &unk_1F5A41080;
      v36[6] = &unk_1F5A41050;
      v37[6] = &unk_1F5A41080;
      v3 = MEMORY[0x1E695DF20];
      v4 = v37;
      v5 = v36;
      goto LABEL_20;
    case 4:
      v34[0] = &unk_1F5A40FC0;
      v34[1] = &unk_1F5A40FD8;
      v35[0] = &unk_1F5A41080;
      v35[1] = &unk_1F5A410B0;
      v34[2] = &unk_1F5A41020;
      v34[3] = &unk_1F5A40FF0;
      v35[2] = &unk_1F5A41080;
      v35[3] = &unk_1F5A41080;
      v34[4] = &unk_1F5A41008;
      v34[5] = &unk_1F5A41038;
      v35[4] = &unk_1F5A41080;
      v35[5] = &unk_1F5A41080;
      v34[6] = &unk_1F5A41050;
      v35[6] = &unk_1F5A41080;
      v3 = MEMORY[0x1E695DF20];
      v4 = v35;
      v5 = v34;
      goto LABEL_20;
    case 5:
      v32[0] = &unk_1F5A40FC0;
      v32[1] = &unk_1F5A40FD8;
      v33[0] = &unk_1F5A41080;
      v33[1] = &unk_1F5A41080;
      v32[2] = &unk_1F5A41020;
      v32[3] = &unk_1F5A40FF0;
      v33[2] = &unk_1F5A41080;
      v33[3] = &unk_1F5A410C8;
      v32[4] = &unk_1F5A41008;
      v32[5] = &unk_1F5A41038;
      v33[4] = &unk_1F5A41080;
      v33[5] = &unk_1F5A41080;
      v32[6] = &unk_1F5A41050;
      v33[6] = &unk_1F5A41080;
      v3 = MEMORY[0x1E695DF20];
      v4 = v33;
      v5 = v32;
      goto LABEL_20;
    case 6:
      v30[0] = &unk_1F5A40FC0;
      v30[1] = &unk_1F5A40FD8;
      v31[0] = &unk_1F5A41080;
      v31[1] = &unk_1F5A41080;
      v30[2] = &unk_1F5A41020;
      v30[3] = &unk_1F5A40FF0;
      v31[2] = &unk_1F5A41080;
      v31[3] = &unk_1F5A410B0;
      v30[4] = &unk_1F5A41008;
      v30[5] = &unk_1F5A41038;
      v31[4] = &unk_1F5A41080;
      v31[5] = &unk_1F5A41080;
      v30[6] = &unk_1F5A41050;
      v31[6] = &unk_1F5A41080;
      v3 = MEMORY[0x1E695DF20];
      v4 = v31;
      v5 = v30;
      goto LABEL_20;
    case 7:
      v28[0] = &unk_1F5A40FC0;
      v28[1] = &unk_1F5A40FD8;
      v29[0] = &unk_1F5A41080;
      v29[1] = &unk_1F5A41098;
      v28[2] = &unk_1F5A41020;
      v28[3] = &unk_1F5A40FF0;
      v29[2] = &unk_1F5A41080;
      v29[3] = &unk_1F5A41080;
      v28[4] = &unk_1F5A41008;
      v28[5] = &unk_1F5A41038;
      v29[4] = &unk_1F5A41080;
      v29[5] = &unk_1F5A41080;
      v28[6] = &unk_1F5A41050;
      v29[6] = &unk_1F5A41080;
      v3 = MEMORY[0x1E695DF20];
      v4 = v29;
      v5 = v28;
      goto LABEL_20;
    case 8:
      v26[0] = &unk_1F5A40FC0;
      v26[1] = &unk_1F5A40FD8;
      v27[0] = &unk_1F5A41080;
      v27[1] = &unk_1F5A41080;
      v26[2] = &unk_1F5A41020;
      v26[3] = &unk_1F5A40FF0;
      v27[2] = &unk_1F5A410C8;
      v27[3] = &unk_1F5A41080;
      v26[4] = &unk_1F5A41008;
      v26[5] = &unk_1F5A41038;
      v27[4] = &unk_1F5A41080;
      v27[5] = &unk_1F5A41080;
      v26[6] = &unk_1F5A41050;
      v27[6] = &unk_1F5A41080;
      v3 = MEMORY[0x1E695DF20];
      v4 = v27;
      v5 = v26;
      goto LABEL_20;
    case 9:
      v24[0] = &unk_1F5A40FC0;
      v24[1] = &unk_1F5A40FD8;
      v25[0] = &unk_1F5A41080;
      v25[1] = &unk_1F5A41080;
      v24[2] = &unk_1F5A41020;
      v24[3] = &unk_1F5A40FF0;
      v25[2] = &unk_1F5A410B0;
      v25[3] = &unk_1F5A41080;
      v24[4] = &unk_1F5A41008;
      v24[5] = &unk_1F5A41038;
      v25[4] = &unk_1F5A41080;
      v25[5] = &unk_1F5A41080;
      v24[6] = &unk_1F5A41050;
      v25[6] = &unk_1F5A41080;
      v3 = MEMORY[0x1E695DF20];
      v4 = v25;
      v5 = v24;
      goto LABEL_20;
    case 10:
      v22[0] = &unk_1F5A40FC0;
      v22[1] = &unk_1F5A40FD8;
      v23[0] = &unk_1F5A41080;
      v23[1] = &unk_1F5A41080;
      v22[2] = &unk_1F5A41020;
      v22[3] = &unk_1F5A40FF0;
      v23[2] = &unk_1F5A41080;
      v23[3] = &unk_1F5A41080;
      v22[4] = &unk_1F5A41008;
      v22[5] = &unk_1F5A41038;
      v23[4] = &unk_1F5A41080;
      v23[5] = &unk_1F5A410C8;
      v22[6] = &unk_1F5A41050;
      v23[6] = &unk_1F5A41080;
      v3 = MEMORY[0x1E695DF20];
      v4 = v23;
      v5 = v22;
      goto LABEL_20;
    case 11:
      v20[0] = &unk_1F5A40FC0;
      v20[1] = &unk_1F5A40FD8;
      v21[0] = &unk_1F5A41080;
      v21[1] = &unk_1F5A41080;
      v20[2] = &unk_1F5A41020;
      v20[3] = &unk_1F5A40FF0;
      v21[2] = &unk_1F5A41098;
      v21[3] = &unk_1F5A41080;
      v20[4] = &unk_1F5A41008;
      v20[5] = &unk_1F5A41038;
      v21[4] = &unk_1F5A41080;
      v21[5] = &unk_1F5A41080;
      v20[6] = &unk_1F5A41050;
      v21[6] = &unk_1F5A41080;
      v3 = MEMORY[0x1E695DF20];
      v4 = v21;
      v5 = v20;
      goto LABEL_20;
    case 12:
      v16[0] = &unk_1F5A40FC0;
      v16[1] = &unk_1F5A40FD8;
      v17[0] = &unk_1F5A41080;
      v17[1] = &unk_1F5A41080;
      v16[2] = &unk_1F5A41020;
      v16[3] = &unk_1F5A40FF0;
      v17[2] = &unk_1F5A41080;
      v17[3] = &unk_1F5A410C8;
      v16[4] = &unk_1F5A41008;
      v16[5] = &unk_1F5A41038;
      v17[4] = &unk_1F5A41080;
      v17[5] = &unk_1F5A41080;
      v16[6] = &unk_1F5A41050;
      v17[6] = &unk_1F5A41080;
      v3 = MEMORY[0x1E695DF20];
      v4 = v17;
      v5 = v16;
      goto LABEL_20;
    case 13:
      v14[0] = &unk_1F5A40FC0;
      v14[1] = &unk_1F5A40FD8;
      v15[0] = &unk_1F5A41080;
      v15[1] = &unk_1F5A41080;
      v14[2] = &unk_1F5A41020;
      v14[3] = &unk_1F5A40FF0;
      v15[2] = &unk_1F5A41080;
      v15[3] = &unk_1F5A41080;
      v14[4] = &unk_1F5A41008;
      v14[5] = &unk_1F5A41038;
      v15[4] = &unk_1F5A410C8;
      v15[5] = &unk_1F5A41080;
      v14[6] = &unk_1F5A41050;
      v15[6] = &unk_1F5A41080;
      v3 = MEMORY[0x1E695DF20];
      v4 = v15;
      v5 = v14;
      goto LABEL_20;
    case 14:
      v12[0] = &unk_1F5A40FC0;
      v12[1] = &unk_1F5A40FD8;
      v13[0] = &unk_1F5A41080;
      v13[1] = &unk_1F5A41080;
      v12[2] = &unk_1F5A41020;
      v12[3] = &unk_1F5A40FF0;
      v13[2] = &unk_1F5A41080;
      v13[3] = &unk_1F5A410C8;
      v12[4] = &unk_1F5A41008;
      v12[5] = &unk_1F5A41038;
      v13[4] = &unk_1F5A410C8;
      v13[5] = &unk_1F5A41080;
      v12[6] = &unk_1F5A41050;
      v13[6] = &unk_1F5A41080;
      v3 = MEMORY[0x1E695DF20];
      v4 = v13;
      v5 = v12;
      goto LABEL_20;
    case 15:
      v18[0] = &unk_1F5A40FC0;
      v18[1] = &unk_1F5A40FD8;
      v19[0] = &unk_1F5A410C8;
      v19[1] = &unk_1F5A41080;
      v18[2] = &unk_1F5A41020;
      v18[3] = &unk_1F5A40FF0;
      v19[2] = &unk_1F5A41080;
      v19[3] = &unk_1F5A41080;
      v18[4] = &unk_1F5A41008;
      v18[5] = &unk_1F5A41038;
      v19[4] = &unk_1F5A41080;
      v19[5] = &unk_1F5A41080;
      v18[6] = &unk_1F5A41050;
      v19[6] = &unk_1F5A41080;
      v3 = MEMORY[0x1E695DF20];
      v4 = v19;
      v5 = v18;
      goto LABEL_20;
    case 16:
      v10[0] = &unk_1F5A40FC0;
      v10[1] = &unk_1F5A40FD8;
      v11[0] = &unk_1F5A41080;
      v11[1] = &unk_1F5A41080;
      v10[2] = &unk_1F5A41020;
      v10[3] = &unk_1F5A40FF0;
      v11[2] = &unk_1F5A41080;
      v11[3] = &unk_1F5A41080;
      v10[4] = &unk_1F5A41008;
      v10[5] = &unk_1F5A41038;
      v11[4] = &unk_1F5A41080;
      v11[5] = &unk_1F5A41080;
      v10[6] = &unk_1F5A41050;
      v11[6] = &unk_1F5A410C8;
      v3 = MEMORY[0x1E695DF20];
      v4 = v11;
      v5 = v10;
      goto LABEL_20;
    case 17:
      v8[0] = &unk_1F5A40FC0;
      v8[1] = &unk_1F5A40FD8;
      v9[0] = &unk_1F5A41080;
      v9[1] = &unk_1F5A41080;
      v8[2] = &unk_1F5A41020;
      v8[3] = &unk_1F5A40FF0;
      v9[2] = &unk_1F5A41080;
      v9[3] = &unk_1F5A41080;
      v8[4] = &unk_1F5A41008;
      v8[5] = &unk_1F5A41038;
      v9[4] = &unk_1F5A41080;
      v9[5] = &unk_1F5A41080;
      v8[6] = &unk_1F5A41050;
      v9[6] = &unk_1F5A41080;
      v3 = MEMORY[0x1E695DF20];
      v4 = v9;
      v5 = v8;
LABEL_20:
      self = [v3 dictionaryWithObjects:v4 forKeys:v5 count:7];
      break;
    default:
      break;
  }

  v6 = *MEMORY[0x1E69E9840];

  return self;
}

+ (id)maxSuggestionLayoutTypesForUILayoutType:(int64_t)type
{
  v23[5] = *MEMORY[0x1E69E9840];
  if (type <= 12)
  {
    if (type)
    {
      if (type != 8)
      {
        if (type == 12)
        {
          v16[0] = &unk_1F5A40FC0;
          v16[1] = &unk_1F5A40FD8;
          v17[0] = &unk_1F5A41110;
          v17[1] = &unk_1F5A41080;
          v16[2] = &unk_1F5A41020;
          v16[3] = &unk_1F5A40FF0;
          v17[2] = &unk_1F5A41080;
          v17[3] = &unk_1F5A410B0;
          v16[4] = &unk_1F5A41008;
          v16[5] = &unk_1F5A41038;
          v17[4] = &unk_1F5A41080;
          v17[5] = &unk_1F5A41080;
          v3 = MEMORY[0x1E695DF20];
          v4 = v17;
          v5 = v16;
LABEL_15:
          v6 = 6;
          goto LABEL_19;
        }

LABEL_13:
        v7 = [self minSuggestionLayoutTypesForUILayoutType:?];
        goto LABEL_20;
      }

      v22[0] = &unk_1F5A40FC0;
      v22[1] = &unk_1F5A40FD8;
      v23[0] = &unk_1F5A41080;
      v23[1] = &unk_1F5A41080;
      v22[2] = &unk_1F5A41020;
      v22[3] = &unk_1F5A40FF0;
      v23[2] = &unk_1F5A410E0;
      v23[3] = &unk_1F5A41080;
      v22[4] = &unk_1F5A41008;
      v23[4] = &unk_1F5A41080;
      v3 = MEMORY[0x1E695DF20];
      v4 = v23;
      v5 = v22;
    }

    else
    {
      v20[0] = &unk_1F5A40FC0;
      v20[1] = &unk_1F5A40FD8;
      v21[0] = &unk_1F5A410F8;
      v21[1] = &unk_1F5A41080;
      v20[2] = &unk_1F5A41020;
      v20[3] = &unk_1F5A40FF0;
      v21[2] = &unk_1F5A41080;
      v21[3] = &unk_1F5A41080;
      v20[4] = &unk_1F5A41008;
      v21[4] = &unk_1F5A41080;
      v3 = MEMORY[0x1E695DF20];
      v4 = v21;
      v5 = v20;
    }

LABEL_18:
    v6 = 5;
    goto LABEL_19;
  }

  if (type <= 14)
  {
    if (type == 13)
    {
      v14[0] = &unk_1F5A40FC0;
      v14[1] = &unk_1F5A40FD8;
      v15[0] = &unk_1F5A41110;
      v15[1] = &unk_1F5A41080;
      v14[2] = &unk_1F5A41020;
      v14[3] = &unk_1F5A40FF0;
      v15[2] = &unk_1F5A41080;
      v15[3] = &unk_1F5A41080;
      v14[4] = &unk_1F5A41008;
      v14[5] = &unk_1F5A41038;
      v15[4] = &unk_1F5A410C8;
      v15[5] = &unk_1F5A41080;
      v3 = MEMORY[0x1E695DF20];
      v4 = v15;
      v5 = v14;
    }

    else
    {
      v12[0] = &unk_1F5A40FC0;
      v12[1] = &unk_1F5A40FD8;
      v13[0] = &unk_1F5A41110;
      v13[1] = &unk_1F5A41080;
      v12[2] = &unk_1F5A41020;
      v12[3] = &unk_1F5A40FF0;
      v13[2] = &unk_1F5A41080;
      v13[3] = &unk_1F5A410B0;
      v12[4] = &unk_1F5A41008;
      v12[5] = &unk_1F5A41038;
      v13[4] = &unk_1F5A410C8;
      v13[5] = &unk_1F5A41080;
      v3 = MEMORY[0x1E695DF20];
      v4 = v13;
      v5 = v12;
    }

    goto LABEL_15;
  }

  if (type == 15)
  {
    v18[0] = &unk_1F5A40FC0;
    v18[1] = &unk_1F5A40FD8;
    v19[0] = &unk_1F5A410E0;
    v19[1] = &unk_1F5A41080;
    v18[2] = &unk_1F5A41020;
    v18[3] = &unk_1F5A40FF0;
    v19[2] = &unk_1F5A41080;
    v19[3] = &unk_1F5A41080;
    v18[4] = &unk_1F5A41008;
    v19[4] = &unk_1F5A41080;
    v3 = MEMORY[0x1E695DF20];
    v4 = v19;
    v5 = v18;
    goto LABEL_18;
  }

  if (type != 17)
  {
    goto LABEL_13;
  }

  v10[0] = &unk_1F5A40FC0;
  v10[1] = &unk_1F5A40FD8;
  v11[0] = &unk_1F5A410F8;
  v11[1] = &unk_1F5A410F8;
  v10[2] = &unk_1F5A41020;
  v10[3] = &unk_1F5A40FF0;
  v11[2] = &unk_1F5A410F8;
  v11[3] = &unk_1F5A410F8;
  v10[4] = &unk_1F5A41008;
  v10[5] = &unk_1F5A41038;
  v11[4] = &unk_1F5A410F8;
  v11[5] = &unk_1F5A410F8;
  v10[6] = &unk_1F5A41050;
  v11[6] = &unk_1F5A410F8;
  v3 = MEMORY[0x1E695DF20];
  v4 = v11;
  v5 = v10;
  v6 = 7;
LABEL_19:
  v7 = [v3 dictionaryWithObjects:v4 forKeys:v5 count:v6];
LABEL_20:
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)stringFromUILayoutType:(int64_t)type
{
  if ((type - 1) > 0x10)
  {
    return @"ATXUILayoutTypeEight1x1";
  }

  else
  {
    return off_1E86A4070[type - 1];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ATXSuggestionLayout allocWithZone:zone];
  uuidOfHighestConfidenceSuggestion = self->_uuidOfHighestConfidenceSuggestion;
  LODWORD(v7) = *&self->_isValidForSuggestionsWidget;
  return [ATXSuggestionLayout initWithLayoutType:v4 oneByOneSuggestions:"initWithLayoutType:oneByOneSuggestions:oneByTwoSuggestions:twoByTwoSuggestions:oneByFourSuggestions:twoByFourSuggestions:fourByFourSuggestions:fourByEightSuggestions:uuid:layoutScore:isValidForSuggestionsWidget:confidenceWarrantsSnappingOrNPlusOne:isNPlusOne:isLowConfidenceStackRotationForStaleStack:widgetUniqueId:uuidOfHighestConfidenceSuggestion:numWidgetsInStack:" oneByTwoSuggestions:self->_layoutType twoByTwoSuggestions:self->_oneByOneSuggestions oneByFourSuggestions:self->_oneByTwoSuggestions twoByFourSuggestions:self->_twoByTwoSuggestions fourByFourSuggestions:self->_oneByFourSuggestions fourByEightSuggestions:self->_twoByFourSuggestions uuid:self->_layoutScore layoutScore:self->_fourByFourSuggestions isValidForSuggestionsWidget:self->_fourByEightSuggestions confidenceWarrantsSnappingOrNPlusOne:self->_uuid isNPlusOne:v7 isLowConfidenceStackRotationForStaleStack:self->_widgetUniqueId widgetUniqueId:uuidOfHighestConfidenceSuggestion uuidOfHighestConfidenceSuggestion:self->_numWidgetsInStack numWidgetsInStack:?];
}

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v23[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!forid)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v22 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", keyCopy, v22];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)integer key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v23[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!integer)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v22 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", keyCopy, v22];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)checkAndReportDecodingFailureIfNeededFordouble:(double)fordouble key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v23[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (fordouble == 0.0)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v22 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", keyCopy, v22];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForBOOL:(BOOL)l key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v23[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!l)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v22 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", keyCopy, v22];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXSuggestionLayout *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXSuggestionLayout)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXSuggestionLayout *)self initWithProtoData:v5];
  return v6;
}

- (ATXSuggestionLayout)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBSuggestionLayout alloc] initWithData:dataCopy];

    self = [(ATXSuggestionLayout *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXSuggestionLayout)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_8:
    v9 = 0;
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = __atxlog_handle_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(ATXLightweightClientModelCacheUpdate *)self initWithProto:v8];
    }

    goto LABEL_8;
  }

  v5 = protoCopy;
  if ([(ATXPBSuggestionLayout *)v5 hasUuidOfHighestConfidenceSuggestion])
  {
    v6 = objc_alloc(MEMORY[0x1E696AFB0]);
    uuidOfHighestConfidenceSuggestion = [(ATXPBSuggestionLayout *)v5 uuidOfHighestConfidenceSuggestion];
    v37 = [v6 initWithUUIDString:uuidOfHighestConfidenceSuggestion];
  }

  else
  {
    v37 = 0;
  }

  v31 = [(ATXSuggestionLayout *)self _layoutTypeFromProtoLayoutType:[(ATXPBSuggestionLayout *)v5 layoutType]];
  oneByOneSuggestions = [(ATXPBSuggestionLayout *)v5 oneByOneSuggestions];
  v36 = [ATXProactiveSuggestion suggestionsFromProtoSuggestions:oneByOneSuggestions];
  oneByTwoSuggestions = [(ATXPBSuggestionLayout *)v5 oneByTwoSuggestions];
  v29 = [ATXProactiveSuggestion suggestionsFromProtoSuggestions:oneByTwoSuggestions];
  twoByTwoSuggestions = [(ATXPBSuggestionLayout *)v5 twoByTwoSuggestions];
  v27 = [ATXProactiveSuggestion suggestionsFromProtoSuggestions:twoByTwoSuggestions];
  oneByFourSuggestions = [(ATXPBSuggestionLayout *)v5 oneByFourSuggestions];
  v26 = [ATXProactiveSuggestion suggestionsFromProtoSuggestions:oneByFourSuggestions];
  twoByFourSuggestions = [(ATXPBSuggestionLayout *)v5 twoByFourSuggestions];
  v24 = [ATXProactiveSuggestion suggestionsFromProtoSuggestions:twoByFourSuggestions];
  fourByFourSuggestions = [(ATXPBSuggestionLayout *)v5 fourByFourSuggestions];
  v22 = [ATXProactiveSuggestion suggestionsFromProtoSuggestions:fourByFourSuggestions];
  fourByEightSuggestions = [(ATXPBSuggestionLayout *)v5 fourByEightSuggestions];
  v21 = [ATXProactiveSuggestion suggestionsFromProtoSuggestions:fourByEightSuggestions];
  v10 = objc_alloc(MEMORY[0x1E696AFB0]);
  uuidString = [(ATXPBSuggestionLayout *)v5 uuidString];
  v11 = [v10 initWithUUIDString:uuidString];
  layoutScore = [(ATXPBSuggestionLayout *)v5 layoutScore];
  isValidForSuggestionsWidget = [(ATXPBSuggestionLayout *)v5 isValidForSuggestionsWidget];
  confidenceWarrantsSnappingOrNPlusOne = [(ATXPBSuggestionLayout *)v5 confidenceWarrantsSnappingOrNPlusOne];
  isNPlusOne = [(ATXPBSuggestionLayout *)v5 isNPlusOne];
  isLowConfidenceStackRotationForStaleStack = [(ATXPBSuggestionLayout *)v5 isLowConfidenceStackRotationForStaleStack];
  widgetUniqueId = [(ATXPBSuggestionLayout *)v5 widgetUniqueId];
  BYTE3(v20) = isLowConfidenceStackRotationForStaleStack;
  BYTE2(v20) = isNPlusOne;
  BYTE1(v20) = confidenceWarrantsSnappingOrNPlusOne;
  LOBYTE(v20) = isValidForSuggestionsWidget;
  v18 = [ATXSuggestionLayout initWithLayoutType:"initWithLayoutType:oneByOneSuggestions:oneByTwoSuggestions:twoByTwoSuggestions:oneByFourSuggestions:twoByFourSuggestions:fourByFourSuggestions:fourByEightSuggestions:uuid:layoutScore:isValidForSuggestionsWidget:confidenceWarrantsSnappingOrNPlusOne:isNPlusOne:isLowConfidenceStackRotationForStaleStack:widgetUniqueId:uuidOfHighestConfidenceSuggestion:numWidgetsInStack:" oneByOneSuggestions:v31 oneByTwoSuggestions:v36 twoByTwoSuggestions:v29 oneByFourSuggestions:v27 twoByFourSuggestions:v26 fourByFourSuggestions:v24 fourByEightSuggestions:layoutScore uuid:v22 layoutScore:v21 isValidForSuggestionsWidget:v11 confidenceWarrantsSnappingOrNPlusOne:v20 isNPlusOne:widgetUniqueId isLowConfidenceStackRotationForStaleStack:v37 widgetUniqueId:[(ATXPBSuggestionLayout *)v5 numWidgetsInStack] uuidOfHighestConfidenceSuggestion:? numWidgetsInStack:?];

  self = v18;
  v9 = v18;
LABEL_11:

  return v9;
}

- (int64_t)_layoutTypeFromProtoLayoutType:(int)type
{
  v3 = (type - 1);
  if (v3 < 0x11)
  {
    return v3 + 1;
  }

  else
  {
    return 0;
  }
}

- (int)_protoLayoutTypeFromLayoutType:(int64_t)type
{
  if ((type - 1) < 0x11)
  {
    return type;
  }

  else
  {
    return 0;
  }
}

- (id)arrayOfJSONFromSuggestionArray:(id)array
{
  if (array)
  {
    v4 = [array _pas_mappedArrayWithTransform:&__block_literal_global_3];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (id)jsonRawData
{
  v29[17] = *MEMORY[0x1E69E9840];
  v3 = [(ATXSuggestionLayout *)self suggestionWithUUID:self->_uuidOfHighestConfidenceSuggestion];
  uuid = self->_uuid;
  jsonRawData = @"nil";
  v27 = uuid;
  v28[0] = @"uuid";
  if (uuid)
  {
    uUIDString = [(NSUUID *)uuid UUIDString];
  }

  else
  {
    uUIDString = @"nil";
  }

  v23 = uUIDString;
  v29[0] = uUIDString;
  v28[1] = @"layoutType";
  v26 = [objc_opt_class() stringFromUILayoutType:self->_layoutType];
  v29[1] = v26;
  v28[2] = @"layoutScore";
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_layoutScore];
  if (self->_isValidForSuggestionsWidget)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v25 = v7;
  v29[2] = v7;
  v29[3] = v8;
  v28[3] = @"isValidForSuggestionsWidget";
  v28[4] = @"confidenceWarrantsSnappingOrNPlusOne";
  if (self->_confidenceWarrantsSnappingOrNPlusOne)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if (self->_isNPlusOne)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v29[4] = v9;
  v29[5] = v10;
  v28[5] = @"isNPlusOne";
  v28[6] = @"isLowConfidenceStackRotationForStaleStack";
  if (self->_isLowConfidenceStackRotationForStaleStack)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  widgetUniqueId = self->_widgetUniqueId;
  if (!widgetUniqueId)
  {
    widgetUniqueId = @"nil";
  }

  v29[6] = v11;
  v29[7] = widgetUniqueId;
  v28[7] = @"widgetUniqueId";
  v28[8] = @"[1 x 1]";
  v24 = [(ATXSuggestionLayout *)self arrayOfJSONFromSuggestionArray:self->_oneByOneSuggestions];
  v29[8] = v24;
  v28[9] = @"[1 x 2]";
  v13 = [(ATXSuggestionLayout *)self arrayOfJSONFromSuggestionArray:self->_oneByTwoSuggestions];
  v29[9] = v13;
  v28[10] = @"[2 x 2]";
  v14 = [(ATXSuggestionLayout *)self arrayOfJSONFromSuggestionArray:self->_twoByTwoSuggestions];
  v29[10] = v14;
  v28[11] = @"[1 x 4]";
  v15 = [(ATXSuggestionLayout *)self arrayOfJSONFromSuggestionArray:self->_oneByFourSuggestions];
  v29[11] = v15;
  v28[12] = @"[2 x 4]";
  v16 = [(ATXSuggestionLayout *)self arrayOfJSONFromSuggestionArray:self->_twoByFourSuggestions];
  v29[12] = v16;
  v28[13] = @"[4 x 4]";
  v17 = [(ATXSuggestionLayout *)self arrayOfJSONFromSuggestionArray:self->_fourByFourSuggestions];
  v29[13] = v17;
  v28[14] = @"[4 x 8]";
  v18 = [(ATXSuggestionLayout *)self arrayOfJSONFromSuggestionArray:self->_fourByEightSuggestions];
  v29[14] = v18;
  v28[15] = @"highestConfidenceSuggestion";
  if (v3)
  {
    jsonRawData = [v3 jsonRawData];
  }

  v29[15] = jsonRawData;
  v28[16] = @"numWidgetsInStack";
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_numWidgetsInStack];
  v29[16] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:17];

  if (v3)
  {
  }

  if (v27)
  {
  }

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (BOOL)isShortcutConversion
{
  if (self->_isValidForSuggestionsWidget)
  {
    return 0;
  }

  allSuggestionsInLayout = [(ATXSuggestionLayout *)self allSuggestionsInLayout];
  if ([allSuggestionsInLayout count])
  {
    firstObject = [allSuggestionsInLayout firstObject];
    executableSpecification = [firstObject executableSpecification];
    executableType = [executableSpecification executableType];

    if (executableType == 3)
    {
      clientModelSpecification = [firstObject clientModelSpecification];
      clientModelId = [clientModelSpecification clientModelId];
      v9 = [ATXProactiveSuggestionClientModel clientModelTypeFromClientModelId:clientModelId];

      v2 = [ATXProactiveSuggestionClientModel clientModelTypeIsShortcutConversion:v9];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end