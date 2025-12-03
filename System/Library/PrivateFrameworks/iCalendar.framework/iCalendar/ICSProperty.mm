@interface ICSProperty
+ (id)valueAndParameterClasses;
- (ICSProperty)initWithCoder:(id)coder;
- (ICSProperty)initWithValue:(id)value type:(unint64_t)type;
- (id)allParameters;
- (id)description;
- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string;
- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string additionalParameters:(id)parameters;
- (void)_appendDateTimeInDate:(id)date asUTCToResult:(id)result;
- (void)_setParsedValues:(id)values type:(unint64_t)type;
- (void)addParameter:(id)parameter withRawValue:(id)value options:(unint64_t)options;
- (void)encodeWithCoder:(id)coder;
- (void)setParameterValue:(id)value forName:(id)name;
- (void)setParameters:(id)parameters;
- (void)setValue:(id)value type:(unint64_t)type;
- (void)setValueAsProperty:(id)property withRawValue:(const char *)value options:(unint64_t)options;
@end

@implementation ICSProperty

- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string additionalParameters:(id)parameters
{
  v39 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  parametersCopy = parameters;
  v9 = MEMORY[0x277CBEB38];
  selfCopy = self;
  parameters = [(ICSProperty *)self parameters];
  v11 = [v9 dictionaryWithDictionary:parameters];

  if (parametersCopy)
  {
    [v11 addEntriesFromDictionary:parametersCopy];
  }

  v29 = parametersCopy;
  allKeys = [v11 allKeys];
  v13 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  v15 = v11;
  if (v14)
  {
    v16 = v14;
    v17 = *v35;
    v32 = v15;
    do
    {
      v18 = 0;
      do
      {
        if (*v35 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v34 + 1) + 8 * v18);
        optionsCopy2 = options;
        if ((options & 0x10) != 0)
        {
          if ([(ICSProperty *)selfCopy shouldObscureParameter:*(*(&v34 + 1) + 8 * v18)])
          {
            optionsCopy2 = options | 0x20;
          }

          else
          {
            optionsCopy2 = options;
          }
        }

        v21 = [v15 objectForKey:v19];
        v22 = stringCopy;
        v23 = v19;
        [v22 appendString:@";"];
        [v22 appendString:v23];

        [v22 appendString:@"="];
        if ([v23 isEqualToString:@"ALTREP"])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v21 absoluteString];
          }

          else
          {
            NSLog(&cfstr_ParameterBridi.isa, v21);
            [v21 description];
          }
          v25 = ;
          _ICSStringForParameterQuotedValue = [v25 _ICSStringForParameterQuotedValue];

LABEL_29:
          [v22 appendString:@""];
          [_ICSStringForParameterQuotedValue _ICSStringWithOptions:optionsCopy2 appendingToString:v22];
          [v22 appendString:@""];
LABEL_30:

          goto LABEL_31;
        }

        if ([v23 isEqualToString:@"RSVP"])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v21 _ICSBoolAppendingToString:v22];
            goto LABEL_32;
          }
        }

        if (([v23 isEqualToString:@"CN"] & 1) != 0 || (objc_msgSend(v23, "isEqualToString:", @"DIR") & 1) != 0 || (objc_msgSend(v23, "isEqualToString:", @"SENT-BY") & 1) != 0 || (objc_msgSend(v23, "isEqualToString:", @"X-CALENDARSERVER-ATTENDEE-REF") & 1) != 0 || (objc_msgSend(v23, "isEqualToString:", @"X-CALENDARSERVER-EMAIL") & 1) != 0 || (objc_msgSend(v23, "isEqualToString:", @"EMAIL") & 1) != 0 || (objc_msgSend(v23, "isEqualToString:", @"X-APPLE-TELEPHONE") & 1) != 0 || objc_msgSend(v23, "isEqualToString:", @"TITLE"))
        {
          _ICSStringForParameterQuotedValue = [v21 _ICSStringForParameterQuotedValue];
          goto LABEL_29;
        }

        if ([v23 isEqualToString:@"FBTYPE"])
        {
          [v21 _ICSFBTypeAppendingToString:v22];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v21 _ICSParametersAppendingToString:v22];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (_ICSStringWithOptions_appendingToString_additionalParameters__onceToken != -1)
              {
                [ICSProperty(ICSWriter) _ICSStringWithOptions:appendingToString:additionalParameters:];
              }

              if ([v21 rangeOfCharacterFromSet:_ICSStringWithOptions_appendingToString_additionalParameters__sQuoteCharacters] == 0x7FFFFFFFFFFFFFFFLL)
              {
                _ICSStringForParameterQuotedValue = [v21 _ICSStringForParameterValue];
                [_ICSStringForParameterQuotedValue _ICSStringWithOptions:optionsCopy2 appendingToString:v22];
                goto LABEL_30;
              }

              [v22 appendString:@""];
              _ICSStringForParameterQuotedValue2 = [v21 _ICSStringForParameterQuotedValue];
              [_ICSStringForParameterQuotedValue2 _ICSStringWithOptions:optionsCopy2 appendingToString:v22];

              [v22 appendString:@""];
