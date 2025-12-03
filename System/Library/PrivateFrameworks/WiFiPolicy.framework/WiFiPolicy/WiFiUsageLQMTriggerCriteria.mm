@interface WiFiUsageLQMTriggerCriteria
+ (id)parseCriteria:(id)criteria intoRequiredFields:(id)fields andFeatures:(id)features forFields:(id)forFields withType:(id)type isFilter:(BOOL)filter;
+ (id)predicateNoQuotes:(id)quotes;
+ (void)initialize;
- (WiFiUsageLQMTriggerCriteria)initWith:(id)with forFields:(id)fields andFeatures:(id)features;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)redactedDescription;
- (id)shortPredicate;
- (id)shortPredicateNoSpaces;
- (id)typeAsString;
@end

@implementation WiFiUsageLQMTriggerCriteria

+ (void)initialize
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  v3 = _dateFormatter;
  _dateFormatter = v2;

  v4 = _dateFormatter;

  [v4 setDateFormat:@"HH:mm:ss"];
}

- (WiFiUsageLQMTriggerCriteria)initWith:(id)with forFields:(id)fields andFeatures:(id)features
{
  v67 = *MEMORY[0x277D85DE8];
  withCopy = with;
  fieldsCopy = fields;
  featuresCopy = features;
  v55 = withCopy;
  v8 = [withCopy objectForKey:@"type"];
  if (v8)
  {
    v9 = +[WiFiUsageLQMTriggerCriteria dataTriggeredTypes];
    v10 = [withCopy objectForKey:@"type"];
    v11 = [v9 indexOfObject:v10];

    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v51 = objc_opt_new();
      v13 = objc_opt_class();
      v14 = [withCopy objectForKey:@"type"];
      v50 = [v13 parseCriteria:withCopy intoRequiredFields:v51 andFeatures:featuresCopy forFields:fieldsCopy withType:v14 isFilter:0];

      v15 = v50;
      if (!v50)
      {
        selfCopy = 0;
LABEL_30:

        goto LABEL_31;
      }

      v49 = [MEMORY[0x277CCAC30] predicateWithFormat:?];
      anyObject = [v51 anyObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v18 = objc_opt_new();
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v19 = v51;
        v20 = [v19 countByEnumeratingWithState:&v61 objects:v66 count:16];
        if (v20)
        {
          v21 = *v62;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v62 != v21)
              {
                objc_enumerationMutation(v19);
              }

              v23 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%@ != nil", *(*(&v61 + 1) + 8 * i)];
              [v18 addObject:v23];
            }

            v20 = [v19 countByEnumeratingWithState:&v61 objects:v66 count:16];
          }

          while (v20);
        }

        v24 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v18];
      }

      else
      {
        anyObject2 = [v51 anyObject];
        objc_opt_class();
        v26 = objc_opt_isKindOfClass();

        if ((v26 & 1) == 0)
        {
          v35 = 0;
          goto LABEL_29;
        }

        v27 = objc_opt_new();
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v28 = v51;
        v29 = [v28 countByEnumeratingWithState:&v57 objects:v65 count:16];
        if (v29)
        {
          v30 = *v58;
          do
          {
            for (j = 0; j != v29; ++j)
            {
              if (*v58 != v30)
              {
                objc_enumerationMutation(v28);
              }

              v32 = *(*(&v57 + 1) + 8 * j);
              if ([v27 length])
              {
                v33 = @" OR ";
              }

              else
              {
                v33 = &stru_28487EF20;
              }

              fieldName = [v32 fieldName];
              [v27 appendFormat:@"%@$x.fieldName == %@", v33, fieldName];
            }

            v29 = [v28 countByEnumeratingWithState:&v57 objects:v65 count:16];
          }

          while (v29);
        }

        v18 = [MEMORY[0x277CCAB68] stringWithFormat:@"SUBQUERY(SELF, $x, $x.median != nil AND (%@)).@count == %lu", v27, objc_msgSend(v28, "count")];

        v24 = [MEMORY[0x277CCAC30] predicateWithFormat:v18];
      }

      v35 = v24;

