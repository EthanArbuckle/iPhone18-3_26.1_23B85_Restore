@interface ICSComponent
+ (id)inheritanceKeywords;
+ (id)makeUID;
+ (id)stringFromRelationshipType:(unint64_t)type;
+ (id)stringFromStatus:(int)status;
+ (int)statusFromString:(id)string;
- (BOOL)forcedAllDay;
- (BOOL)ignorePropertyWithName:(id)name;
- (BOOL)isAllDay;
- (BOOL)validate:(id *)validate;
- (BOOL)x_apple_ews_needsserverconfirmation;
- (BOOL)x_apple_ignore_on_restore;
- (BOOL)x_apple_suggestionInfoChangesAcknowledged;
- (ICSComponent)init;
- (ICSDate)created;
- (ICSDate)dtend;
- (ICSDate)dtstamp;
- (ICSDate)dtstart;
- (ICSDate)last_modified;
- (ICSDate)recurrence_id;
- (ICSDate)x_apple_suggestionInfoTimestamp;
- (ICSDuration)duration;
- (ICSStructuredLocation)x_apple_structured_location;
- (ICSTrigger)trigger;
- (ICSUserAddress)organizer;
- (NSArray)exrule;
- (NSArray)rrule;
- (NSSet)propertiesToExcludeForChecksum;
- (NSString)description;
- (NSString)location;
- (NSString)statusString;
- (NSString)summary;
- (NSString)uid;
- (NSString)x_apple_contactIdentifiers;
- (NSString)x_apple_dropbox;
- (NSString)x_apple_etag;
- (NSString)x_apple_ews_changekey;
- (NSString)x_apple_ews_itemid;
- (NSString)x_apple_ews_permission;
- (NSString)x_apple_relatedExternalID;
- (NSString)x_apple_scheduletag;
- (NSString)x_apple_serverFilename;
- (NSString)x_apple_suggestionInfoOpaqueKey;
- (NSString)x_apple_suggestionInfoUniqueKey;
- (NSString)x_apple_universalID;
- (NSURL)url;
- (id)ICSStringWithOptions:(unint64_t)options;
- (id)allProperties;
- (id)debugDescription;
- (id)x_apple_end_location;
- (id)x_apple_travel_advisory_behavior;
- (id)x_apple_travel_duration;
- (id)x_apple_travel_start;
- (int)classification;
- (int)status;
- (int)x_calendarserver_access;
- (unint64_t)priority;
- (unint64_t)sequence;
- (unint64_t)x_apple_suggestionInfoChangedFields;
- (void)ICSStringWithOptions:(unint64_t)options appendingToString:(id)string;
- (void)addComponent:(id)component withUIDGenerator:(id)generator;
- (void)addProperty:(id)property withValue:(id)value;
- (void)fixAlarms;
- (void)fixAttachments;
- (void)fixAttendees;
- (void)fixComponent;
- (void)fixExceptionDates;
- (void)fixExceptionRules;
- (void)fixPropertiesInheritance:(id)inheritance;
- (void)fixRecurrenceDates;
- (void)fixRecurrenceRules;
- (void)fixRelatedTo;
- (void)fixSuggestionInfo;
- (void)removeComponent:(id)component;
- (void)setClassification:(int)classification;
- (void)setDtend:(id)dtend;
- (void)setDuration:(id)duration;
- (void)setExrule:(id)exrule;
- (void)setPriority:(unint64_t)priority;
- (void)setProperties:(id)properties forName:(id)name;
- (void)setProperty:(id)property forName:(id)name;
- (void)setPropertyValue:(id)value forName:(id)name;
- (void)setPropertyValue:(id)value type:(int)type forName:(id)name;
- (void)setRrule:(id)rrule;
- (void)setSequence:(unint64_t)sequence;
- (void)setStatus:(int)status;
- (void)setStatusString:(id)string;
- (void)setUnrecognizedComponentName:(id)name;
- (void)setX_apple_ews_needsserverconfirmation:(BOOL)x_apple_ews_needsserverconfirmation;
- (void)setX_apple_ignore_on_restore:(BOOL)x_apple_ignore_on_restore;
- (void)setX_apple_suggestionInfoChangedFields:(unint64_t)fields;
- (void)setX_calendarserver_access:(int)x_calendarserver_access;
@end

@implementation ICSComponent

- (void)setUnrecognizedComponentName:(id)name
{
  nameCopy = name;
  unrecognizedComponentName = self->_unrecognizedComponentName;
  p_unrecognizedComponentName = &self->_unrecognizedComponentName;
  if (unrecognizedComponentName != nameCopy)
  {
    v8 = nameCopy;
    objc_storeStrong(p_unrecognizedComponentName, name);
    nameCopy = v8;
  }
}

+ (id)stringFromRelationshipType:(unint64_t)type
{
  if (type == 1)
  {
    v4 = @"X-CALENDARSERVER-RECURRENCE-SET";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)stringFromStatus:(int)status
{
  if ((status - 1) > 7)
  {
    v4 = 0;
  }

  else
  {
    v4 = *off_27A64B8C0[status - 1];
  }

  return v4;
}

+ (int)statusFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"TENTATIVE"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"CONFIRMED"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"COMPLETED"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"NEEDS-ACTION"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"CANCELLED"])
  {
    v4 = 8;
  }

  else if ([stringCopy isEqualToString:@"IN-PROCESS"])
  {
    v4 = 5;
  }

  else if ([stringCopy isEqualToString:@"DRAFT"])
  {
    v4 = 6;
  }

  else if ([stringCopy isEqualToString:@"FINAL"])
  {
    v4 = 7;
  }

  else
  {
    [stringCopy length];
    v4 = 0;
  }

  return v4;
}

+ (id)makeUID
{
  v2 = *MEMORY[0x277CBECE8];
  v3 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
  v4 = CFUUIDCreateString(v2, v3);
  CFRelease(v3);

  return v4;
}

