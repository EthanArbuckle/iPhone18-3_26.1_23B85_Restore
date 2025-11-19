@interface ATXPBSuggestionLayout
+ (uint64_t)oneByOneSuggestionsType;
- (BOOL)hasUuidOfHighestConfidenceSuggestion;
- (BOOL)hasUuidString;
- (BOOL)hasWidgetUniqueId;
- (BOOL)isEqual:(id)a3;
- (__CFString)layoutTypeAsString:(__CFString *)a1;
- (double)layoutScore;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)fourByEightSuggestionsAtIndex:(void *)a1;
- (id)fourByFourSuggestionsAtIndex:(void *)a1;
- (id)oneByFourSuggestionsAtIndex:(void *)a1;
- (id)oneByOneSuggestionsAtIndex:(void *)a1;
- (id)oneByTwoSuggestionsAtIndex:(void *)a1;
- (id)twoByFourSuggestionsAtIndex:(void *)a1;
- (id)twoByTwoSuggestionsAtIndex:(void *)a1;
- (uint64_t)StringAsLayoutType:(uint64_t)a1;
- (uint64_t)addFourByEightSuggestions:(uint64_t)a1;
- (uint64_t)addFourByFourSuggestions:(uint64_t)a1;
- (uint64_t)addOneByFourSuggestions:(uint64_t)a1;
- (uint64_t)addOneByOneSuggestions:(uint64_t)a1;
- (uint64_t)addOneByTwoSuggestions:(uint64_t)a1;
- (uint64_t)addTwoByFourSuggestions:(uint64_t)a1;
- (uint64_t)addTwoByTwoSuggestions:(uint64_t)a1;
- (uint64_t)clearFourByEightSuggestions;
- (uint64_t)clearFourByFourSuggestions;
- (uint64_t)clearOneByFourSuggestions;
- (uint64_t)clearOneByOneSuggestions;
- (uint64_t)clearOneByTwoSuggestions;
- (uint64_t)clearTwoByFourSuggestions;
- (uint64_t)clearTwoByTwoSuggestions;
- (uint64_t)confidenceWarrantsSnappingOrNPlusOne;
- (uint64_t)fourByEightSuggestions;
- (uint64_t)fourByEightSuggestionsCount;
- (uint64_t)fourByFourSuggestions;
- (uint64_t)fourByFourSuggestionsCount;
- (uint64_t)hasConfidenceWarrantsSnappingOrNPlusOne;
- (uint64_t)hasIsLowConfidenceStackRotationForStaleStack;
- (uint64_t)hasIsNPlusOne;
- (uint64_t)hasIsValidForSuggestionsWidget;
- (uint64_t)hasLayoutScore;
- (uint64_t)hasLayoutType;
- (uint64_t)hasNumWidgetsInStack;
- (uint64_t)isLowConfidenceStackRotationForStaleStack;
- (uint64_t)isNPlusOne;
- (uint64_t)isValidForSuggestionsWidget;
- (uint64_t)layoutType;
- (uint64_t)numWidgetsInStack;
- (uint64_t)oneByFourSuggestions;
- (uint64_t)oneByFourSuggestionsCount;
- (uint64_t)oneByOneSuggestions;
- (uint64_t)oneByOneSuggestionsCount;
- (uint64_t)oneByTwoSuggestions;
- (uint64_t)oneByTwoSuggestionsCount;
- (uint64_t)setConfidenceWarrantsSnappingOrNPlusOne:(uint64_t)result;
- (uint64_t)setHasConfidenceWarrantsSnappingOrNPlusOne:(uint64_t)result;
- (uint64_t)setHasIsLowConfidenceStackRotationForStaleStack:(uint64_t)result;
- (uint64_t)setHasIsNPlusOne:(uint64_t)result;
- (uint64_t)setHasIsValidForSuggestionsWidget:(uint64_t)result;
- (uint64_t)setHasLayoutScore:(uint64_t)result;
- (uint64_t)setHasLayoutType:(uint64_t)result;
- (uint64_t)setHasNumWidgetsInStack:(uint64_t)result;
- (uint64_t)setIsLowConfidenceStackRotationForStaleStack:(uint64_t)result;
- (uint64_t)setIsNPlusOne:(uint64_t)result;
- (uint64_t)setIsValidForSuggestionsWidget:(uint64_t)result;
- (uint64_t)setLayoutScore:(uint64_t)result;
- (uint64_t)setLayoutType:(uint64_t)result;
- (uint64_t)setNumWidgetsInStack:(uint64_t)result;
- (uint64_t)twoByFourSuggestions;
- (uint64_t)twoByFourSuggestionsCount;
- (uint64_t)twoByTwoSuggestions;
- (uint64_t)twoByTwoSuggestionsCount;
- (uint64_t)uuidOfHighestConfidenceSuggestion;
- (uint64_t)uuidString;
- (uint64_t)widgetUniqueId;
- (unint64_t)hash;
- (void)copyTo:(uint64_t)a1;
- (void)mergeFrom:(uint64_t)a1;
- (void)setFourByEightSuggestions:(uint64_t)a1;
- (void)setFourByFourSuggestions:(uint64_t)a1;
- (void)setOneByFourSuggestions:(uint64_t)a1;
- (void)setOneByOneSuggestions:(uint64_t)a1;
- (void)setOneByTwoSuggestions:(uint64_t)a1;
- (void)setTwoByFourSuggestions:(uint64_t)a1;
- (void)setTwoByTwoSuggestions:(uint64_t)a1;
- (void)setUuidOfHighestConfidenceSuggestion:(uint64_t)a1;
- (void)setUuidString:(uint64_t)a1;
- (void)setWidgetUniqueId:(uint64_t)a1;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBSuggestionLayout

- (uint64_t)layoutType
{
  if (result)
  {
    if ((*(result + 116) & 4) != 0)
    {
      return *(result + 40);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)hasUuidOfHighestConfidenceSuggestion
{
  if (result)
  {
    return *(result + 88) != 0;
  }

  return result;
}

- (uint64_t)oneByOneSuggestions
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

- (uint64_t)uuidOfHighestConfidenceSuggestion
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

- (uint64_t)oneByTwoSuggestions
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

- (uint64_t)twoByTwoSuggestions
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

- (uint64_t)oneByFourSuggestions
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

- (uint64_t)twoByFourSuggestions
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

- (uint64_t)fourByFourSuggestions
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (uint64_t)fourByEightSuggestions
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (uint64_t)uuidString
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

- (uint64_t)isValidForSuggestionsWidget
{
  if (a1)
  {
    return OUTLINED_FUNCTION_5(*(a1 + 115));
  }

  else
  {
    return OUTLINED_FUNCTION_5(0);
  }
}

- (uint64_t)isLowConfidenceStackRotationForStaleStack
{
  if (a1)
  {
    return OUTLINED_FUNCTION_5(*(a1 + 113));
  }

  else
  {
    return OUTLINED_FUNCTION_5(0);
  }
}

- (uint64_t)isNPlusOne
{
  if (a1)
  {
    return OUTLINED_FUNCTION_5(*(a1 + 114));
  }

  else
  {
    return OUTLINED_FUNCTION_5(0);
  }
}

- (uint64_t)confidenceWarrantsSnappingOrNPlusOne
{
  if (a1)
  {
    return OUTLINED_FUNCTION_5(*(a1 + 112));
  }

  else
  {
    return OUTLINED_FUNCTION_5(0);
  }
}

- (double)layoutScore
{
  if (a1)
  {
    return *(a1 + 8);
  }

  else
  {
    return 0.0;
  }
}

- (uint64_t)widgetUniqueId
{
  if (result)
  {
    return *(result + 104);
  }

  return result;
}

- (uint64_t)numWidgetsInStack
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

+ (uint64_t)oneByOneSuggestionsType
{
  objc_opt_self();

  return objc_opt_class();
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBSuggestionLayout;
  v4 = [(ATXPBSuggestionLayout *)&v8 description];
  v5 = [(ATXPBSuggestionLayout *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v103 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    layoutType = self->_layoutType;
    if (layoutType >= 0x12)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_layoutType];
    }

    else
    {
      v6 = off_1E86A43D0[layoutType];
    }

    [v3 setObject:v6 forKey:@"layoutType"];

    has = self->_has;
  }

  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_layoutScore];
    [v3 setObject:v7 forKey:@"layoutScore"];
  }

  uuidString = self->_uuidString;
  if (uuidString)
  {
    [v3 setObject:uuidString forKey:@"uuidString"];
  }

  if ([(NSMutableArray *)self->_oneByOneSuggestions count])
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_oneByOneSuggestions, "count")}];
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v10 = self->_oneByOneSuggestions;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v92 objects:v102 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v93;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v93 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v92 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:v15];
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v92 objects:v102 count:16];
      }

      while (v12);
    }

    [v3 setObject:v9 forKey:@"oneByOneSuggestions"];
  }

  if ([(NSMutableArray *)self->_oneByTwoSuggestions count])
  {
    v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_oneByTwoSuggestions, "count")}];
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v17 = self->_oneByTwoSuggestions;
    v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v88 objects:v101 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v89;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v89 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [*(*(&v88 + 1) + 8 * j) dictionaryRepresentation];
          [v16 addObject:v22];
        }

        v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v88 objects:v101 count:16];
      }

      while (v19);
    }

    [v3 setObject:v16 forKey:@"oneByTwoSuggestions"];
  }

  if ([(NSMutableArray *)self->_twoByTwoSuggestions count])
  {
    v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_twoByTwoSuggestions, "count")}];
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v24 = self->_twoByTwoSuggestions;
    v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v84 objects:v100 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v85;
      do
      {
        for (k = 0; k != v26; ++k)
        {
          if (*v85 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [*(*(&v84 + 1) + 8 * k) dictionaryRepresentation];
          [v23 addObject:v29];
        }

        v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v84 objects:v100 count:16];
      }

      while (v26);
    }

    [v3 setObject:v23 forKey:@"twoByTwoSuggestions"];
  }

  if ([(NSMutableArray *)self->_oneByFourSuggestions count])
  {
    v30 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_oneByFourSuggestions, "count")}];
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v31 = self->_oneByFourSuggestions;
    v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v80 objects:v99 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v81;
      do
      {
        for (m = 0; m != v33; ++m)
        {
          if (*v81 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = [*(*(&v80 + 1) + 8 * m) dictionaryRepresentation];
          [v30 addObject:v36];
        }

        v33 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v80 objects:v99 count:16];
      }

      while (v33);
    }

    [v3 setObject:v30 forKey:@"oneByFourSuggestions"];
  }

  if ([(NSMutableArray *)self->_twoByFourSuggestions count])
  {
    v37 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_twoByFourSuggestions, "count")}];
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v38 = self->_twoByFourSuggestions;
    v39 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v76 objects:v98 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v77;
      do
      {
        for (n = 0; n != v40; ++n)
        {
          if (*v77 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = [*(*(&v76 + 1) + 8 * n) dictionaryRepresentation];
          [v37 addObject:v43];
        }

        v40 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v76 objects:v98 count:16];
      }

      while (v40);
    }

    [v3 setObject:v37 forKey:@"twoByFourSuggestions"];
  }

  v44 = self->_has;
  if ((v44 & 0x40) != 0)
  {
    v66 = [MEMORY[0x1E696AD98] numberWithBool:self->_isValidForSuggestionsWidget];
    [v3 setObject:v66 forKey:@"isValidForSuggestionsWidget"];

    v44 = self->_has;
    if ((v44 & 8) == 0)
    {
LABEL_57:
      if ((v44 & 0x20) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_58;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_57;
  }

  v67 = [MEMORY[0x1E696AD98] numberWithBool:self->_confidenceWarrantsSnappingOrNPlusOne];
  [v3 setObject:v67 forKey:@"confidenceWarrantsSnappingOrNPlusOne"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_58:
    v45 = [MEMORY[0x1E696AD98] numberWithBool:self->_isNPlusOne];
    [v3 setObject:v45 forKey:@"isNPlusOne"];
  }

LABEL_59:
  widgetUniqueId = self->_widgetUniqueId;
  if (widgetUniqueId)
  {
    [v3 setObject:widgetUniqueId forKey:@"widgetUniqueId"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v47 = [MEMORY[0x1E696AD98] numberWithBool:self->_isLowConfidenceStackRotationForStaleStack];
    [v3 setObject:v47 forKey:@"isLowConfidenceStackRotationForStaleStack"];
  }

  uuidOfHighestConfidenceSuggestion = self->_uuidOfHighestConfidenceSuggestion;
  if (uuidOfHighestConfidenceSuggestion)
  {
    [v3 setObject:uuidOfHighestConfidenceSuggestion forKey:@"uuidOfHighestConfidenceSuggestion"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v49 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_numWidgetsInStack];
    [v3 setObject:v49 forKey:@"numWidgetsInStack"];
  }

  if ([(NSMutableArray *)self->_fourByFourSuggestions count])
  {
    v50 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_fourByFourSuggestions, "count")}];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v51 = self->_fourByFourSuggestions;
    v52 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v72 objects:v97 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v73;
      do
      {
        for (ii = 0; ii != v53; ++ii)
        {
          if (*v73 != v54)
          {
            objc_enumerationMutation(v51);
          }

          v56 = [*(*(&v72 + 1) + 8 * ii) dictionaryRepresentation];
          [v50 addObject:v56];
        }

        v53 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v72 objects:v97 count:16];
      }

      while (v53);
    }

    [v3 setObject:v50 forKey:@"fourByFourSuggestions"];
  }

  if ([(NSMutableArray *)self->_fourByEightSuggestions count])
  {
    v57 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_fourByEightSuggestions, "count")}];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v58 = self->_fourByEightSuggestions;
    v59 = [(NSMutableArray *)v58 countByEnumeratingWithState:&v68 objects:v96 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v69;
      do
      {
        for (jj = 0; jj != v60; ++jj)
        {
          if (*v69 != v61)
          {
            objc_enumerationMutation(v58);
          }

          v63 = [*(*(&v68 + 1) + 8 * jj) dictionaryRepresentation];
          [v57 addObject:v63];
        }

        v60 = [(NSMutableArray *)v58 countByEnumeratingWithState:&v68 objects:v96 count:16];
      }

      while (v60);
    }

    [v3 setObject:v57 forKey:@"fourByEightSuggestions"];
  }

  v64 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)writeTo:(id)a3
{
  v92 = *MEMORY[0x1E69E9840];
  v4 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    layoutType = self->_layoutType;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if (has)
  {
    layoutScore = self->_layoutScore;
    PBDataWriterWriteDoubleField();
  }

  if (self->_uuidString)
  {
    PBDataWriterWriteStringField();
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v8 = self->_oneByOneSuggestions;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v81 objects:v91 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v82;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v82 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v81 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v81 objects:v91 count:16];
    }

    while (v10);
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v14 = self->_oneByTwoSuggestions;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v77 objects:v90 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v78;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v78 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v77 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v77 objects:v90 count:16];
    }

    while (v16);
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v20 = self->_twoByTwoSuggestions;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v73 objects:v89 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v74;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v74 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v73 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v73 objects:v89 count:16];
    }

    while (v22);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v26 = self->_oneByFourSuggestions;
  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v69 objects:v88 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v70;
    do
    {
      for (m = 0; m != v28; ++m)
      {
        if (*v70 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v69 + 1) + 8 * m);
        PBDataWriterWriteSubmessage();
      }

      v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v69 objects:v88 count:16];
    }

    while (v28);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v32 = self->_twoByFourSuggestions;
  v33 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v65 objects:v87 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v66;
    do
    {
      for (n = 0; n != v34; ++n)
      {
        if (*v66 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v65 + 1) + 8 * n);
        PBDataWriterWriteSubmessage();
      }

      v34 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v65 objects:v87 count:16];
    }

    while (v34);
  }

  v38 = self->_has;
  if ((v38 & 0x40) != 0)
  {
    isValidForSuggestionsWidget = self->_isValidForSuggestionsWidget;
    PBDataWriterWriteBOOLField();
    v38 = self->_has;
    if ((v38 & 8) == 0)
    {
LABEL_44:
      if ((v38 & 0x20) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_44;
  }

  confidenceWarrantsSnappingOrNPlusOne = self->_confidenceWarrantsSnappingOrNPlusOne;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_45:
    isNPlusOne = self->_isNPlusOne;
    PBDataWriterWriteBOOLField();
  }

LABEL_46:
  if (self->_widgetUniqueId)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x10) != 0)
  {
    isLowConfidenceStackRotationForStaleStack = self->_isLowConfidenceStackRotationForStaleStack;
    PBDataWriterWriteBOOLField();
  }

  if (self->_uuidOfHighestConfidenceSuggestion)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    numWidgetsInStack = self->_numWidgetsInStack;
    PBDataWriterWriteUint64Field();
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v42 = self->_fourByFourSuggestions;
  v43 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v61 objects:v86 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v62;
    do
    {
      for (ii = 0; ii != v44; ++ii)
      {
        if (*v62 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = *(*(&v61 + 1) + 8 * ii);
        PBDataWriterWriteSubmessage();
      }

      v44 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v61 objects:v86 count:16];
    }

    while (v44);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v48 = self->_fourByEightSuggestions;
  v49 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v57 objects:v85 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v58;
    do
    {
      for (jj = 0; jj != v50; ++jj)
      {
        if (*v58 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = *(*(&v57 + 1) + 8 * jj);
        PBDataWriterWriteSubmessage();
      }

      v50 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v57 objects:v85 count:16];
    }

    while (v50);
  }

  v54 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v94 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 40) = self->_layoutType;
    *(v5 + 116) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_layoutScore;
    *(v5 + 116) |= 1u;
  }

  v8 = [(NSString *)self->_uuidString copyWithZone:a3];
  v9 = *(v6 + 96);
  *(v6 + 96) = v8;

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v10 = self->_oneByOneSuggestions;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v83 objects:v93 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v84;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v84 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v83 + 1) + 8 * i) copyWithZone:a3];
        [(ATXPBSuggestionLayout *)v6 addOneByOneSuggestions:v15];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v83 objects:v93 count:16];
    }

    while (v12);
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v16 = self->_oneByTwoSuggestions;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v79 objects:v92 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v80;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v80 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v79 + 1) + 8 * j) copyWithZone:a3];
        [(ATXPBSuggestionLayout *)v6 addOneByTwoSuggestions:v21];
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v79 objects:v92 count:16];
    }

    while (v18);
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v22 = self->_twoByTwoSuggestions;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v75 objects:v91 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v76;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v76 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v75 + 1) + 8 * k) copyWithZone:a3];
        [(ATXPBSuggestionLayout *)v6 addTwoByTwoSuggestions:v27];
      }

      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v75 objects:v91 count:16];
    }

    while (v24);
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v28 = self->_oneByFourSuggestions;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v71 objects:v90 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v72;
    do
    {
      for (m = 0; m != v30; ++m)
      {
        if (*v72 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = [*(*(&v71 + 1) + 8 * m) copyWithZone:a3];
        [(ATXPBSuggestionLayout *)v6 addOneByFourSuggestions:v33];
      }

      v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v71 objects:v90 count:16];
    }

    while (v30);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v34 = self->_twoByFourSuggestions;
  v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v67 objects:v89 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v68;
    do
    {
      for (n = 0; n != v36; ++n)
      {
        if (*v68 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = [*(*(&v67 + 1) + 8 * n) copyWithZone:a3];
        [(ATXPBSuggestionLayout *)v6 addTwoByFourSuggestions:v39];
      }

      v36 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v67 objects:v89 count:16];
    }

    while (v36);
  }

  v40 = self->_has;
  if ((v40 & 0x40) != 0)
  {
    *(v6 + 115) = self->_isValidForSuggestionsWidget;
    *(v6 + 116) |= 0x40u;
    v40 = self->_has;
    if ((v40 & 8) == 0)
    {
LABEL_42:
      if ((v40 & 0x20) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_42;
  }

  *(v6 + 112) = self->_confidenceWarrantsSnappingOrNPlusOne;
  *(v6 + 116) |= 8u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_43:
    *(v6 + 114) = self->_isNPlusOne;
    *(v6 + 116) |= 0x20u;
  }

LABEL_44:
  v41 = [(NSString *)self->_widgetUniqueId copyWithZone:a3];
  v42 = *(v6 + 104);
  *(v6 + 104) = v41;

  if ((*&self->_has & 0x10) != 0)
  {
    *(v6 + 113) = self->_isLowConfidenceStackRotationForStaleStack;
    *(v6 + 116) |= 0x10u;
  }

  v43 = [(NSString *)self->_uuidOfHighestConfidenceSuggestion copyWithZone:a3];
  v44 = *(v6 + 88);
  *(v6 + 88) = v43;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 16) = self->_numWidgetsInStack;
    *(v6 + 116) |= 2u;
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v45 = self->_fourByFourSuggestions;
  v46 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v63 objects:v88 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v64;
    do
    {
      for (ii = 0; ii != v47; ++ii)
      {
        if (*v64 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = [*(*(&v63 + 1) + 8 * ii) copyWithZone:a3];
        [(ATXPBSuggestionLayout *)v6 addFourByFourSuggestions:v50];
      }

      v47 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v63 objects:v88 count:16];
    }

    while (v47);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v51 = self->_fourByEightSuggestions;
  v52 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v59 objects:v87 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v60;
    do
    {
      for (jj = 0; jj != v53; ++jj)
      {
        if (*v60 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = [*(*(&v59 + 1) + 8 * jj) copyWithZone:{a3, v59}];
        [(ATXPBSuggestionLayout *)v6 addFourByEightSuggestions:v56];
      }

      v53 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v59 objects:v87 count:16];
    }

    while (v53);
  }

  v57 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_70;
  }

  v5 = *(v4 + 116);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 116) & 4) == 0 || self->_layoutType != *(v4 + 10))
    {
      goto LABEL_70;
    }
  }

  else if ((*(v4 + 116) & 4) != 0)
  {
    goto LABEL_70;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 116) & 1) == 0 || self->_layoutScore != *(v4 + 1))
    {
      goto LABEL_70;
    }
  }

  else if (*(v4 + 116))
  {
    goto LABEL_70;
  }

  uuidString = self->_uuidString;
  if (uuidString | *(v4 + 12) && ![(NSString *)uuidString isEqual:?])
  {
    goto LABEL_70;
  }

  oneByOneSuggestions = self->_oneByOneSuggestions;
  if (oneByOneSuggestions | *(v4 + 7))
  {
    if (![(NSMutableArray *)oneByOneSuggestions isEqual:?])
    {
      goto LABEL_70;
    }
  }

  oneByTwoSuggestions = self->_oneByTwoSuggestions;
  if (oneByTwoSuggestions | *(v4 + 8))
  {
    if (![(NSMutableArray *)oneByTwoSuggestions isEqual:?])
    {
      goto LABEL_70;
    }
  }

  twoByTwoSuggestions = self->_twoByTwoSuggestions;
  if (twoByTwoSuggestions | *(v4 + 10))
  {
    if (![(NSMutableArray *)twoByTwoSuggestions isEqual:?])
    {
      goto LABEL_70;
    }
  }

  oneByFourSuggestions = self->_oneByFourSuggestions;
  if (oneByFourSuggestions | *(v4 + 6))
  {
    if (![(NSMutableArray *)oneByFourSuggestions isEqual:?])
    {
      goto LABEL_70;
    }
  }

  twoByFourSuggestions = self->_twoByFourSuggestions;
  if (twoByFourSuggestions | *(v4 + 9))
  {
    if (![(NSMutableArray *)twoByFourSuggestions isEqual:?])
    {
      goto LABEL_70;
    }
  }

  has = self->_has;
  v13 = *(v4 + 116);
  if ((has & 0x40) != 0)
  {
    if ((*(v4 + 116) & 0x40) == 0)
    {
      goto LABEL_70;
    }

    v18 = *(v4 + 115);
    if (self->_isValidForSuggestionsWidget)
    {
      if ((*(v4 + 115) & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    else if (*(v4 + 115))
    {
      goto LABEL_70;
    }
  }

  else if ((*(v4 + 116) & 0x40) != 0)
  {
    goto LABEL_70;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 116) & 8) == 0)
    {
      goto LABEL_70;
    }

    v19 = *(v4 + 112);
    if (self->_confidenceWarrantsSnappingOrNPlusOne)
    {
      if ((*(v4 + 112) & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    else if (*(v4 + 112))
    {
      goto LABEL_70;
    }
  }

  else if ((*(v4 + 116) & 8) != 0)
  {
    goto LABEL_70;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 116) & 0x20) == 0)
    {
      goto LABEL_70;
    }

    v20 = *(v4 + 114);
    if (self->_isNPlusOne)
    {
      if ((*(v4 + 114) & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    else if (*(v4 + 114))
    {
      goto LABEL_70;
    }
  }

  else if ((*(v4 + 116) & 0x20) != 0)
  {
    goto LABEL_70;
  }

  widgetUniqueId = self->_widgetUniqueId;
  if (widgetUniqueId | *(v4 + 13))
  {
    if (![(NSString *)widgetUniqueId isEqual:?])
    {
      goto LABEL_70;
    }

    has = self->_has;
  }

  v15 = *(v4 + 116);
  if ((has & 0x10) != 0)
  {
    if ((*(v4 + 116) & 0x10) == 0)
    {
      goto LABEL_70;
    }

    v21 = *(v4 + 113);
    if (self->_isLowConfidenceStackRotationForStaleStack)
    {
      if ((*(v4 + 113) & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    else if (*(v4 + 113))
    {
      goto LABEL_70;
    }
  }

  else if ((*(v4 + 116) & 0x10) != 0)
  {
    goto LABEL_70;
  }

  uuidOfHighestConfidenceSuggestion = self->_uuidOfHighestConfidenceSuggestion;
  if (!(uuidOfHighestConfidenceSuggestion | *(v4 + 11)))
  {
    goto LABEL_38;
  }

  if (![(NSString *)uuidOfHighestConfidenceSuggestion isEqual:?])
  {
LABEL_70:
    v24 = 0;
    goto LABEL_71;
  }

  has = self->_has;
LABEL_38:
  v17 = *(v4 + 116);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 116) & 2) == 0 || self->_numWidgetsInStack != *(v4 + 2))
    {
      goto LABEL_70;
    }
  }

  else if ((*(v4 + 116) & 2) != 0)
  {
    goto LABEL_70;
  }

  fourByFourSuggestions = self->_fourByFourSuggestions;
  if (fourByFourSuggestions | *(v4 + 4) && ![(NSMutableArray *)fourByFourSuggestions isEqual:?])
  {
    goto LABEL_70;
  }

  fourByEightSuggestions = self->_fourByEightSuggestions;
  if (fourByEightSuggestions | *(v4 + 3))
  {
    v24 = [(NSMutableArray *)fourByEightSuggestions isEqual:?];
  }

  else
  {
    v24 = 1;
  }

LABEL_71:

  return v24;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v26 = 2654435761 * self->_layoutType;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v26 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  layoutScore = self->_layoutScore;
  if (layoutScore < 0.0)
  {
    layoutScore = -layoutScore;
  }

  *v2.i64 = floor(layoutScore + 0.5);
  v6 = (layoutScore - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v8 = 2654435761u * *vbslq_s8(vnegq_f64(v7), v3, v2).i64;
  if (v6 >= 0.0)
  {
    if (v6 > 0.0)
    {
      v8 += v6;
    }
  }

  else
  {
    v8 -= fabs(v6);
  }

LABEL_9:
  v25 = v8;
  v24 = [(NSString *)self->_uuidString hash];
  v23 = [(NSMutableArray *)self->_oneByOneSuggestions hash];
  v22 = [(NSMutableArray *)self->_oneByTwoSuggestions hash];
  v21 = [(NSMutableArray *)self->_twoByTwoSuggestions hash];
  v9 = [(NSMutableArray *)self->_oneByFourSuggestions hash];
  v10 = [(NSMutableArray *)self->_twoByFourSuggestions hash];
  if ((*&self->_has & 0x40) == 0)
  {
    v11 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    v12 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v11 = 2654435761 * self->_isValidForSuggestionsWidget;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v12 = 2654435761 * self->_confidenceWarrantsSnappingOrNPlusOne;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_isNPlusOne;
    goto LABEL_16;
  }

LABEL_15:
  v13 = 0;
LABEL_16:
  v14 = [(NSString *)self->_widgetUniqueId hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v15 = 2654435761 * self->_isLowConfidenceStackRotationForStaleStack;
  }

  else
  {
    v15 = 0;
  }

  v16 = [(NSString *)self->_uuidOfHighestConfidenceSuggestion hash];
  if ((*&self->_has & 2) != 0)
  {
    v17 = 2654435761u * self->_numWidgetsInStack;
  }

  else
  {
    v17 = 0;
  }

  v18 = v25 ^ v26 ^ v24 ^ v23 ^ v22 ^ v21 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
  v19 = v17 ^ [(NSMutableArray *)self->_fourByFourSuggestions hash];
  return v18 ^ v19 ^ [(NSMutableArray *)self->_fourByEightSuggestions hash];
}

- (uint64_t)setLayoutType:(uint64_t)result
{
  if (result)
  {
    *(result + 116) |= 4u;
    *(result + 40) = a2;
  }

  return result;
}

- (uint64_t)setHasLayoutType:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v2 = 4;
    }

    else
    {
      v2 = 0;
    }

    *(result + 116) = *(result + 116) & 0xFB | v2;
  }

  return result;
}