LABEL_29:
      v56.receiver = self;
      v56.super_class = WiFiUsageLQMTriggerCriteria;
      v36 = [(WiFiUsageLQMTriggerCriteria *)&v56 init];
      v37 = +[WiFiUsageLQMTriggerCriteria dataTriggeredTypes];
      v38 = [v55 objectForKey:@"type"];
      v36->_type = [v37 indexOfObject:v38];

      predicate = v36->_predicate;
      v36->_predicate = v49;
      v40 = v49;

      requiredFieldsValid = v36->_requiredFieldsValid;
      v36->_requiredFieldsValid = v35;
      v42 = v35;

      v36->_matched = 0;
      firstTriggered = v36->_firstTriggered;
      v36->_firstTriggered = 0;

      lastTriggered = v36->_lastTriggered;
      v36->_lastTriggered = 0;

      currentSample = v36->_currentSample;
      v36->_currentSample = 0;

      bssid = v36->_bssid;
      v36->_bssid = 0;

      self = v36;
      selfCopy = self;
      v15 = v50;
      goto LABEL_30;
    }
  }

  NSLog(&cfstr_SFailedToParse_4.isa, "[WiFiUsageLQMTriggerCriteria initWith:forFields:andFeatures:]", withCopy);
  NSLog(&cfstr_SFailedToParse_5.isa, "[WiFiUsageLQMTriggerCriteria initWith:forFields:andFeatures:]", withCopy);
  selfCopy = 0;
LABEL_31:

  v47 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (id)typeAsString
{
  v3 = +[WiFiUsageLQMTriggerCriteria dataTriggeredTypes];
  v4 = [v3 objectAtIndexedSubscript:self->_type];

  return v4;
}

- (id)shortPredicate
{
  selfCopy = self;
  predicateFormat = [(NSPredicate *)self->_predicate predicateFormat];
  v4 = MEMORY[0x277CCAC68];
  v5 = objc_msgSend(MEMORY[0x277CCAC68], "escapedPatternForString:", @"SUBQUERY(SELF, $x, $x.fieldName == ");
  v6 = [v4 regularExpressionWithPattern:v5 options:1 error:0];

  v7 = [v6 stringByReplacingMatchesInString:predicateFormat options:0 range:0 withTemplate:{objc_msgSend(predicateFormat, "length"), &stru_28487EF20}];

  v8 = MEMORY[0x277CCAC68];
  v9 = [MEMORY[0x277CCAC68] escapedPatternForString:@" AND $x."];
  v10 = [v8 regularExpressionWithPattern:v9 options:1 error:0];

  v11 = [v10 stringByReplacingMatchesInString:v7 options:0 range:0 withTemplate:{objc_msgSend(v7, "length"), @"_"}];

  v12 = MEMORY[0x277CCAC68];
  v13 = [MEMORY[0x277CCAC68] escapedPatternForString:@".@count > 0"]);
  v14 = [v12 regularExpressionWithPattern:v13 options:1 error:0];

  v15 = [v14 stringByReplacingMatchesInString:v11 options:0 range:0 withTemplate:{objc_msgSend(v11, "length"), &stru_28487EF20}];

  v16 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(\\w+)_(\\w+)" options:1 error:0];

  v17 = [v16 stringByReplacingMatchesInString:v15 options:0 range:0 withTemplate:{objc_msgSend(v15, "length"), @"$2_$1"}];

  v18 = MEMORY[0x277CCACA8];
  filterCriteria = [selfCopy filterCriteria];
  if (filterCriteria)
  {
    v20 = MEMORY[0x277CCACA8];
    selfCopy = [selfCopy filterCriteria];
    selfCopy = [v20 stringWithFormat:@" (where %@)", selfCopy];
  }

  else
  {
    selfCopy = &stru_28487EF20;
  }

  v22 = [v18 stringWithFormat:@"%@%@", v17, selfCopy];

  if (filterCriteria)
  {
  }

  return v22;
}