LABEL_31:
              v15 = v32;
              goto LABEL_32;
            }

            [v21 _ICSStringWithOptions:optionsCopy2 appendingToString:v22];
          }
        }

LABEL_32:

        ++v18;
      }

      while (v16 != v18);
      v27 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      v16 = v27;
    }

    while (v27);
  }

  v28 = *MEMORY[0x277D85DE8];
}

uint64_t __87__ICSProperty_ICSWriter___ICSStringWithOptions_appendingToString_additionalParameters___block_invoke()
{
  _ICSStringWithOptions_appendingToString_additionalParameters__sQuoteCharacters = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@":, "}];;

  return MEMORY[0x2821F96F8]();
}

- (void)_appendDateTimeInDate:(id)date asUTCToResult:(id)result
{
  resultCopy = result;
  dateCopy = date;
  v12 = objc_alloc_init(ICSCalendar);
  v7 = [(ICSCalendar *)v12 systemDateForDate:dateCopy options:0];

  v8 = objc_alloc(MEMORY[0x277CBEA80]);
  v9 = [v8 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v10 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
  [v9 setTimeZone:v10];

  v11 = [v9 components:766 fromDate:v7];
  [resultCopy appendFormat:@"%.4d%.2d%.2dT%.2d%.2d%.2dZ", objc_msgSend(v11, "year"), objc_msgSend(v11, "month"), objc_msgSend(v11, "day"), objc_msgSend(v11, "hour"), objc_msgSend(v11, "minute"), objc_msgSend(v11, "second")];
}

- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string
{
  stringCopy = string;
  parameters = [(ICSProperty *)self parameters];
  if (parameters)
  {

LABEL_4:
    [(ICSProperty *)self _ICSStringWithOptions:options appendingToString:stringCopy additionalParameters:0];
    goto LABEL_5;
  }

  if ([(ICSProperty *)self alwaysHasParametersToSerialize])
  {
    goto LABEL_4;
  }

LABEL_5:
  if ((options & 0x10) != 0 && [(ICSProperty *)self shouldObscureValue])
  {
    options |= 0x20uLL;
  }

  switch([(ICSProperty *)self type])
  {
    case 5003uLL:
      value = [(ICSProperty *)self value];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        goto LABEL_49;
      }

      value2 = [(ICSProperty *)self value];
      NSLog(&cfstr_PropertyvalueB_9.isa, value2);
      break;
    case 5004uLL:
      value3 = [(ICSProperty *)self value];
      objc_opt_class();
      v30 = objc_opt_isKindOfClass();

      if (v30)
      {
        goto LABEL_49;
      }

      value2 = [(ICSProperty *)self value];
      NSLog(&cfstr_PropertyvalueB_7.isa, value2);
      break;
    case 5005uLL:
      value4 = [(ICSProperty *)self value];
      objc_opt_class();
      v39 = objc_opt_isKindOfClass();

      if (v39)
      {
        goto LABEL_49;
      }

      value2 = [(ICSProperty *)self value];
      NSLog(&cfstr_PropertyvalueB_6.isa, value2);
      break;
    case 5006uLL:
      value5 = [(ICSProperty *)self value];
      v34 = objc_opt_class();
      v35 = objc_opt_class();

      if (v34 == v35)
      {
        goto LABEL_49;
      }

      value2 = [(ICSProperty *)self value];
      NSLog(&cfstr_PropertyvalueB.isa, value2);
      break;
    case 5007uLL:
    case 5010uLL:
      value6 = [(ICSProperty *)self value];
      if (value6)
      {
        v8 = value6;
        value7 = [(ICSProperty *)self value];
        objc_opt_class();
        v10 = objc_opt_isKindOfClass();

        if ((v10 & 1) == 0)
        {
          value8 = [(ICSProperty *)self value];
          NSLog(&cfstr_PropertyvalueB_4.isa, value8);
        }
      }

      [stringCopy appendString:@":"];
      value9 = [(ICSProperty *)self value];
      _ICSStringForProperyValue = [value9 _ICSStringForProperyValue];
      [_ICSStringForProperyValue _ICSStringWithOptions:options appendingToString:stringCopy];

      goto LABEL_51;
    case 5008uLL:
      value10 = [(ICSProperty *)self value];
      objc_opt_class();
      v41 = objc_opt_isKindOfClass();

      if (v41)
      {
        goto LABEL_49;
      }

      value2 = [(ICSProperty *)self value];
      NSLog(&cfstr_PropertyvalueB_5.isa, value2);
      break;
    case 5009uLL:
      value11 = [(ICSProperty *)self value];
      objc_opt_class();
      v43 = objc_opt_isKindOfClass();

      if (v43)
      {
        goto LABEL_49;
      }

      value2 = [(ICSProperty *)self value];
      NSLog(&cfstr_PropertyvalueB_14.isa, value2);
      break;
    case 5011uLL:
      value12 = [(ICSProperty *)self value];
      objc_opt_class();
      v52 = objc_opt_isKindOfClass();

      if (v52)
      {
        goto LABEL_49;
      }

      value2 = [(ICSProperty *)self value];
      NSLog(&cfstr_PropertyvalueB_1.isa, value2);
      break;
    case 5012uLL:
      value13 = [(ICSProperty *)self value];
      objc_opt_class();
      v49 = objc_opt_isKindOfClass();

      if ((v49 & 1) == 0)
      {
        value14 = [(ICSProperty *)self value];
        NSLog(&cfstr_PropertyvalueB_15.isa, value14);
      }

      [stringCopy appendString:@":"];
      value9 = [(ICSProperty *)self value];
      [value9 _ICSBoolAppendingToString:stringCopy];
      goto LABEL_51;
    case 5013uLL:
      value15 = [(ICSProperty *)self value];
      objc_opt_class();
      v18 = objc_opt_isKindOfClass();

      if ((v18 & 1) == 0)
      {
        value16 = [(ICSProperty *)self value];
        value17 = [(ICSProperty *)self value];
        v21 = objc_opt_class();
        NSLog(&cfstr_PropertyvalueB_3.isa, value16, v21);
      }

      v22 = stringCopy;
      [v22 appendString:@";"];
      [v22 appendString:@"VALUE"];
      [v22 appendString:@"="];
      [v22 appendString:@"URI"];

      [v22 appendString:@":"];
      value18 = [(ICSProperty *)self value];
      value9 = value18;
      optionsCopy2 = options;
      v25 = v22;
      goto LABEL_50;
    case 5016uLL:
      value19 = [(ICSProperty *)self value];
      objc_opt_class();
      v32 = objc_opt_isKindOfClass();

      if (v32)
      {
        goto LABEL_49;
      }

      value2 = [(ICSProperty *)self value];
      NSLog(&cfstr_PropertyvalueB_0.isa, value2);
      break;
    case 5018uLL:
      value20 = [(ICSProperty *)self value];
      objc_opt_class();
      v27 = objc_opt_isKindOfClass();

      if ((v27 & 1) == 0)
      {
        value21 = [(ICSProperty *)self value];
        NSLog(&cfstr_PropertyvalueB_13.isa, value21);
      }

      [stringCopy appendString:@":"];
      value9 = [(ICSProperty *)self value];
      [value9 _ICSUTCOffsetAppendingToString:stringCopy];
      goto LABEL_51;
    case 5020uLL:
      value22 = [(ICSProperty *)self value];
      objc_opt_class();
      v15 = objc_opt_isKindOfClass();

      if (v15)
      {
        goto LABEL_49;
      }

      value2 = [(ICSProperty *)self value];
      NSLog(&cfstr_PropertyvalueB_12.isa, value2);
      break;
    case 5021uLL:
      value23 = [(ICSProperty *)self value];
      objc_opt_class();
      v45 = objc_opt_isKindOfClass();

      if (v45)
      {
        goto LABEL_49;
      }

      value2 = [(ICSProperty *)self value];
      NSLog(&cfstr_PropertyvalueB_2.isa, value2);
      break;
    case 5025uLL:
      value24 = [(ICSProperty *)self value];
      objc_opt_class();
      v47 = objc_opt_isKindOfClass();

      if (v47)
      {
        goto LABEL_49;
      }

      value2 = [(ICSProperty *)self value];
      NSLog(&cfstr_PropertyvalueB_11.isa, value2);
      break;
    case 5030uLL:
      value25 = [(ICSProperty *)self value];
      objc_opt_class();
      v56 = objc_opt_isKindOfClass();

      if (v56)
      {
        goto LABEL_49;
      }

      value2 = [(ICSProperty *)self value];
      NSLog(&cfstr_PropertyvalueB_10.isa, value2);
      break;
    case 5031uLL:
      value26 = [(ICSProperty *)self value];
      objc_opt_class();
      v54 = objc_opt_isKindOfClass();

      if (v54)
      {
        goto LABEL_49;
      }

      value2 = [(ICSProperty *)self value];
      NSLog(&cfstr_PropertyvalueB_8.isa, value2);
      break;
    default:
      goto LABEL_49;
  }

LABEL_49:
  [stringCopy appendString:@":"];
  value18 = [(ICSProperty *)self value];
  value9 = value18;
  optionsCopy2 = options;
  v25 = stringCopy;
LABEL_50:
  [value18 _ICSStringWithOptions:optionsCopy2 appendingToString:v25];
LABEL_51:
}