- (uint64_t)hasLayoutType
{
  if (result)
  {
    return (*(result + 116) >> 2) & 1;
  }

  return result;
}

- (__CFString)layoutTypeAsString:(__CFString *)a1
{
  if (!a1)
  {
LABEL_4:

    return a1;
  }

  if (a2 < 0x12)
  {
    a1 = off_1E86A43D0[a2];
    goto LABEL_4;
  }

  a1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a2];

  return a1;
}

- (uint64_t)StringAsLayoutType:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = v3;
    if ([v5 isEqualToString:@"Eight1x1"])
    {
      v6 = 0;
    }

    else if ([v5 isEqualToString:@"Two1x2AndFour1x1"])
    {
      v6 = 1;
    }

    else if ([v5 isEqualToString:@"One2x2AndFour1x1"])
    {
      v6 = 2;
    }

    else if ([v5 isEqualToString:@"One2x4"])
    {
      v6 = 3;
    }

    else if ([v5 isEqualToString:@"Two1x2"])
    {
      v6 = 4;
    }

    else if ([v5 isEqualToString:@"One2x2"])
    {
      v6 = 5;
    }

    else if ([v5 isEqualToString:@"Two2x2"])
    {
      v6 = 6;
    }

    else if ([v5 isEqualToString:@"Four1x2"])
    {
      v6 = 7;
    }

    else if ([v5 isEqualToString:@"N1x4"])
    {
      v6 = 8;
    }

    else if ([v5 isEqualToString:@"Two1x4"])
    {
      v6 = 9;
    }

    else if ([v5 isEqualToString:@"One4x4"])
    {
      v6 = 10;
    }

    else if ([v5 isEqualToString:@"Four1x4"])
    {
      v6 = 11;
    }

    else if ([v5 isEqualToString:@"N2x2AndN1x1"])
    {
      v6 = 12;
    }

    else if ([v5 isEqualToString:@"N2x4AndN1x1"])
    {
      v6 = 13;
    }

    else if ([v5 isEqualToString:@"N2x4AndN2x2AndN1x1"])
    {
      v6 = 14;
    }

    else if ([v5 isEqualToString:@"N1x1"])
    {
      v6 = 15;
    }

    else if ([v5 isEqualToString:@"One4x8"])
    {
      v6 = 16;
    }

    else if ([v5 isEqualToString:@"SuggestionList"])
    {
      v6 = 17;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)setLayoutScore:(uint64_t)result
{
  if (result)
  {
    *(result + 116) |= 1u;
    *(result + 8) = a2;
  }

  return result;
}