- (ICSComponent)init
{
  v8.receiver = self;
  v8.super_class = ICSComponent;
  v2 = [(ICSComponent *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    properties = v2->_properties;
    v2->_properties = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    components = v2->_components;
    v2->_components = v5;
  }

  return v2;
}

- (id)debugDescription
{
  v4.receiver = self;
  v4.super_class = ICSComponent;
  v2 = [(ICSComponent *)&v4 description];

  return v2;
}

- (BOOL)validate:(id *)validate
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_components;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (![*(*(&v12 + 1) + 8 * i) validate:{validate, v12}])
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)setProperties:(id)properties forName:(id)name
{
  properties = self->_properties;
  if (properties)
  {
    [(NSMutableDictionary *)properties setObject:properties forKey:name];
  }

  else
  {
    [(NSMutableDictionary *)properties removeObjectForKey:name];
  }
}

- (void)setProperty:(id)property forName:(id)name
{
  propertyCopy = property;
  if (propertyCopy)
  {
    v6 = MEMORY[0x277CBEB18];
    nameCopy = name;
    nameCopy2 = [[v6 alloc] initWithObjects:{propertyCopy, 0}];
    [(ICSComponent *)self setProperties:nameCopy2 forName:nameCopy];
  }

  else
  {
    nameCopy2 = name;
    [(ICSComponent *)self removePropertiesForName:nameCopy2];
  }
}

- (void)ICSStringWithOptions:(unint64_t)options appendingToString:(id)string
{
  v83 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v7 = options & 8;
  propertiesToExcludeForChecksum = [(ICSComponent *)self propertiesToExcludeForChecksum];
  name = [objc_opt_class() name];
  if (!name)
  {
    name = [(ICSComponent *)self unrecognizedComponentName];
  }

  [stringCopy appendString:@"BEGIN:"];
  [stringCopy appendString:name];
  [stringCopy appendString:@"\r\n"];
  allKeys = [(NSMutableDictionary *)self->_properties allKeys];
  v10 = allKeys;
  optionsCopy = options;
  v11 = options | (v7 >> 1);
  v51 = name;
  if ((v11 & 4) != 0)
  {
    v12 = [allKeys sortedArrayUsingSelector:sel_compare_];

    v62 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v12, "count")}];
    v10 = v12;
  }

  else
  {
    v62 = 0;
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = v10;
  v13 = [obj countByEnumeratingWithState:&v76 objects:v82 count:16];
  v61 = options | (v7 >> 1);
  if (v13)
  {
    v14 = v13;
    v64 = options & 0x48;
    v15 = *v77;
    v54 = options & 8;
    selfCopy = self;
    v53 = *v77;
    do
    {
      v16 = 0;
      v56 = v14;
      do
      {
        if (*v77 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v76 + 1) + 8 * v16);
        if (!-[ICSComponent ignorePropertyWithName:](self, "ignorePropertyWithName:", v17) && (!v7 || ([propertiesToExcludeForChecksum containsObject:v17] & 1) == 0))
        {
          v59 = v16;
          v60 = [(NSMutableDictionary *)self->_properties objectForKey:v17];
          v18 = optionsCopy;
          if ((optionsCopy & 0x200) == 0 || (-[ICSComponent propertiesToHide](self, "propertiesToHide"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 containsObject:v17], v19, v18 = optionsCopy, (v20 & 1) == 0))
          {
            v67 = v17;
            if ((v18 & 0x10) != 0)
            {
              propertiesToObscure = [(ICSComponent *)self propertiesToObscure];
              v66 = [propertiesToObscure containsObject:v17];
            }

            else
            {
              v66 = 0;
            }

            v74 = 0u;
            v75 = 0u;
            v72 = 0u;
            v73 = 0u;
            v63 = v60;
            v22 = [v63 countByEnumeratingWithState:&v72 objects:v81 count:16];
            if (v22)
            {
              v23 = v22;
              v65 = *v73;
              do
              {
                v24 = 0;
                do
                {
                  if (*v73 != v65)
                  {
                    objc_enumerationMutation(v63);
                  }

                  v25 = *(*(&v72 + 1) + 8 * v24);
                  v26 = objc_alloc_init(MEMORY[0x277CCAB68]);
                  [v26 appendString:v67];
                  if (v66)
                  {
                    v27 = objc_alloc_init(ICSStringWriter);
                    [v25 ICSStringWithOptions:v11 appendingToString:v27];
                    result = [(ICSStringWriter *)v27 result];
                    if ([result hasPrefix:@":"])
                    {
                      v29 = [result substringFromIndex:1];
                      v30 = stringCopy;
                      v31 = MEMORY[0x277CCACA8];
                      v32 = ICSRedactString(v29);
                      v33 = [v31 stringWithFormat:@":%@", v32];
                      [v26 appendString:v33];

                      stringCopy = v30;
                      v11 = v61;
                    }

                    else
                    {
                      v29 = ICSRedactString(result);
                      [v26 appendString:v29];
                    }
                  }

                  else
                  {
                    v27 = [[ICSStringWriter alloc] initWithString:v26];
                    [v25 ICSStringWithOptions:v11 appendingToString:v27];
                    [(ICSStringWriter *)v27 mutableResult];
                    v26 = result = v26;
                  }

                  if (!v64)
                  {
                    if ([v26 length])
                    {
                      v34 = [v26 length] - 1;
                      if (v34 >= 0x48)
                      {
                        v35 = 0;
                        v36 = v34 / 0x48;
                        v37 = 72 * (v34 / 0x48);
                        do
                        {
                          v38 = ([v26 characterAtIndex:v37] & 0xFC00) == 56320;
                          v39 = v37 - v38;
                          if (v37 - v38 != v35)
                          {
                            [v26 insertString:@"\r\n " atIndex:v37 - v38];
                            v35 = v39;
                          }

                          v37 -= 72;
                          --v36;
                        }

                        while (v36);
                      }
                    }
                  }

                  [v26 appendString:@"\r\n"];
                  if ((v11 & 4) != 0)
                  {
                    [v62 addObject:v26];
                  }

                  else
                  {
                    [stringCopy appendString:v26];
                  }

                  ++v24;
                }

                while (v24 != v23);
                v40 = [v63 countByEnumeratingWithState:&v72 objects:v81 count:16];
                v23 = v40;
              }

              while (v40);
            }

            v7 = v54;
            self = selfCopy;
            v14 = v56;
            v15 = v53;
          }

          v16 = v59;
        }

        ++v16;
      }

      while (v16 != v14);
      v14 = [obj countByEnumeratingWithState:&v76 objects:v82 count:16];
    }

    while (v14);
  }

  if ((v11 & 4) != 0)
  {
    v41 = [v62 sortedArrayUsingSelector:sel_compare_];
    v42 = [v41 componentsJoinedByString:&stru_28841D818];
    [stringCopy appendString:v42];
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v43 = self->_components;
  v44 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v68 objects:v80 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v69;
    do
    {
      for (i = 0; i != v45; ++i)
      {
        if (*v69 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v48 = *(*(&v68 + 1) + 8 * i);
        v49 = objc_autoreleasePoolPush();
        [v48 ICSStringWithOptions:v61 appendingToString:stringCopy];
        objc_autoreleasePoolPop(v49);
      }

      v45 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v68 objects:v80 count:16];
    }

    while (v45);
  }

  [stringCopy appendString:@"END:"];
  [stringCopy appendString:v51];
  [stringCopy appendString:@"\r\n"];

  v50 = *MEMORY[0x277D85DE8];
}