- (void)setParameters:(id)parameters
{
  obj = parameters;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = obj;
  v6 = obj;
  if (isKindOfClass)
  {
    v6 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:obj];

    v5 = obj;
  }

  parameters = self->_parameters;
  p_parameters = &self->_parameters;
  if (parameters != v5)
  {
    objc_storeStrong(p_parameters, v6);
  }
}

- (void)setParameterValue:(id)value forName:(id)name
{
  valueCopy = value;
  nameCopy = name;
  v7 = valueCopy;
  v8 = nameCopy;
  parameters = self->_parameters;
  if (valueCopy)
  {
    if (!parameters)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v11 = self->_parameters;
      self->_parameters = v10;

      v7 = valueCopy;
      parameters = self->_parameters;
    }

    [(NSMutableDictionary *)parameters setObject:v7 forKey:v8];
  }

  else
  {
    [(NSMutableDictionary *)parameters removeObjectForKey:v8];
  }
}

- (void)encodeWithCoder:(id)coder
{
  parameters = self->_parameters;
  coderCopy = coder;
  [coderCopy encodeObject:parameters forKey:@"Parameters"];
  [coderCopy encodeInteger:self->_type forKey:@"Type"];
  [coderCopy encodeObject:self->_value forKey:@"Value"];
}

+ (id)valueAndParameterClasses
{
  if (valueAndParameterClasses_onceToken != -1)
  {
    +[ICSProperty valueAndParameterClasses];
  }

  v3 = valueAndParameterClasses_valueAndParameterClasses;

  return v3;
}