- (uint64_t)setHasLayoutScore:(uint64_t)result
{
  if (result)
  {
    *(result + 116) = *(result + 116) & 0xFE | a2;
  }

  return result;
}

- (uint64_t)hasLayoutScore
{
  if (result)
  {
    return *(result + 116) & 1;
  }

  return result;
}

- (BOOL)hasUuidString
{
  if (result)
  {
    return *(result + 96) != 0;
  }

  return result;
}

- (uint64_t)clearOneByOneSuggestions
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_3(result, 56);
  }

  return result;
}

- (uint64_t)addOneByOneSuggestions:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = OUTLINED_FUNCTION_13(56);
    if (!v5)
    {
      OUTLINED_FUNCTION_23(objc_alloc_init(MEMORY[0x1E695DF70]), 56);
      v5 = *(a1 + 56);
    }

    v3 = [v5 addObject:v7];
    v4 = v7;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)oneByOneSuggestionsCount
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_0(result, 56);
  }

  return result;
}

- (id)oneByOneSuggestionsAtIndex:(void *)a1
{
  if (a1)
  {
    a1 = [OUTLINED_FUNCTION_14(a1 56)];
    v1 = vars8;
  }

  return a1;
}

- (uint64_t)clearOneByTwoSuggestions
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_3(result, 64);
  }

  return result;
}