- (id)shortPredicateNoSpaces
{
  shortPredicate = [(WiFiUsageLQMTriggerCriteria *)self shortPredicate];
  v3 = MEMORY[0x277CCAC68];
  v4 = [MEMORY[0x277CCAC68] escapedPatternForString:@" "];
  v5 = [v3 regularExpressionWithPattern:v4 options:1 error:0];

  v6 = [v5 stringByReplacingMatchesInString:shortPredicate options:0 range:0 withTemplate:{objc_msgSend(shortPredicate, "length"), &stru_28487EF20}];

  return v6;
}

+ (id)predicateNoQuotes:(id)quotes
{
  predicateFormat = [quotes predicateFormat];
  v4 = MEMORY[0x277CCAC68];
  v5 = [MEMORY[0x277CCAC68] escapedPatternForString:@""];
  v6 = [v4 regularExpressionWithPattern:v5 options:1 error:0];

  v7 = [v6 stringByReplacingMatchesInString:predicateFormat options:0 range:0 withTemplate:{objc_msgSend(predicateFormat, "length"), &stru_28487EF20}];

  return v7;
}

- (id)description
{
  v3 = 0x277CCA000;
  v20 = MEMORY[0x277CCACA8];
  shortPredicate = [(WiFiUsageLQMTriggerCriteria *)self shortPredicate];
  if (self->_valid)
  {
    if (self->_matched)
    {
      v5 = @"True";
    }

    else
    {
      v5 = @"False";
    }
  }

  else
  {
    v5 = @"N/A";
  }

  bssid = self->_bssid;
  v7 = MEMORY[0x277CCACA8];
  firstTriggered = self->_firstTriggered;
  if (firstTriggered)
  {
    v19 = _dateFormatter != 0;
    if (_dateFormatter)
    {
      v9 = [_dateFormatter stringFromDate:firstTriggered];
    }

    else
    {
      v9 = self->_firstTriggered;
    }

    v18 = v9;
    v10 = [v7 stringWithFormat:@"triggering since %@", v9];
  }

  else
  {
    v19 = 0;
    v10 = &stru_28487EF20;
  }

  lastTriggered = self->_lastTriggered;
  if (lastTriggered)
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = _dateFormatter != 0;
    if (_dateFormatter)
    {
      v3 = [_dateFormatter stringFromDate:lastTriggered];
    }

    else
    {
      v3 = lastTriggered;
    }

    v14 = [v12 stringWithFormat:@"until %@", v3];
  }

  else
  {
    v13 = 0;
    v14 = &stru_28487EF20;
  }

  v15 = [v7 stringWithFormat:@"%@ %@", v10, v14];
  v16 = [v20 stringWithFormat:@"%@ on %@ matched:%@ %@", shortPredicate, bssid, v5, v15];

  if (lastTriggered)
  {
  }

  if (v13)
  {
  }

  if (firstTriggered)
  {
  }

  if (v19)
  {
  }

  return v16;
}

- (id)redactedDescription
{
  v3 = 0x277CCA000;
  v4 = MEMORY[0x277CCACA8];
  shortPredicate = [(WiFiUsageLQMTriggerCriteria *)self shortPredicate];
  if (self->_valid)
  {
    if (self->_matched)
    {
      v6 = @"True";
    }

    else
    {
      v6 = @"False";
    }
  }

  else
  {
    v6 = @"N/A";
  }

  v7 = MEMORY[0x277CCACA8];
  firstTriggered = self->_firstTriggered;
  if (firstTriggered)
  {
    v19 = _dateFormatter != 0;
    if (_dateFormatter)
    {
      v9 = [_dateFormatter stringFromDate:firstTriggered];
    }

    else
    {
      v9 = self->_firstTriggered;
    }

    v18 = v9;
    v10 = [v7 stringWithFormat:@"triggering since %@", v9];
  }

  else
  {
    v19 = 0;
    v10 = &stru_28487EF20;
  }

  lastTriggered = self->_lastTriggered;
  if (lastTriggered)
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = _dateFormatter != 0;
    if (_dateFormatter)
    {
      v3 = [_dateFormatter stringFromDate:lastTriggered];
    }

    else
    {
      v3 = lastTriggered;
    }

    v14 = [v12 stringWithFormat:@"until %@", v3];
  }

  else
  {
    v13 = 0;
    v14 = &stru_28487EF20;
  }

  v15 = [v7 stringWithFormat:@"%@ %@", v10, v14];
  v16 = [v4 stringWithFormat:@"%@ on <redacted> matched:%@ %@", shortPredicate, v6, v15];

  if (lastTriggered)
  {
  }

  if (v13)
  {
  }

  if (firstTriggered)
  {
  }

  if (v19)
  {
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  [v4 setType:self->_type];
  [v4 setPredicate:self->_predicate];
  [v4 setRequiredFieldsValid:self->_requiredFieldsValid];
  [v4 setValid:self->_valid];
  [v4 setMatched:self->_matched];
  [v4 setFirstTriggered:self->_firstTriggered];
  [v4 setLastTriggered:self->_lastTriggered];
  [v4 setCurrentSample:self->_currentSample];
  [v4 setBssid:self->_bssid];
  [v4 setFilterCriteria:self->_filterCriteria];
  return v4;
}