- (BOOL)ignorePropertyWithName:(id)name
{
  nameCopy = name;
  if ((([nameCopy isEqualToString:@"X-MICROSOFT-CDO-ALLDAYEVENT"] & 1) != 0 || objc_msgSend(nameCopy, "isEqualToString:", @"X-FUNAMBOL-ALLDAY")) && !-[ICSComponent isAllDay](self, "isAllDay"))
  {
    v5 = 1;
  }

  else
  {
    v5 = [nameCopy isEqualToString:@"iCalendar-ForcedAllDay"];
  }

  return v5;
}

- (id)ICSStringWithOptions:(unint64_t)options
{
  v5 = objc_alloc_init(ICSStringWriter);
  [(ICSComponent *)self ICSStringWithOptions:options appendingToString:v5];
  result = [(ICSStringWriter *)v5 result];

  return result;
}

- (NSSet)propertiesToExcludeForChecksum
{
  if (propertiesToExcludeForChecksum_onceToken != -1)
  {
    [ICSComponent propertiesToExcludeForChecksum];
  }

  v3 = propertiesToExcludeForChecksum_propertiesToExclude;

  return v3;
}

void __46__ICSComponent_propertiesToExcludeForChecksum__block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = @"DTSTAMP";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v2 = [v0 setWithArray:v1];
  v3 = propertiesToExcludeForChecksum_propertiesToExclude;
  propertiesToExcludeForChecksum_propertiesToExclude = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (void)addComponent:(id)component withUIDGenerator:(id)generator
{
  if (component)
  {
    componentCopy = component;
    components = [(ICSComponent *)self components];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v8 = objc_alloc(MEMORY[0x277CBEB18]);
      components2 = [(ICSComponent *)self components];
      v10 = [v8 initWithArray:components2];

      [(ICSComponent *)self setComponents:v10];
    }

    components3 = [(ICSComponent *)self components];
    [components3 addObject:componentCopy];
  }
}

- (void)removeComponent:(id)component
{
  if (component)
  {
    componentCopy = component;
    components = [(ICSComponent *)self components];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v7 = objc_alloc(MEMORY[0x277CBEB18]);
      components2 = [(ICSComponent *)self components];
      v9 = [v7 initWithArray:components2];

      [(ICSComponent *)self setComponents:v9];
    }

    components3 = [(ICSComponent *)self components];
    [components3 removeObject:componentCopy];
  }
}

- (void)addProperty:(id)property withValue:(id)value
{
  propertyCopy = property;
  valueCopy = value;
  if (propertyCopy && valueCopy)
  {
    v7 = [(NSMutableDictionary *)self->_properties objectForKey:propertyCopy];
    v8 = v7;
    if (v7)
    {
      if (([v7 containsObject:valueCopy] & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v9 = [MEMORY[0x277CBEB18] arrayWithArray:v8];

          [(ICSComponent *)self setProperties:v9 forName:propertyCopy];
          v8 = v9;
        }

        [v8 addObject:valueCopy];
      }
    }

    else
    {
      [(ICSComponent *)self setProperty:valueCopy forName:propertyCopy];
    }
  }
}

- (id)allProperties
{
  v2 = MEMORY[0x277CBEAC0];
  properties = [(ICSComponent *)self properties];
  v4 = [v2 dictionaryWithDictionary:properties];

  return v4;
}

- (int)classification
{
  v2 = [(ICSComponent *)self propertiesForName:@"CLASS"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    longValue = [value longValue];
  }

  else
  {
    longValue = 0;
  }

  return longValue;
}

- (void)setClassification:(int)classification
{
  if (classification)
  {
    v4 = [(ICSPredefinedValue *)ICSClassificationValue numberWithLong:classification];
    [(ICSComponent *)self setPropertyValue:v4 type:5005 forName:@"CLASS"];
  }

  else
  {

    [(ICSComponent *)self removePropertiesForName:@"CLASS"];
  }
}

- (ICSDate)created
{
  v2 = [(ICSComponent *)self propertiesForName:@"CREATED"];
  lastObject = [v2 lastObject];

  return lastObject;
}