- (uint64_t)addOneByTwoSuggestions:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = OUTLINED_FUNCTION_13(64);
    if (!v5)
    {
      OUTLINED_FUNCTION_23(objc_alloc_init(MEMORY[0x1E695DF70]), 64);
      v5 = *(a1 + 64);
    }

    v3 = [v5 addObject:v7];
    v4 = v7;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)oneByTwoSuggestionsCount
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_0(result, 64);
  }

  return result;
}

- (id)oneByTwoSuggestionsAtIndex:(void *)a1
{
  if (a1)
  {
    a1 = [OUTLINED_FUNCTION_14(a1 64)];
    v1 = vars8;
  }

  return a1;
}

- (uint64_t)clearTwoByTwoSuggestions
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_3(result, 80);
  }

  return result;
}

- (uint64_t)addTwoByTwoSuggestions:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = OUTLINED_FUNCTION_13(80);
    if (!v5)
    {
      OUTLINED_FUNCTION_23(objc_alloc_init(MEMORY[0x1E695DF70]), 80);
      v5 = *(a1 + 80);
    }

    v3 = [v5 addObject:v7];
    v4 = v7;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)twoByTwoSuggestionsCount
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_0(result, 80);
  }

  return result;
}

- (id)twoByTwoSuggestionsAtIndex:(void *)a1
{
  if (a1)
  {
    a1 = [OUTLINED_FUNCTION_14(a1 80)];
    v1 = vars8;
  }

  return a1;
}