void __39__ICSProperty_valueAndParameterClasses__block_invoke()
{
  v48 = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v28 = objc_opt_class();
  v29 = objc_opt_class();
  v30 = objc_opt_class();
  v31 = objc_opt_class();
  v32 = objc_opt_class();
  v33 = objc_opt_class();
  v34 = objc_opt_class();
  v35 = objc_opt_class();
  v36 = objc_opt_class();
  v37 = objc_opt_class();
  v38 = objc_opt_class();
  v39 = objc_opt_class();
  v40 = objc_opt_class();
  v41 = objc_opt_class();
  v42 = objc_opt_class();
  v43 = objc_opt_class();
  v44 = objc_opt_class();
  v45 = objc_opt_class();
  v46 = objc_opt_class();
  v47 = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:&v5 count:43];
  v2 = [v0 setWithArray:{v1, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46}];
  v3 = valueAndParameterClasses_valueAndParameterClasses;
  valueAndParameterClasses_valueAndParameterClasses = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (ICSProperty)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = ICSProperty;
  v5 = [(ICSProperty *)&v12 init];
  if (v5)
  {
    valueAndParameterClasses = [objc_opt_class() valueAndParameterClasses];
    v7 = [coderCopy decodeObjectOfClasses:valueAndParameterClasses forKey:@"Parameters"];
    parameters = v5->_parameters;
    v5->_parameters = v7;

    v5->_type = [coderCopy decodeIntegerForKey:@"Type"];
    v9 = [coderCopy decodeObjectOfClasses:valueAndParameterClasses forKey:@"Value"];
    value = v5->_value;
    v5->_value = v9;
  }

  return v5;
}