- (NSString)description
{
  v2 = [(ICSComponent *)self propertiesForName:@"DESCRIPTION"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  return value;
}

- (void)setPropertyValue:(id)value forName:(id)name
{
  valueCopy = value;
  if (valueCopy)
  {
    nameCopy = name;
    nameCopy2 = [[ICSProperty alloc] initWithValue:valueCopy type:5007];
    [(ICSComponent *)self setProperty:nameCopy2 forName:nameCopy];
  }

  else
  {
    nameCopy2 = name;
    [(ICSComponent *)self removePropertiesForName:nameCopy2];
  }
}

- (void)setPropertyValue:(id)value type:(int)type forName:(id)name
{
  valueCopy = value;
  if (valueCopy)
  {
    nameCopy = name;
    nameCopy2 = [[ICSProperty alloc] initWithValue:valueCopy type:type];
    [(ICSComponent *)self setProperty:nameCopy2 forName:nameCopy];
  }

  else
  {
    nameCopy2 = name;
    [(ICSComponent *)self removePropertiesForName:nameCopy2];
  }
}

- (ICSDate)dtstamp
{
  v2 = [(ICSComponent *)self propertiesForName:@"DTSTAMP"];
  lastObject = [v2 lastObject];

  return lastObject;
}

- (ICSDate)dtstart
{
  v2 = [(ICSComponent *)self propertiesForName:@"DTSTART"];
  lastObject = [v2 lastObject];

  return lastObject;
}

- (BOOL)isAllDay
{
  if ([(ICSComponent *)self forcedAllDay])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    dtstart = [(ICSComponent *)self dtstart];
    v3 = [dtstart hasTimeComponent] ^ 1;
  }

  return v3;
}

- (ICSDate)dtend
{
  v2 = [(ICSComponent *)self propertiesForName:@"DTEND"];
  lastObject = [v2 lastObject];

  return lastObject;
}

- (void)setDtend:(id)dtend
{
  [(ICSComponent *)self setProperty:dtend forName:@"DTEND"];
  if (dtend)
  {

    [(ICSComponent *)self removePropertiesForName:@"DURATION"];
  }
}

- (ICSDuration)duration
{
  v2 = [(ICSComponent *)self propertiesForName:@"DURATION"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  return value;
}

- (void)setDuration:(id)duration
{
  durationCopy = duration;
  if (durationCopy)
  {
    [(ICSComponent *)self removePropertiesForName:@"DTEND"];
  }

  [(ICSComponent *)self setPropertyValue:durationCopy type:5011 forName:@"DURATION"];
}

- (void)setExrule:(id)exrule
{
  v20 = *MEMORY[0x277D85DE8];
  exruleCopy = exrule;
  array = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = exruleCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = [ICSProperty alloc];
        v13 = [(ICSProperty *)v12 initWithValue:v11 type:5029, v15];
        [array addObject:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [(ICSComponent *)self setProperties:array forName:@"EXRULE"];
  v14 = *MEMORY[0x277D85DE8];
}

- (NSArray)exrule
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [(ICSComponent *)self propertiesForName:@"EXRULE"];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          value = [*(*(&v12 + 1) + 8 * i) value];
          [array addObject:value];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  else
  {
    array = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return array;
}

- (ICSDate)last_modified
{
  v2 = [(ICSComponent *)self propertiesForName:@"LAST-MODIFIED"];
  lastObject = [v2 lastObject];

  return lastObject;
}

- (NSString)location
{
  v2 = [(ICSComponent *)self propertiesForName:@"LOCATION"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  return value;
}

- (ICSUserAddress)organizer
{
  v2 = [(ICSComponent *)self propertiesForName:@"ORGANIZER"];
  lastObject = [v2 lastObject];

  return lastObject;
}

- (ICSDate)recurrence_id
{
  v2 = [(ICSComponent *)self propertiesForName:@"RECURRENCE-ID"];
  lastObject = [v2 lastObject];

  return lastObject;
}

- (void)setRrule:(id)rrule
{
  v20 = *MEMORY[0x277D85DE8];
  rruleCopy = rrule;
  array = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = rruleCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = [ICSProperty alloc];
        v13 = [(ICSProperty *)v12 initWithValue:v11 type:5029, v15];
        [array addObject:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [(ICSComponent *)self setProperties:array forName:@"RRULE"];
  v14 = *MEMORY[0x277D85DE8];
}

- (NSArray)rrule
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [(ICSComponent *)self propertiesForName:@"RRULE"];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          value = [*(*(&v12 + 1) + 8 * i) value];
          [array addObject:value];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  else
  {
    array = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)setSequence:(unint64_t)sequence
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:sequence];
  [(ICSComponent *)self setPropertyValue:v4 type:5008 forName:@"SEQUENCE"];
}

- (unint64_t)sequence
{
  v3 = [(ICSComponent *)self propertiesForName:@"SEQUENCE"];

  if (!v3)
  {
    return 0;
  }

  v4 = [(ICSComponent *)self propertiesForName:@"SEQUENCE"];
  lastObject = [v4 lastObject];
  value = [lastObject value];
  unsignedIntegerValue = [value unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (int)status
{
  v2 = [(ICSComponent *)self propertiesForName:@"STATUS"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    longValue = [value longValue];
  }

  else
  {
    longValue = 0;
  }

  return longValue;
}

- (void)setStatus:(int)status
{
  if (status)
  {
    v4 = [(ICSPredefinedValue *)ICSStatusValue numberWithLong:status];
    [(ICSComponent *)self setPropertyValue:v4 type:5003 forName:@"STATUS"];
  }

  else
  {

    [(ICSComponent *)self removePropertiesForName:@"STATUS"];
  }
}

- (NSString)statusString
{
  v2 = [(ICSComponent *)self propertiesForName:@"STATUS"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    statusString = [value statusString];
  }

  else
  {
    statusString = 0;
  }

  return statusString;
}

- (void)setStatusString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v4 = [ICSStatusValue statusValueFromICSString:stringCopy];
    [(ICSComponent *)self setPropertyValue:v4 type:5003 forName:@"STATUS"];
  }

  else
  {
    [(ICSComponent *)self removePropertiesForName:@"STATUS"];
  }
}

- (NSString)summary
{
  v2 = [(ICSComponent *)self propertiesForName:@"SUMMARY"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  return value;
}

- (ICSTrigger)trigger
{
  v2 = [(ICSComponent *)self propertiesForName:@"TRIGGER"];
  lastObject = [v2 lastObject];

  return lastObject;
}

- (NSString)uid
{
  v2 = [(ICSComponent *)self propertiesForName:@"UID"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  return value;
}

- (NSURL)url
{
  v2 = [(ICSComponent *)self propertiesForName:@"URL"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  return value;
}

- (unint64_t)priority
{
  v3 = [(ICSComponent *)self propertiesForName:@"PRIORITY"];

  if (!v3)
  {
    return 0;
  }

  v4 = [(ICSComponent *)self propertiesForName:@"PRIORITY"];
  lastObject = [v4 lastObject];
  value = [lastObject value];
  unsignedIntegerValue = [value unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setPriority:(unint64_t)priority
{
  if (priority)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [(ICSComponent *)self setPropertyValue:v4 type:5008 forName:@"PRIORITY"];
}

- (int)x_calendarserver_access
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-CALENDARSERVER-ACCESS"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    longValue = [value longValue];
  }

  else
  {
    longValue = 0;
  }

  return longValue;
}

- (void)setX_calendarserver_access:(int)x_calendarserver_access
{
  if (x_calendarserver_access)
  {
    v4 = [(ICSPredefinedValue *)ICSCalendarServerAccessValue numberWithLong:x_calendarserver_access];
    [(ICSComponent *)self setPropertyValue:v4 type:5030 forName:@"X-CALENDARSERVER-ACCESS"];
  }

  else
  {

    [(ICSComponent *)self removePropertiesForName:@"X-CALENDARSERVER-ACCESS"];
  }
}

- (NSString)x_apple_dropbox
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-DROPBOX"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  return value;
}

- (NSString)x_apple_ews_changekey
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-EWS-CHANGEKEY"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  return value;
}

- (NSString)x_apple_ews_itemid
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-EWS-ITEMID"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  return value;
}

- (NSString)x_apple_ews_permission
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-EWS-PERMISSION"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  return value;
}

- (BOOL)x_apple_ews_needsserverconfirmation
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-EWS-NEEDSSERVERCONFIRMATION"];
  lastObject = [v2 lastObject];
  value = [lastObject value];
  bOOLValue = [value BOOLValue];

  return bOOLValue;
}