- (uint64_t)clearOneByFourSuggestions
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_3(result, 48);
  }

  return result;
}

- (uint64_t)addOneByFourSuggestions:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = OUTLINED_FUNCTION_13(48);
    if (!v5)
    {
      OUTLINED_FUNCTION_23(objc_alloc_init(MEMORY[0x1E695DF70]), 48);
      v5 = *(a1 + 48);
    }

    v3 = [v5 addObject:v7];
    v4 = v7;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)oneByFourSuggestionsCount
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_0(result, 48);
  }

  return result;
}

- (id)oneByFourSuggestionsAtIndex:(void *)a1
{
  if (a1)
  {
    a1 = [OUTLINED_FUNCTION_14(a1 48)];
    v1 = vars8;
  }

  return a1;
}

- (uint64_t)clearTwoByFourSuggestions
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_3(result, 72);
  }

  return result;
}

- (uint64_t)addTwoByFourSuggestions:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = OUTLINED_FUNCTION_13(72);
    if (!v5)
    {
      OUTLINED_FUNCTION_23(objc_alloc_init(MEMORY[0x1E695DF70]), 72);
      v5 = *(a1 + 72);
    }

    v3 = [v5 addObject:v7];
    v4 = v7;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)twoByFourSuggestionsCount
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_0(result, 72);
  }

  return result;
}

- (id)twoByFourSuggestionsAtIndex:(void *)a1
{
  if (a1)
  {
    a1 = [OUTLINED_FUNCTION_14(a1 72)];
    v1 = vars8;
  }

  return a1;
}

- (uint64_t)setIsValidForSuggestionsWidget:(uint64_t)result
{
  if (result)
  {
    *(result + 116) |= 0x40u;
    *(result + 115) = a2;
  }

  return result;
}

- (uint64_t)setHasIsValidForSuggestionsWidget:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v2 = 64;
    }

    else
    {
      v2 = 0;
    }

    *(result + 116) = *(result + 116) & 0xBF | v2;
  }

  return result;
}

- (uint64_t)hasIsValidForSuggestionsWidget
{
  if (result)
  {
    return (*(result + 116) >> 6) & 1;
  }

  return result;
}

- (uint64_t)setConfidenceWarrantsSnappingOrNPlusOne:(uint64_t)result
{
  if (result)
  {
    *(result + 116) |= 8u;
    *(result + 112) = a2;
  }

  return result;
}

- (uint64_t)setHasConfidenceWarrantsSnappingOrNPlusOne:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v2 = 8;
    }

    else
    {
      v2 = 0;
    }

    *(result + 116) = *(result + 116) & 0xF7 | v2;
  }

  return result;
}

- (uint64_t)hasConfidenceWarrantsSnappingOrNPlusOne
{
  if (result)
  {
    return (*(result + 116) >> 3) & 1;
  }

  return result;
}

- (uint64_t)setIsNPlusOne:(uint64_t)result
{
  if (result)
  {
    *(result + 116) |= 0x20u;
    *(result + 114) = a2;
  }

  return result;
}

- (uint64_t)setHasIsNPlusOne:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v2 = 32;
    }

    else
    {
      v2 = 0;
    }

    *(result + 116) = *(result + 116) & 0xDF | v2;
  }

  return result;
}

- (uint64_t)hasIsNPlusOne
{
  if (result)
  {
    return (*(result + 116) >> 5) & 1;
  }

  return result;
}

- (BOOL)hasWidgetUniqueId
{
  if (result)
  {
    return *(result + 104) != 0;
  }

  return result;
}

- (uint64_t)setIsLowConfidenceStackRotationForStaleStack:(uint64_t)result
{
  if (result)
  {
    *(result + 116) |= 0x10u;
    *(result + 113) = a2;
  }

  return result;
}

- (uint64_t)setHasIsLowConfidenceStackRotationForStaleStack:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v2 = 16;
    }

    else
    {
      v2 = 0;
    }

    *(result + 116) = *(result + 116) & 0xEF | v2;
  }

  return result;
}

- (uint64_t)hasIsLowConfidenceStackRotationForStaleStack
{
  if (result)
  {
    return (*(result + 116) >> 4) & 1;
  }

  return result;
}

- (uint64_t)setNumWidgetsInStack:(uint64_t)result
{
  if (result)
  {
    *(result + 116) |= 2u;
    *(result + 16) = a2;
  }

  return result;
}

- (uint64_t)setHasNumWidgetsInStack:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    *(result + 116) = *(result + 116) & 0xFD | v2;
  }

  return result;
}

- (uint64_t)hasNumWidgetsInStack
{
  if (result)
  {
    return (*(result + 116) >> 1) & 1;
  }

  return result;
}

- (uint64_t)clearFourByFourSuggestions
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_3(result, 32);
  }

  return result;
}

- (uint64_t)addFourByFourSuggestions:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = OUTLINED_FUNCTION_13(32);
    if (!v5)
    {
      OUTLINED_FUNCTION_23(objc_alloc_init(MEMORY[0x1E695DF70]), 32);
      v5 = *(a1 + 32);
    }

    v3 = [v5 addObject:v7];
    v4 = v7;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)fourByFourSuggestionsCount
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_0(result, 32);
  }

  return result;
}

- (id)fourByFourSuggestionsAtIndex:(void *)a1
{
  if (a1)
  {
    a1 = [OUTLINED_FUNCTION_14(a1 32)];
    v1 = vars8;
  }

  return a1;
}

- (uint64_t)clearFourByEightSuggestions
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_3(result, 24);
  }

  return result;
}

- (uint64_t)addFourByEightSuggestions:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = OUTLINED_FUNCTION_13(24);
    if (!v5)
    {
      OUTLINED_FUNCTION_23(objc_alloc_init(MEMORY[0x1E695DF70]), 24);
      v5 = *(a1 + 24);
    }

    v3 = [v5 addObject:v7];
    v4 = v7;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)fourByEightSuggestionsCount
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_0(result, 24);
  }

  return result;
}

- (id)fourByEightSuggestionsAtIndex:(void *)a1
{
  if (a1)
  {
    a1 = [OUTLINED_FUNCTION_14(a1 24)];
    v1 = vars8;
  }

  return a1;
}