- (id)allParameters
{
  v2 = MEMORY[0x277CBEAC0];
  parameters = [(ICSProperty *)self parameters];
  v4 = [v2 dictionaryWithDictionary:parameters];

  return v4;
}

- (ICSProperty)initWithValue:(id)value type:(unint64_t)type
{
  valueCopy = value;
  v10.receiver = self;
  v10.super_class = ICSProperty;
  v7 = [(ICSProperty *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(ICSProperty *)v7 setValue:valueCopy type:type];
  }

  return v8;
}

- (void)setValue:(id)value type:(unint64_t)type
{
  if (*&self->_type != __PAIR128__(value, type))
  {
    objc_storeStrong(&self->_value, value);
    self->_type = type;
  }

  MEMORY[0x2821F96F8]();
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  stringValue = [(ICSProperty *)self stringValue];
  v7 = [v3 stringWithFormat:@"<%@ %p - %@>", v5, self, stringValue];

  return v7;
}

- (void)addParameter:(id)parameter withRawValue:(id)value options:(unint64_t)options
{
  parameterCopy = parameter;
  valueCopy = value;
  if ([parameterCopy isEqualToString:@"CUTYPE"])
  {
    v8 = [ICSCalendarUserParameter calendarUserTypeParameterFromICSString:valueCopy];
    goto LABEL_26;
  }

  if ([parameterCopy isEqualToString:@"ROLE"])
  {
    v8 = [ICSRoleParameter roleParameterFromICSString:valueCopy];
    goto LABEL_26;
  }

  if ([parameterCopy isEqualToString:@"PARTSTAT"])
  {
    v8 = [ICSParticipationStatusParameter participationStatusParameterFromICSString:valueCopy];
    goto LABEL_26;
  }

  if ([parameterCopy isEqualToString:@"SCHEDULE-STATUS"])
  {
    v8 = [ICSScheduleStatusParameter scheduleStatusParameterFromICSString:valueCopy];
    goto LABEL_26;
  }

  if ([parameterCopy isEqualToString:@"SCHEDULE-AGENT"])
  {
    v8 = [ICSScheduleAgentParameter scheduleAgentParameterFromICSString:valueCopy];
    goto LABEL_26;
  }

  if ([parameterCopy isEqualToString:@"RSVP"])
  {
    v8 = [MEMORY[0x277CCABB0] BOOLFromICSString:valueCopy];
    goto LABEL_26;
  }

  if ([parameterCopy isEqualToString:@"SCHEDULE-FORCE-SEND"])
  {
    v8 = [ICSScheduleForceSendParameter scheduleForceSendParameterFromICSString:valueCopy];
    goto LABEL_26;
  }

  if ([parameterCopy isEqualToString:@"X-CALENDARSERVER-DTSTAMP"])
  {
    v9 = ICSDateValue;
LABEL_17:
    v8 = [(__objc2_class *)v9 dateFromICSString:valueCopy];
    goto LABEL_26;
  }

  if ([parameterCopy isEqualToString:@"FBTYPE"])
  {
    v8 = [ICSFreeBusyTypeParameter freeBusyTypeParameterFromICSString:valueCopy];
  }

  else if ([parameterCopy isEqualToString:@"X-APPLE-RELATED-TRAVEL"])
  {
    v8 = [ICSDuration durationFromICSString:valueCopy];
  }

  else if ([parameterCopy isEqualToString:@"RELTYPE"])
  {
    v8 = [ICSRelationshipTypeParameter relationshipTypeParameterFromICSString:valueCopy];
  }

  else if ([parameterCopy isEqualToString:@"X-APPLE-MAPKIT-HANDLE"])
  {
    v10 = ICSDecodeBase64(0, valueCopy);
    v8 = CFAutorelease(v10);
  }

  else
  {
    if ([parameterCopy isEqualToString:@"ACKNOWLEDGED"])
    {
      v9 = ICSDateTimeUTCValue;
      goto LABEL_17;
    }

    if ([parameterCopy isEqualToString:@"TO-ALL-PROPOSED-NEW-TIME"])
    {
      v8 = [ICSAlternateTimeProposal alternateTimeProposalFromICSCString:valueCopy];
    }

    else
    {
      v8 = valueCopy;
    }
  }

LABEL_26:
  v11 = v8;
  [(ICSProperty *)self setParameterValue:v8 forName:parameterCopy];
}