- (void)setX_apple_ews_needsserverconfirmation:(BOOL)x_apple_ews_needsserverconfirmation
{
  if (x_apple_ews_needsserverconfirmation)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [(ICSComponent *)self setPropertyValue:v4 type:5012 forName:@"X-APPLE-EWS-NEEDSSERVERCONFIRMATION"];
}

- (void)setX_apple_ignore_on_restore:(BOOL)x_apple_ignore_on_restore
{
  if (x_apple_ignore_on_restore)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [(ICSComponent *)self setPropertyValue:v4 type:5012 forName:@"X-APPLE-IGNORE-ON-RESTORE"];
  }

  else
  {

    [(ICSComponent *)self removePropertiesForName:@"X-APPLE-IGNORE-ON-RESTORE"];
  }
}

- (BOOL)x_apple_ignore_on_restore
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-IGNORE-ON-RESTORE"];
  lastObject = [v2 lastObject];
  value = [lastObject value];
  bOOLValue = [value BOOLValue];

  return bOOLValue;
}

- (ICSStructuredLocation)x_apple_structured_location
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-STRUCTURED-LOCATION"];
  lastObject = [v2 lastObject];

  return lastObject;
}

- (NSString)x_apple_etag
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-ETAG"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  return value;
}

- (NSString)x_apple_scheduletag
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-SCHEDULETAG"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  return value;
}

- (NSString)x_apple_serverFilename
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-SERVERFILENAME"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  return value;
}

- (id)x_apple_travel_duration
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-TRAVEL-DURATION"];
  lastObject = [v2 lastObject];

  return lastObject;
}

- (id)x_apple_travel_advisory_behavior
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-TRAVEL-ADVISORY-BEHAVIOR"];
  lastObject = [v2 lastObject];

  return lastObject;
}

- (id)x_apple_travel_start
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-TRAVEL-START"];
  lastObject = [v2 lastObject];

  return lastObject;
}

- (id)x_apple_end_location
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-END-LOCATION"];
  lastObject = [v2 lastObject];

  return lastObject;
}

- (BOOL)forcedAllDay
{
  v2 = [(ICSComponent *)self propertiesForName:@"iCalendar-ForcedAllDay"];
  lastObject = [v2 lastObject];
  value = [lastObject value];
  bOOLValue = [value BOOLValue];

  return bOOLValue;
}

- (BOOL)x_apple_suggestionInfoChangesAcknowledged
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-SUGGESTION-INFO-CHANGES-ACKNOWLEDGED"];
  lastObject = [v2 lastObject];
  value = [lastObject value];
  bOOLValue = [value BOOLValue];

  return bOOLValue;
}

- (unint64_t)x_apple_suggestionInfoChangedFields
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-SUGGESTION-INFO-CHANGED-FIELDS"];
  lastObject = [v2 lastObject];
  value = [lastObject value];
  unsignedIntegerValue = [value unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setX_apple_suggestionInfoChangedFields:(unint64_t)fields
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:fields];
  [(ICSComponent *)self setPropertyValue:v4 type:5008 forName:@"X-APPLE-SUGGESTION-INFO-CHANGED-FIELDS"];
}