- (void)copyTo:(uint64_t)a1
{
  v110 = a2;
  if (!a1)
  {
    goto LABEL_70;
  }

  OUTLINED_FUNCTION_16();
  if ((v5 & 4) != 0)
  {
    *(v110 + 10) = *(a1 + 40);
    *(v110 + 116) |= 4u;
    OUTLINED_FUNCTION_16();
    if ((v7 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6 = v110;
  if (v5)
  {
LABEL_6:
    v6[1] = *(a1 + 8);
    *(v6 + v4) |= 1u;
  }

LABEL_7:
  v8 = *(a1 + 96);
  if (v8)
  {
    [(ATXPBSuggestionLayout *)v110 setUuidString:v8];
  }

  if ([*(a1 + 56) count])
  {
    if (v110)
    {
      [*(v110 + 7) removeAllObjects];
    }

    if ([*(a1 + 56) count])
    {
      OUTLINED_FUNCTION_12();
      do
      {
        v9 = OUTLINED_FUNCTION_11();
        v10 = [ATXPBSuggestionLayout oneByOneSuggestionsAtIndex:v9];
        v18 = OUTLINED_FUNCTION_4(v10, v11, v12, v13, v14, v15, v16, v17, v109, v110);
        [(ATXPBSuggestionLayout *)v18 addOneByOneSuggestions:v19];

        OUTLINED_FUNCTION_10();
      }

      while (!v20);
    }
  }

  if ([*(a1 + 64) count])
  {
    if (v110)
    {
      [*(v110 + 8) removeAllObjects];
    }

    if ([*(a1 + 64) count])
    {
      OUTLINED_FUNCTION_12();
      do
      {
        v21 = OUTLINED_FUNCTION_11();
        v22 = [ATXPBSuggestionLayout oneByTwoSuggestionsAtIndex:v21];
        v30 = OUTLINED_FUNCTION_4(v22, v23, v24, v25, v26, v27, v28, v29, v109, v110);
        [(ATXPBSuggestionLayout *)v30 addOneByTwoSuggestions:v31];

        OUTLINED_FUNCTION_10();
      }

      while (!v20);
    }
  }

  if ([*(a1 + 80) count])
  {
    if (v110)
    {
      [*(v110 + 10) removeAllObjects];
    }

    if ([*(a1 + 80) count])
    {
      OUTLINED_FUNCTION_12();
      do
      {
        v32 = OUTLINED_FUNCTION_11();
        v33 = [ATXPBSuggestionLayout twoByTwoSuggestionsAtIndex:v32];
        v41 = OUTLINED_FUNCTION_4(v33, v34, v35, v36, v37, v38, v39, v40, v109, v110);
        [(ATXPBSuggestionLayout *)v41 addTwoByTwoSuggestions:v42];

        OUTLINED_FUNCTION_10();
      }

      while (!v20);
    }
  }

  if ([*(a1 + 48) count])
  {
    if (v110)
    {
      [*(v110 + 6) removeAllObjects];
    }

    if ([*(a1 + 48) count])
    {
      OUTLINED_FUNCTION_12();
      do
      {
        v43 = OUTLINED_FUNCTION_11();
        v44 = [ATXPBSuggestionLayout oneByFourSuggestionsAtIndex:v43];
        v52 = OUTLINED_FUNCTION_4(v44, v45, v46, v47, v48, v49, v50, v51, v109, v110);
        [(ATXPBSuggestionLayout *)v52 addOneByFourSuggestions:v53];

        OUTLINED_FUNCTION_10();
      }

      while (!v20);
    }
  }

  if ([*(a1 + 72) count])
  {
    if (v110)
    {
      [*(v110 + 9) removeAllObjects];
    }

    if ([*(a1 + 72) count])
    {
      OUTLINED_FUNCTION_12();
      do
      {
        v54 = OUTLINED_FUNCTION_11();
        v55 = [ATXPBSuggestionLayout twoByFourSuggestionsAtIndex:v54];
        v63 = OUTLINED_FUNCTION_4(v55, v56, v57, v58, v59, v60, v61, v62, v109, v110);
        [(ATXPBSuggestionLayout *)v63 addTwoByFourSuggestions:v64];

        OUTLINED_FUNCTION_10();
      }

      while (!v20);
    }
  }

  OUTLINED_FUNCTION_9();
  v66 = v110;
  if ((v65 & 0x40) == 0)
  {
    if ((v65 & 8) == 0)
    {
      goto LABEL_46;
    }

LABEL_74:
    v105 = OUTLINED_FUNCTION_6_0(v66, 112);
    *(v105 + v107) = v106 | 8;
    OUTLINED_FUNCTION_9();
    if ((v108 & 0x20) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  v102 = OUTLINED_FUNCTION_6_0(v110, 115);
  *(v102 + v104) = v103 | 0x40;
  OUTLINED_FUNCTION_9();
  if ((v65 & 8) != 0)
  {
    goto LABEL_74;
  }

LABEL_46:
  if ((v65 & 0x20) != 0)
  {
LABEL_47:
    v67 = OUTLINED_FUNCTION_6_0(v66, 114);
    *(v67 + v69) = v68 | 0x20;
  }

LABEL_48:
  v70 = *(a1 + 104);
  if (v70)
  {
    [(ATXPBSuggestionLayout *)v110 setWidgetUniqueId:v70];
  }

  OUTLINED_FUNCTION_9();
  if ((v72 & 0x10) != 0)
  {
    v73 = OUTLINED_FUNCTION_6_0(v71, 113);
    *(v73 + v75) = v74 | 0x10;
  }

  v76 = *(a1 + 88);
  if (v76)
  {
    [(ATXPBSuggestionLayout *)v110 setUuidOfHighestConfidenceSuggestion:v76];
  }

  OUTLINED_FUNCTION_16();
  if ((v79 & 2) != 0)
  {
    *(v77 + 16) = *(a1 + 16);
    *(v77 + v78) |= 2u;
  }

  if ([*(a1 + 32) count])
  {
    if (v110)
    {
      [*(v110 + 4) removeAllObjects];
    }

    if ([*(a1 + 32) count])
    {
      OUTLINED_FUNCTION_12();
      do
      {
        v80 = OUTLINED_FUNCTION_11();
        v81 = [ATXPBSuggestionLayout fourByFourSuggestionsAtIndex:v80];
        v89 = OUTLINED_FUNCTION_4(v81, v82, v83, v84, v85, v86, v87, v88, v109, v110);
        [(ATXPBSuggestionLayout *)v89 addFourByFourSuggestions:v90];

        OUTLINED_FUNCTION_10();
      }

      while (!v20);
    }
  }

  if ([*(a1 + 24) count])
  {
    if (v110)
    {
      [*(v110 + 3) removeAllObjects];
    }

    if ([*(a1 + 24) count])
    {
      OUTLINED_FUNCTION_12();
      do
      {
        v91 = OUTLINED_FUNCTION_11();
        v92 = [ATXPBSuggestionLayout fourByEightSuggestionsAtIndex:v91];
        v100 = OUTLINED_FUNCTION_4(v92, v93, v94, v95, v96, v97, v98, v99, v109, v110);
        [(ATXPBSuggestionLayout *)v100 addFourByEightSuggestions:v101];

        OUTLINED_FUNCTION_10();
      }

      while (!v20);
    }
  }

LABEL_70:
}

- (void)setUuidString:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_3(a1, a2, 96);
  }
}

- (void)setWidgetUniqueId:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_3(a1, a2, 104);
  }
}

- (void)setUuidOfHighestConfidenceSuggestion:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_3(a1, a2, 88);
  }
}