- (void)_setParsedValues:(id)values type:(unint64_t)type
{
  valuesCopy = values;
  if ([valuesCopy count])
  {
    v6 = [valuesCopy objectAtIndex:0];
  }

  else
  {
    v6 = 0;
  }

  [(ICSProperty *)self setValue:v6 type:type];
}

- (void)setValueAsProperty:(id)property withRawValue:(const char *)value options:(unint64_t)options
{
  optionsCopy = options;
  propertyCopy = property;
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:value];
  v10 = [MEMORY[0x277CBEA90] dataWithBytes:value length:8];
  v11 = v10;
  if (!v9)
  {
    v12 = [v10 base64EncodedStringWithOptions:0];
    NSLog(&cfstr_Utf8EncodingFa.isa, propertyCopy, v12);

    v13 = CFStringCreateWithCString(0, value, 0x201u);
    if (!v13)
    {
      v13 = CFStringCreateWithCString(0, value, 0);
      if (!v13)
      {
        v13 = CFStringCreateWithCString(0, value, 1u);
        if (!v13)
        {
          v13 = CFStringCreateWithCString(0, value, 0x500u);
          if (!v13)
          {
            v26 = [v11 base64EncodedStringWithOptions:0];
            NSLog(&cfstr_NoCorrectEncod.isa, propertyCopy, v26);

            v9 = 0;
            goto LABEL_135;
          }
        }
      }
    }

    v9 = v13;
  }

  if ([propertyCopy isEqualToString:@"DURATION"])
  {
    v14 = [ICSDuration durationFromICSString:v9];
    v15 = v14;
    if ((optionsCopy & 1) == 0 || v14)
    {
      selfCopy12 = self;
      v17 = v15;
      v18 = 5011;
LABEL_51:
      [(ICSProperty *)selfCopy12 setValue:v17 type:v18];
LABEL_52:

      goto LABEL_135;
    }

    goto LABEL_56;
  }

  if ([propertyCopy isEqualToString:@"METHOD"])
  {
    v19 = [ICSMethodValue methodValueFromICSString:v9];
    v15 = v19;
    if ((optionsCopy & 1) == 0 || v19)
    {
      selfCopy12 = self;
      v17 = v15;
      v18 = 5025;
      goto LABEL_51;
    }

    goto LABEL_56;
  }

  if ([propertyCopy isEqualToString:@"ACTION"])
  {
    v20 = [ICSActionValue actionValueFromICSString:v9];
    v15 = v20;
    if ((optionsCopy & 1) == 0 || v20)
    {
      selfCopy12 = self;
      v17 = v15;
      v18 = 5020;
      goto LABEL_51;
    }

    goto LABEL_56;
  }

  if ([propertyCopy isEqualToString:@"STATUS"])
  {
    v21 = [ICSStatusValue statusValueFromICSString:v9];
    v15 = v21;
    if ((optionsCopy & 1) == 0 || v21)
    {
      selfCopy12 = self;
      v17 = v15;
      v18 = 5003;
      goto LABEL_51;
    }

    goto LABEL_56;
  }

  if ([propertyCopy isEqualToString:@"X-CALENDARSERVER-ACCESS"])
  {
    v22 = [ICSCalendarServerAccessValue calendarServerAccessFromICSString:v9];
    v15 = v22;
    if ((optionsCopy & 1) == 0 || v22)
    {
      selfCopy12 = self;
      v17 = v15;
      v18 = 5030;
      goto LABEL_51;
    }

    goto LABEL_56;
  }

  if ([propertyCopy isEqualToString:@"URL"])
  {
    v23 = [MEMORY[0x277CBEBC0] _lp_URLWithUserTypedString:v9 relativeToURL:0];
    v15 = v23;
    if ((optionsCopy & 1) == 0 || v23)
    {
      [(ICSProperty *)self removeParameterValueForName:@"VALUE"];
      selfCopy12 = self;
      v17 = v15;
      v18 = 5013;
      goto LABEL_51;
    }

    goto LABEL_56;
  }

  if ([propertyCopy isEqualToString:@"TRANSP"])
  {
    v24 = [ICSTransparencyValue transparencyValueFromICSString:v9];
    v15 = v24;
    if ((optionsCopy & 1) == 0 || v24)
    {
      selfCopy12 = self;
      v17 = v15;
      v18 = 5004;
      goto LABEL_51;
    }

    goto LABEL_56;
  }

  if ([propertyCopy isEqualToString:@"X-APPLE-EWS-BUSYSTATUS"])
  {
    v25 = [ICSBusyStatusValue busyStatusValueFromICSString:v9];
    v15 = v25;
    if ((optionsCopy & 1) == 0 || v25)
    {
      selfCopy12 = self;
      v17 = v15;
      v18 = 5031;
      goto LABEL_51;
    }

    goto LABEL_56;
  }

  if ([propertyCopy isEqualToString:@"TRIGGER"])
  {
    v15 = [(ICSProperty *)self parameterValueForName:@"VALUE"];
    if (([v15 isEqualToString:@"DATE"] & 1) != 0 || objc_msgSend(v15, "isEqualToString:", @"DATE-TIME"))
    {
      v27 = [ICSDateValue dateFromICSString:v9];
      v28 = v27;
      if ((optionsCopy & 1) == 0 || v27)
      {
        dateType = [v27 dateType];
        selfCopy10 = self;
        v31 = v28;
LABEL_143:
        [(ICSProperty *)selfCopy10 setValue:v31 type:dateType];

        goto LABEL_52;
      }
    }

    else
    {
      v33 = [ICSDuration durationFromICSString:v9];
      v28 = v33;
      if ((optionsCopy & 1) == 0 || v33)
      {
        selfCopy10 = self;
        v31 = v28;
        dateType = 5011;
        goto LABEL_143;
      }
    }

LABEL_56:
    v34 = 0;
    goto LABEL_57;
  }

  if (([propertyCopy isEqualToString:@"ATTENDEE"] & 1) != 0 || objc_msgSend(propertyCopy, "isEqualToString:", @"ORGANIZER"))
  {
    v32 = [MEMORY[0x277CBEBC0] URLWithString:v9 encodingInvalidCharacters:0];
    v15 = v32;
    if ((optionsCopy & 1) == 0 || v32)
    {
      selfCopy12 = self;
      v17 = v15;
      v18 = 5021;
      goto LABEL_51;
    }

    goto LABEL_56;
  }

  if (![propertyCopy isEqualToString:@"ATTACH"])
  {
    if ([propertyCopy isEqualToString:@"CLASS"])
    {
      v68 = [ICSClassificationValue classificationValueFromICSString:v9];
      v15 = v68;
      if ((optionsCopy & 1) == 0 || v68)
      {
        selfCopy12 = self;
        v17 = v15;
        v18 = 5005;
        goto LABEL_51;
      }
    }

    goto LABEL_56;
  }

  v61 = [(ICSProperty *)self parameterValueForName:@"ENCODING"];
  if (v61)
  {
    v62 = v61;
    v63 = [(ICSProperty *)self parameterValueForName:@"ENCODING"];
    v64 = [v63 isEqualToString:@"BASE64"];

    if ((v64 & 1) == 0)
    {
      NSLog(&cfstr_IgnoringDataFo.isa, self);
      [(ICSProperty *)self setValue:0 type:5026];
      goto LABEL_135;
    }
  }

  v65 = [(ICSProperty *)self parameterValueForName:@"VALUE"];
  v66 = [v65 isEqualToString:@"BINARY"];

  if (v66)
  {
    v67 = ICSDecodeBase64(0, v9);
    if (v67)
    {
      array = v67;
      [(ICSProperty *)self setValue:v67 type:5026];
      goto LABEL_134;
    }

    goto LABEL_56;
  }

  v34 = 1;