- (NSString)x_apple_suggestionInfoOpaqueKey
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-SUGGESTION-INFO-OPAQUE-KEY"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  return value;
}

- (ICSDate)x_apple_suggestionInfoTimestamp
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-SUGGESTION-INFO-TIMESTAMP"];
  lastObject = [v2 lastObject];

  return lastObject;
}

- (NSString)x_apple_suggestionInfoUniqueKey
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-SUGGESTION-INFO-UNIQUE-KEY"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  return value;
}

- (NSString)x_apple_contactIdentifiers
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-CONTACT-IDENTIFIERS"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  return value;
}

- (NSString)x_apple_relatedExternalID
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-EXTERNAL-REFERENCE-ID"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  return value;
}

- (NSString)x_apple_universalID
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-UNIVERSAL-ID"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  return value;
}

+ (id)inheritanceKeywords
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!_sInheritanceKeywords)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"DTEND", @"DTSTART", @"DURATION", @"EXDATE", @"EXRULE", @"RDATE", @"RRULE", 0}];
    v4 = _sInheritanceKeywords;
    _sInheritanceKeywords = v3;
  }

  objc_sync_exit(selfCopy);

  v5 = _sInheritanceKeywords;

  return v5;
}

- (void)fixPropertiesInheritance:(id)inheritance
{
  v22 = *MEMORY[0x277D85DE8];
  inheritanceCopy = inheritance;
  v5 = [(ICSComponent *)self propertiesForName:@"RECURRENCE-ID"];

  if (v5)
  {
    v6 = +[ICSComponent inheritanceKeywords];
    [inheritanceCopy properties];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = v20 = 0u;
    allValues = [v16 allValues];
    v8 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(allValues);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          if (([v6 containsObject:v12] & 1) == 0)
          {
            v13 = [inheritanceCopy propertiesForName:v12];
            v14 = [(ICSComponent *)self propertiesForName:v12];
            if (!v14)
            {
              [(ICSComponent *)self setProperties:v13 forName:v12];
            }
          }
        }

        v9 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)fixAlarms
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:5];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  selfCopy = self;
  components = [(ICSComponent *)self components];
  v5 = [components copy];

  v6 = [v5 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    v9 = 0x27A64B000uLL;
    v30 = v3;
    do
    {
      v10 = 0;
      do
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v32 + 1) + 8 * v10);
        v12 = *(v9 + 1248);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v11;
          x_wr_alarmuid = [v13 x_wr_alarmuid];
          if ([v3 containsObject:x_wr_alarmuid])
          {
            goto LABEL_8;
          }

          if ([v13 action] == 3)
          {
            attendee = [v13 attendee];
            v17 = [attendee count];

            if (!v17)
            {
LABEL_8:
              components2 = [(ICSComponent *)selfCopy components];
              [components2 removeObject:v13];

LABEL_24:
              goto LABEL_25;
            }
          }

          else if ([v13 action] == 4)
          {
            attach = [v13 attach];
            if (attach)
            {
            }

            else
            {
              bookmark = [v13 bookmark];

              if (!bookmark)
              {
                goto LABEL_8;
              }
            }
          }

          v20 = v5;
          v21 = v9;
          trigger = [v13 trigger];
          isDurationBased = [trigger isDurationBased];

          trigger2 = [v13 trigger];
          trigger3 = trigger2;
          if (isDurationBased)
          {
            value = [trigger2 value];
LABEL_20:
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if ((isKindOfClass & 1) == 0)
            {
              components3 = [(ICSComponent *)selfCopy components];
              [components3 removeObject:v13];

              v9 = v21;
              v5 = v20;
              v3 = v30;
              goto LABEL_24;
            }
          }

          else
          {

            if (trigger3)
            {
              trigger3 = [v13 trigger];
              value = [trigger3 value];
              goto LABEL_20;
            }
          }

          [v13 fixAlarm];
          v9 = v21;
          v5 = v20;
          v3 = v30;
          if ([x_wr_alarmuid length])
          {
            [v30 addObject:x_wr_alarmuid];
          }

          goto LABEL_24;
        }

LABEL_25:
        ++v10;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v7);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)fixRelatedTo
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(ICSComponent *)self propertiesForName:@"RELATED-TO"];

  if (!v3)
  {
LABEL_14:
    v16 = *MEMORY[0x277D85DE8];
    return;
  }

  relatedTo = [(ICSComponent *)self relatedTo];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    relatedTo2 = [(ICSComponent *)self relatedTo];
    v7 = [relatedTo2 copy];

    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            relatedTo3 = [(ICSComponent *)self relatedTo];
            [relatedTo3 removeObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    relatedTo4 = [(ICSComponent *)self relatedTo];
    v15 = [relatedTo4 count];

    if (!v15)
    {
      [(ICSComponent *)self removePropertiesForName:@"RELATED-TO"];
    }

    goto LABEL_14;
  }

  v17 = *MEMORY[0x277D85DE8];

  [(ICSComponent *)self removePropertiesForName:@"RELATED-TO"];
}

- (void)fixAttendees
{
  v3 = [(ICSComponent *)self propertiesForName:@"ATTENDEE"];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CBEB58]);
    attendee = [(ICSComponent *)self attendee];
    v14 = [v4 initWithCapacity:{objc_msgSend(attendee, "count")}];

    attendee2 = [(ICSComponent *)self attendee];
    indexSet = [MEMORY[0x277CCAB58] indexSet];
    if ([attendee2 count])
    {
      v8 = 0;
      do
      {
        v9 = [attendee2 objectAtIndexedSubscript:v8];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = MEMORY[0x277CCACA8];
          v11 = [v9 cn];
          value = [v9 value];
          v13 = [v10 stringWithFormat:@"%@ <%@>", v11, value];

          if ([v14 containsObject:v13])
          {
            [indexSet addIndex:v8];
          }

          else
          {
            [v14 addObject:v13];
          }
        }

        else
        {
          [indexSet addIndex:v8];
        }

        ++v8;
      }

      while (v8 < [attendee2 count]);
    }

    [attendee2 removeObjectsAtIndexes:indexSet];
    if (![attendee2 count])
    {
      [(ICSComponent *)self removePropertiesForName:@"ATTENDEE"];
    }
  }
}