- (void)mergeFrom:(uint64_t)a1
{
  v103 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!a1)
  {
    goto LABEL_70;
  }

  OUTLINED_FUNCTION_16();
  if ((v5 & 4) != 0)
  {
    *(a1 + 40) = *(v3 + 10);
    *(a1 + 116) |= 4u;
    OUTLINED_FUNCTION_16();
  }

  if (v5)
  {
    *(a1 + 8) = *(v3 + 1);
    *(a1 + v4) |= 1u;
  }

  v6 = *(v3 + 12);
  if (v6)
  {
    [(ATXPBSuggestionLayout *)a1 setUuidString:v6];
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v7 = *(v3 + 7);
  if ([v7 countByEnumeratingWithState:&v92 objects:v102 count:16])
  {
    v8 = *v93;
    do
    {
      OUTLINED_FUNCTION_20(v93);
      if (!v9)
      {
        objc_enumerationMutation(v7);
      }

      v10 = OUTLINED_FUNCTION_19(*(&v92 + 1));
      [(ATXPBSuggestionLayout *)v10 addOneByOneSuggestions:v11];
      OUTLINED_FUNCTION_18();
    }

    while (!v9 || OUTLINED_FUNCTION_22(v12, v13, &v92, v102));
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v14 = *(v3 + 8);
  if ([v14 countByEnumeratingWithState:&v88 objects:v101 count:16])
  {
    v15 = *v89;
    do
    {
      OUTLINED_FUNCTION_20(v89);
      if (!v9)
      {
        objc_enumerationMutation(v14);
      }

      v16 = OUTLINED_FUNCTION_19(*(&v88 + 1));
      [(ATXPBSuggestionLayout *)v16 addOneByTwoSuggestions:v17];
      OUTLINED_FUNCTION_18();
    }

    while (!v9 || OUTLINED_FUNCTION_22(v18, v19, &v88, v101));
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v20 = *(v3 + 10);
  if ([v20 countByEnumeratingWithState:&v84 objects:v100 count:16])
  {
    v21 = *v85;
    do
    {
      OUTLINED_FUNCTION_20(v85);
      if (!v9)
      {
        objc_enumerationMutation(v20);
      }

      v22 = OUTLINED_FUNCTION_19(*(&v84 + 1));
      [(ATXPBSuggestionLayout *)v22 addTwoByTwoSuggestions:v23];
      OUTLINED_FUNCTION_18();
    }

    while (!v9 || OUTLINED_FUNCTION_22(v24, v25, &v84, v100));
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v26 = *(v3 + 6);
  if ([v26 countByEnumeratingWithState:&v80 objects:v99 count:16])
  {
    v27 = *v81;
    do
    {
      OUTLINED_FUNCTION_20(v81);
      if (!v9)
      {
        objc_enumerationMutation(v26);
      }

      v28 = OUTLINED_FUNCTION_19(*(&v80 + 1));
      [(ATXPBSuggestionLayout *)v28 addOneByFourSuggestions:v29];
      OUTLINED_FUNCTION_18();
    }

    while (!v9 || OUTLINED_FUNCTION_22(v30, v31, &v80, v99));
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v32 = *(v3 + 9);
  if ([v32 countByEnumeratingWithState:&v76 objects:v98 count:16])
  {
    v33 = *v77;
    do
    {
      OUTLINED_FUNCTION_20(v77);
      if (!v9)
      {
        objc_enumerationMutation(v32);
      }

      v34 = OUTLINED_FUNCTION_19(*(&v76 + 1));
      [(ATXPBSuggestionLayout *)v34 addTwoByFourSuggestions:v35];
      OUTLINED_FUNCTION_18();
    }

    while (!v9 || OUTLINED_FUNCTION_22(v36, v37, &v76, v98));
  }

  OUTLINED_FUNCTION_9();
  if ((v38 & 0x40) == 0)
  {
    if ((v38 & 8) == 0)
    {
      goto LABEL_45;
    }

LABEL_72:
    OUTLINED_FUNCTION_7(112);
    *(a1 + v66) = v65 | 8;
    OUTLINED_FUNCTION_9();
    if ((v67 & 0x20) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  OUTLINED_FUNCTION_7(115);
  *(a1 + v64) = v63 | 0x40;
  OUTLINED_FUNCTION_9();
  if ((v38 & 8) != 0)
  {
    goto LABEL_72;
  }

LABEL_45:
  if ((v38 & 0x20) != 0)
  {
LABEL_46:
    OUTLINED_FUNCTION_7(114);
    *(a1 + v40) = v39 | 0x20;
  }

LABEL_47:
  v41 = *(v3 + 13);
  if (v41)
  {
    [(ATXPBSuggestionLayout *)a1 setWidgetUniqueId:v41];
  }

  OUTLINED_FUNCTION_9();
  if ((v42 & 0x10) != 0)
  {
    OUTLINED_FUNCTION_7(113);
    *(a1 + v44) = v43 | 0x10;
  }

  v45 = *(v3 + 11);
  if (v45)
  {
    [(ATXPBSuggestionLayout *)a1 setUuidOfHighestConfidenceSuggestion:v45];
  }

  OUTLINED_FUNCTION_16();
  if ((v47 & 2) != 0)
  {
    *(a1 + 16) = *(v3 + 2);
    *(a1 + v46) |= 2u;
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v48 = *(v3 + 4);
  v49 = [v48 countByEnumeratingWithState:&v72 objects:v97 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v73;
    do
    {
      v52 = 0;
      do
      {
        if (*v73 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = [(ATXPBSuggestionLayout *)a1 addFourByFourSuggestions:?];
      }

      while (v50 != v52);
      v50 = OUTLINED_FUNCTION_22(v53, v54, &v72, v97);
    }

    while (v50);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v55 = *(v3 + 3);
  v56 = [v55 countByEnumeratingWithState:&v68 objects:v96 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v69;
    do
    {
      v59 = 0;
      do
      {
        if (*v69 != v58)
        {
          objc_enumerationMutation(v55);
        }

        v60 = [(ATXPBSuggestionLayout *)a1 addFourByEightSuggestions:?];
      }

      while (v57 != v59);
      v57 = OUTLINED_FUNCTION_22(v60, v61, &v68, v96);
    }

    while (v57);
  }

LABEL_70:
  v62 = *MEMORY[0x1E69E9840];
}

- (void)setOneByOneSuggestions:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_3(a1, a2, 56);
  }
}

- (void)setOneByTwoSuggestions:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_3(a1, a2, 64);
  }
}

- (void)setTwoByTwoSuggestions:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_3(a1, a2, 80);
  }
}

- (void)setOneByFourSuggestions:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_3(a1, a2, 48);
  }
}

- (void)setTwoByFourSuggestions:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_3(a1, a2, 72);
  }
}

- (void)setFourByFourSuggestions:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_3(a1, a2, 32);
  }
}

- (void)setFourByEightSuggestions:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_3(a1, a2, 24);
  }
}

@end