LABEL_57:
  isMultiValued = [(ICSProperty *)self isMultiValued];
  if (isMultiValued)
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  else
  {
    array = 0;
  }

  v37 = [(__CFString *)v9 length];
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  *buffer = 0u;
  v73 = 0u;
  theString = v9;
  v83 = 0;
  v84 = v37;
  CharactersPtr = CFStringGetCharactersPtr(v9);
  CStringPtr = 0;
  v81 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v9, 0x600u);
  }

  v85 = 0;
  v86 = 0;
  v82 = CStringPtr;
  if (!v37)
  {
LABEL_123:
    if (!v34)
    {
      goto LABEL_130;
    }

    goto LABEL_124;
  }

  if (v37 == 1)
  {
    v37 = 0;
    goto LABEL_123;
  }

  v69 = v34;
  selfCopy13 = self;
  v71 = v11;
  v40 = 0;
  string = 0;
  v42 = 0;
  v43 = 0;
  do
  {
    v44 = v84;
    if (v84 <= v40)
    {
      goto LABEL_119;
    }

    if (v81)
    {
      v45 = v81[v83 + v40];
    }

    else if (v82)
    {
      v45 = v82[v83 + v40];
    }

    else
    {
      v46 = v85;
      if (v86 <= v40 || v85 > v40)
      {
        v48 = v40 - 4;
        if (v42 < 4)
        {
          v48 = 0;
        }

        if (v48 + 64 < v84)
        {
          v44 = v48 + 64;
        }

        v85 = v48;
        v86 = v44;
        v87.length = v44 - v48;
        v87.location = v83 + v48;
        CFStringGetCharacters(theString, v87, buffer);
        v46 = v85;
      }

      v45 = buffer[v40 - v46];
    }

    if (v45 != 44)
    {
      if (v45 != 92)
      {
        goto LABEL_119;
      }

      if (!string)
      {
        string = [MEMORY[0x277CCAB68] string];
      }

      v49 = [(__CFString *)v9 substringWithRange:v43, v42 - v43];
      [string appendString:v49];

      v50 = v42 + 1;
      v51 = v84;
      if (v84 <= v50)
      {
        v52 = 0;
        goto LABEL_92;
      }

      if (v81)
      {
        v52 = v81[v83 + v50];
      }

      else if (v82)
      {
        v52 = v82[v83 + v50];
      }

      else
      {
        if (v86 <= v50 || (v55 = v85, v85 > v50))
        {
          v56 = v50 - 4;
          if (v50 < 4)
          {
            v56 = 0;
          }

          if (v56 + 64 < v84)
          {
            v51 = v56 + 64;
          }

          v85 = v56;
          v86 = v51;
          v88.length = v51 - v56;
          v88.location = v83 + v56;
          CFStringGetCharacters(theString, v88, buffer);
          v55 = v85;
        }

        v52 = buffer[v50 - v55];
      }

      if (v52 > 0x4Du)
      {
        if (v52 > 0x6Du)
        {
          if (v52 != 110 && v52 != 114)
          {
            goto LABEL_92;
          }
        }

        else if (v52 != 78)
        {
          if (v52 == 92)
          {
            v57 = string;
            v58 = @"\\"";
LABEL_117:
            [v57 appendString:v58];
            goto LABEL_118;
          }

          goto LABEL_92;
        }

        v57 = string;
        v58 = @"\n";
        goto LABEL_117;
      }

      switch(v52)
      {
        case '""':
          v57 = string;
          v58 = @"";
          goto LABEL_117;
        case ',':
          v57 = string;
          v58 = @",";
          goto LABEL_117;
        case ';':
          v57 = string;
          v58 = @";";
          goto LABEL_117;
      }

LABEL_92:
      [string appendFormat:@"\\%c", v52];
LABEL_118:
      v43 = v42 + 2;
      ++v42;
      goto LABEL_119;
    }

    if (isMultiValued)
    {
      if (!string)
      {
        string = [MEMORY[0x277CCAB68] string];
      }

      v53 = [(__CFString *)v9 substringWithRange:v43, v42 - v43];
      [string appendString:v53];

      [array addObject:string];
      string2 = [MEMORY[0x277CCAB68] string];

      v43 = v42 + 1;
      string = string2;
    }

LABEL_119:
    v40 = ++v42;
  }

  while (&v37[-1].length + 7 > v42);
  if (string)
  {
    v59 = [(__CFString *)v9 substringWithRange:v43, v37 - v43];
    [string appendString:v59];

    v37 = string;
    v9 = v37;
  }

  else
  {
    v37 = 0;
  }

  self = selfCopy13;
  v11 = v71;
  if (!v69)
  {
LABEL_130:
    if (isMultiValued)
    {
      [array addObject:v9];
      [(ICSProperty *)self _setParsedValues:array type:5007];
    }

    else
    {
      [(ICSProperty *)self setValue:v9 type:5007];
    }

    goto LABEL_133;
  }

LABEL_124:
  v60 = [MEMORY[0x277CBEBC0] URLWithString:v9 encodingInvalidCharacters:0];
  if (v60)
  {
    [(ICSProperty *)self setValue:v60 type:5013];
  }

  else
  {
    NSLog(&cfstr_InvalidUriInAt.isa, v9, self);
  }

LABEL_133:
LABEL_134:

LABEL_135:
}

@end