- (void)fixAttachments
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(ICSComponent *)self propertiesForName:@"ATTACH"];

  if (v3)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    attach = [(ICSComponent *)self attach];
    v5 = [attach copy];

    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * v9);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            attach2 = [(ICSComponent *)self attach];
            [attach2 removeObject:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    attach3 = [(ICSComponent *)self attach];
    v13 = [attach3 count];

    if (!v13)
    {
      [(ICSComponent *)self removePropertiesForName:@"ATTACH"];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)fixRecurrenceRules
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(ICSComponent *)self propertiesForName:@"RRULE"];

  if (v3)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = [(ICSComponent *)self propertiesForName:@"RRULE", 0];
    v5 = [v4 copy];

    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          value = [v10 value];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            rrule = [(ICSComponent *)self rrule];
            [rrule removeObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    v14 = [(ICSComponent *)self propertiesForName:@"RRULE"];
    v15 = [v14 count];

    if (!v15)
    {
      [(ICSComponent *)self removePropertiesForName:@"RRULE"];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)fixRecurrenceDates
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(ICSComponent *)self propertiesForName:@"RDATE"];

  if (v3)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    rdate = [(ICSComponent *)self rdate];
    v5 = [rdate copy];

    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * v9);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v11 = [(ICSComponent *)self propertiesForName:@"RDATE"];
            [v11 removeObject:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    v12 = [(ICSComponent *)self propertiesForName:@"RDATE"];
    v13 = [v12 count];

    if (!v13)
    {
      [(ICSComponent *)self removePropertiesForName:@"RDATE"];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)fixExceptionRules
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(ICSComponent *)self propertiesForName:@"EXRULE"];

  if (v3)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = [(ICSComponent *)self propertiesForName:@"EXRULE", 0];
    v5 = [v4 copy];

    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          value = [v10 value];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            exrule = [(ICSComponent *)self exrule];
            [exrule removeObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    v14 = [(ICSComponent *)self propertiesForName:@"EXRULE"];
    v15 = [v14 count];

    if (!v15)
    {
      [(ICSComponent *)self removePropertiesForName:@"EXRULE"];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)fixExceptionDates
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(ICSComponent *)self propertiesForName:@"EXDATE"];

  if (v3)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    exdate = [(ICSComponent *)self exdate];
    v5 = [exdate copy];

    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * v9);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v11 = [(ICSComponent *)self propertiesForName:@"EXDATE"];
            [v11 removeObject:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    v12 = [(ICSComponent *)self propertiesForName:@"EXDATE"];
    v13 = [v12 count];

    if (!v13)
    {
      [(ICSComponent *)self removePropertiesForName:@"EXDATE"];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)fixSuggestionInfo
{
  x_apple_suggestionInfoOpaqueKey = [(ICSComponent *)self x_apple_suggestionInfoOpaqueKey];
  if ([x_apple_suggestionInfoOpaqueKey length])
  {
    x_apple_suggestionInfoUniqueKey = [(ICSComponent *)self x_apple_suggestionInfoUniqueKey];
    v5 = [x_apple_suggestionInfoUniqueKey length];

    if (v5)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  [(ICSComponent *)self removePropertiesForName:@"X-APPLE-SUGGESTION-INFO-CHANGED-FIELDS"];
  [(ICSComponent *)self removePropertiesForName:@"X-APPLE-SUGGESTION-INFO-CHANGES-ACKNOWLEDGED"];
  [(ICSComponent *)self removePropertiesForName:@"X-APPLE-SUGGESTION-INFO-OPAQUE-KEY"];
  [(ICSComponent *)self removePropertiesForName:@"X-APPLE-SUGGESTION-INFO-TIMESTAMP"];
  [(ICSComponent *)self removePropertiesForName:@"X-APPLE-SUGGESTION-INFO-UNIQUE-KEY"];
LABEL_6:
  x_apple_suggestionInfoTimestamp = [(ICSComponent *)self x_apple_suggestionInfoTimestamp];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {

    [(ICSComponent *)self removePropertiesForName:@"X-APPLE-SUGGESTION-INFO-TIMESTAMP"];
  }
}

- (void)fixComponent
{
  v3 = [(ICSComponent *)self propertiesForName:@"UID"];

  if (v3)
  {
    v4 = [(ICSComponent *)self uid];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      [(ICSComponent *)self removePropertiesForName:@"UID"];
    }
  }

  v6 = [(ICSComponent *)self propertiesForName:@"SUMMARY"];

  if (v6)
  {
    summary = [(ICSComponent *)self summary];
    objc_opt_class();
    v8 = objc_opt_isKindOfClass();

    if ((v8 & 1) == 0)
    {
      [(ICSComponent *)self removePropertiesForName:@"SUMMARY"];
    }
  }

  v9 = [(ICSComponent *)self propertiesForName:@"DESCRIPTION"];

  if (v9)
  {
    v10 = [(ICSComponent *)self description];
    objc_opt_class();
    v11 = objc_opt_isKindOfClass();

    if ((v11 & 1) == 0)
    {
      [(ICSComponent *)self removePropertiesForName:@"DESCRIPTION"];
    }
  }

  v12 = [(ICSComponent *)self propertiesForName:@"STATUS"];

  if (v12)
  {
    v13 = [(ICSComponent *)self propertiesForName:@"STATUS"];
    lastObject = [v13 lastObject];
    value = [lastObject value];
    objc_opt_class();
    v16 = objc_opt_isKindOfClass();

    if ((v16 & 1) == 0)
    {
      [(ICSComponent *)self removePropertiesForName:@"STATUS"];
    }
  }

  v17 = [(ICSComponent *)self propertiesForName:@"DTSTART"];

  if (v17)
  {
    dtstart = [(ICSComponent *)self dtstart];
    objc_opt_class();
    v19 = objc_opt_isKindOfClass();

    if ((v19 & 1) == 0)
    {
      [(ICSComponent *)self removePropertiesForName:@"DTSTART"];
    }
  }

  v20 = [(ICSComponent *)self propertiesForName:@"URL"];

  if (v20)
  {
    v21 = [(ICSComponent *)self url];
    objc_opt_class();
    v22 = objc_opt_isKindOfClass();

    if ((v22 & 1) == 0)
    {
      [(ICSComponent *)self removePropertiesForName:@"URL"];
    }
  }

  v23 = [(ICSComponent *)self propertiesForName:@"CREATED"];

  if (v23)
  {
    created = [(ICSComponent *)self created];
    objc_opt_class();
    v25 = objc_opt_isKindOfClass();

    if ((v25 & 1) == 0)
    {
      [(ICSComponent *)self removePropertiesForName:@"CREATED"];
    }
  }

  v26 = [(ICSComponent *)self propertiesForName:@"LAST-MODIFIED"];

  if (v26)
  {
    last_modified = [(ICSComponent *)self last_modified];
    objc_opt_class();
    v28 = objc_opt_isKindOfClass();

    if ((v28 & 1) == 0)
    {
      [(ICSComponent *)self removePropertiesForName:@"LAST-MODIFIED"];
    }
  }

  v29 = [(ICSComponent *)self propertiesForName:@"DTSTAMP"];

  if (v29)
  {
    dtstamp = [(ICSComponent *)self dtstamp];
    objc_opt_class();
    v31 = objc_opt_isKindOfClass();

    if ((v31 & 1) == 0)
    {
      [(ICSComponent *)self removePropertiesForName:@"DTSTAMP"];
    }
  }

  v32 = [(ICSComponent *)self propertiesForName:@"SEQUENCE"];

  if (v32)
  {
    v33 = [(ICSComponent *)self propertiesForName:@"SEQUENCE"];
    lastObject2 = [v33 lastObject];
    value2 = [lastObject2 value];
    objc_opt_class();
    v36 = objc_opt_isKindOfClass();

    if ((v36 & 1) == 0)
    {
      [(ICSComponent *)self removePropertiesForName:@"SEQUENCE"];
    }
  }

  [(ICSComponent *)self fixAlarms];
  organizer = [(ICSComponent *)self organizer];
  objc_opt_class();
  v38 = objc_opt_isKindOfClass();

  if ((v38 & 1) == 0)
  {
    [(ICSComponent *)self removePropertiesForName:@"ORGANIZER"];
    organizer2 = [(ICSComponent *)self organizer];
    [organizer2 fixAddress];
  }

  [(ICSComponent *)self fixAttendees];
  [(ICSComponent *)self fixAttachments];
  v40 = [(ICSComponent *)self propertiesForName:@"X-WR-ITIPSTATUSATTENDEEML"];

  if (v40)
  {
    v41 = [(ICSComponent *)self propertiesForName:@"X-WR-ITIPSTATUSATTENDEEML"];
    lastObject3 = [v41 lastObject];
    value3 = [lastObject3 value];
    objc_opt_class();
    v44 = objc_opt_isKindOfClass();

    if ((v44 & 1) == 0)
    {
      [(ICSComponent *)self removePropertiesForName:@"X-WR-ITIPSTATUSATTENDEEML"];
    }
  }

  v45 = [(ICSComponent *)self propertiesForName:@"X-WR-ITIPALREADYSENT"];

  if (v45)
  {
    v46 = [(ICSComponent *)self propertiesForName:@"X-WR-ITIPALREADYSENT"];
    lastObject4 = [v46 lastObject];
    value4 = [lastObject4 value];
    objc_opt_class();
    v49 = objc_opt_isKindOfClass();

    if ((v49 & 1) == 0)
    {
      [(ICSComponent *)self removePropertiesForName:@"X-WR-ITIPALREADYSENT"];
    }
  }

  v50 = [(ICSComponent *)self propertiesForName:@"X-WR-ITIPSTATUSML"];

  if (v50)
  {
    v51 = [(ICSComponent *)self propertiesForName:@"X-WR-ITIPSTATUSML"];
    lastObject5 = [v51 lastObject];
    value5 = [lastObject5 value];
    objc_opt_class();
    v54 = objc_opt_isKindOfClass();

    if ((v54 & 1) == 0)
    {
      [(ICSComponent *)self removePropertiesForName:@"X-WR-ITIPSTATUSML"];
    }
  }

  v55 = [(ICSComponent *)self propertiesForName:@"RECURRENCE-ID"];

  if (v55)
  {
    recurrence_id = [(ICSComponent *)self recurrence_id];
    objc_opt_class();
    v57 = objc_opt_isKindOfClass();

    if ((v57 & 1) == 0)
    {
      [(ICSComponent *)self removePropertiesForName:@"RECURRENCE-ID"];
    }
  }

  v58 = [(ICSComponent *)self propertiesForName:@"RECURRENCE-ID"];

  if (v58)
  {
    [(ICSComponent *)self removePropertiesForName:@"EXDATE"];
    [(ICSComponent *)self removePropertiesForName:@"EXRULE"];
    [(ICSComponent *)self removePropertiesForName:@"RDATE"];
    [(ICSComponent *)self removePropertiesForName:@"RRULE"];
  }

  [(ICSComponent *)self fixRelatedTo];
  [(ICSComponent *)self fixRecurrenceRules];
  [(ICSComponent *)self fixRecurrenceDates];
  [(ICSComponent *)self fixExceptionRules];
  [(ICSComponent *)self fixExceptionDates];

  [(ICSComponent *)self fixSuggestionInfo];
}

@end