+ (id)parseCriteria:(id)criteria intoRequiredFields:(id)fields andFeatures:(id)features forFields:(id)forFields withType:(id)type isFilter:(BOOL)filter
{
  filterCopy = filter;
  criteriaCopy = criteria;
  fieldsCopy = fields;
  featuresCopy = features;
  forFieldsCopy = forFields;
  typeCopy = type;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"AND", @"&&", @"OR", @"||", 0}];
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"NOT", @"!", 0}];
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"=", @"==", @">=", @"=>", @"<=", @"=<", @">", @"<", @"!=", @"<>", @"contains", 0}];
  v20 = [criteriaCopy objectForKey:@"test"];

  if (!v20)
  {
    v22 = v17;
    v23 = v19;
    NSLog(&cfstr_SFailedToParse_6.isa, "+[WiFiUsageLQMTriggerCriteria parseCriteria:intoRequiredFields:andFeatures:forFields:withType:isFilter:]", criteriaCopy);
    v32 = 0;
    v29 = fieldsCopy;
    goto LABEL_49;
  }

  v52 = filterCopy;
  v21 = [criteriaCopy objectForKey:@"test"];
  if (([v18 containsObject:v21] & 1) == 0 && !objc_msgSend(v17, "containsObject:", v21))
  {
    v29 = fieldsCopy;
    if (![v19 containsObject:v21] || (objc_msgSend(criteriaCopy, "objectForKey:", @"field"), v33 = objc_claimAutoreleasedReturnValue(), v33, !v33))
    {
      v22 = v17;
      v23 = v19;
      NSLog(&cfstr_SFailedToParse_10.isa, "+[WiFiUsageLQMTriggerCriteria parseCriteria:intoRequiredFields:andFeatures:forFields:withType:isFilter:]", criteriaCopy);
LABEL_47:
      v32 = 0;
      goto LABEL_48;
    }

    v49 = [criteriaCopy objectForKey:@"threshold"];
    v34 = [criteriaCopy objectForKey:@"field"];
    if ([v34 hasSuffix:@"PerSecond"])
    {
      v35 = [v34 substringToIndex:{objc_msgSend(v34, "length") - objc_msgSend(@"PerSecond", "length")}];

      v34 = v35;
    }

    if ([forFieldsCopy containsObject:v34])
    {
      v47 = v34;
      v51 = featuresCopy;
      if (v52)
      {

        typeCopy = @"value";
      }

      v36 = +[WiFiUsageLQMTriggerCriteria dataTriggeredTypes];
      v37 = [v36 indexOfObject:typeCopy];

      v22 = v17;
      if (!v37)
      {
        v23 = v19;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v45 = @"%@ %@ '%@'";
        }

        else
        {
          v45 = @"%@ %@ %@";
        }

        v39 = v47;
        v32 = [MEMORY[0x277CCACA8] stringWithFormat:v45, v47, v21, v49];
        featuresCopy = v51;
        if (v29)
        {
          [v29 addObject:v47];
        }

        goto LABEL_43;
      }

      featuresCopy = v51;
      v23 = v19;
      if (v37 == 1)
      {
        v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"SUBQUERY(SELF, $x, $x.fieldName == %@ AND $x.median %@ %@).@count > 0", v47, v21, v49];
        v38 = [[WiFiUsageLQMFeature alloc] initWithField:v47 andPerSecond:[WiFiUsageLQMSample isPerSecond:v47]];
        if (v51)
        {
          [v51 addObject:v38];
        }

        if (v29)
        {
          [v29 addObject:v38];
        }

        v39 = v47;
        goto LABEL_43;
      }

      NSLog(&cfstr_SFailedToParse_12.isa, "+[WiFiUsageLQMTriggerCriteria parseCriteria:intoRequiredFields:andFeatures:forFields:withType:isFilter:]", criteriaCopy);
      v34 = v47;
    }

    else
    {
      v22 = v17;
      v23 = v19;
      NSLog(&cfstr_SFailedToParse_11.isa, "+[WiFiUsageLQMTriggerCriteria parseCriteria:intoRequiredFields:andFeatures:forFields:withType:isFilter:]", v34, criteriaCopy);
    }

    goto LABEL_47;
  }

  v22 = v17;
  v23 = v19;
  v24 = [criteriaCopy objectForKey:@"conditions"];
  if (v24)
  {
    v25 = v24;
    [criteriaCopy objectForKey:@"conditions"];
    v26 = v50 = featuresCopy;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    featuresCopy = v50;
    if (isKindOfClass)
    {
      v28 = [criteriaCopy objectForKey:@"conditions"];
      if ([v18 containsObject:v21])
      {
        v29 = fieldsCopy;
        if ([v28 count] != 1)
        {
          NSLog(&cfstr_SFailedToParse_8.isa, "+[WiFiUsageLQMTriggerCriteria parseCriteria:intoRequiredFields:andFeatures:forFields:withType:isFilter:]", v21, [v28 count], criteriaCopy);
LABEL_37:

          goto LABEL_47;
        }

        v30 = [v28 objectAtIndexedSubscript:0];
        v31 = [self parseCriteria:v30 intoRequiredFields:fieldsCopy andFeatures:v50 forFields:forFieldsCopy withType:typeCopy isFilter:v52];

        featuresCopy = v50;
        if (!v31)
        {
          goto LABEL_37;
        }

        v49 = v28;
        v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@(%@)", v21, v31];
      }

      else
      {
        v49 = v28;
        v32 = 0;
        v29 = fieldsCopy;
      }

      if (![v22 containsObject:v21])
      {
        goto LABEL_44;
      }

      if ([v49 count] != 2)
      {
        NSLog(&cfstr_SFailedToParse_9.isa, "+[WiFiUsageLQMTriggerCriteria parseCriteria:intoRequiredFields:andFeatures:forFields:withType:isFilter:]", v21, [v49 count]);

        v28 = v49;
        goto LABEL_37;
      }

      v40 = [v49 objectAtIndexedSubscript:0];
      v41 = featuresCopy;
      v42 = v40;
      v48 = [self parseCriteria:v40 intoRequiredFields:v29 andFeatures:v41 forFields:forFieldsCopy withType:typeCopy isFilter:v52];

      v43 = [v49 objectAtIndexedSubscript:1];
      v44 = [self parseCriteria:v43 intoRequiredFields:v29 andFeatures:v50 forFields:forFieldsCopy withType:typeCopy isFilter:v52];

      if (!v48 || !v44)
      {

        v28 = v49;
        featuresCopy = v50;
        goto LABEL_37;
      }

      v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"( %@) %@(%@)", v48, v21, v44];

      v39 = v48;
      v32 = v54;
      featuresCopy = v50;
LABEL_43:

LABEL_44:
      goto LABEL_48;
    }
  }

  NSLog(&cfstr_SFailedToParse_7.isa, "+[WiFiUsageLQMTriggerCriteria parseCriteria:intoRequiredFields:andFeatures:forFields:withType:isFilter:]", criteriaCopy);
  v32 = 0;
  v29 = fieldsCopy;
LABEL_48:

LABEL_49:

  return v32;
}

@end