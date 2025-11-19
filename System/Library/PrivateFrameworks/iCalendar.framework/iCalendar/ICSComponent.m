@interface ICSComponent
+ (id)inheritanceKeywords;
+ (id)makeUID;
+ (id)stringFromRelationshipType:(unint64_t)a3;
+ (id)stringFromStatus:(int)a3;
+ (int)statusFromString:(id)a3;
- (BOOL)forcedAllDay;
- (BOOL)ignorePropertyWithName:(id)a3;
- (BOOL)isAllDay;
- (BOOL)validate:(id *)a3;
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
- (id)ICSStringWithOptions:(unint64_t)a3;
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
- (void)ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4;
- (void)addComponent:(id)a3 withUIDGenerator:(id)a4;
- (void)addProperty:(id)a3 withValue:(id)a4;
- (void)fixAlarms;
- (void)fixAttachments;
- (void)fixAttendees;
- (void)fixComponent;
- (void)fixExceptionDates;
- (void)fixExceptionRules;
- (void)fixPropertiesInheritance:(id)a3;
- (void)fixRecurrenceDates;
- (void)fixRecurrenceRules;
- (void)fixRelatedTo;
- (void)fixSuggestionInfo;
- (void)removeComponent:(id)a3;
- (void)setClassification:(int)a3;
- (void)setDtend:(id)a3;
- (void)setDuration:(id)a3;
- (void)setExrule:(id)a3;
- (void)setPriority:(unint64_t)a3;
- (void)setProperties:(id)a3 forName:(id)a4;
- (void)setProperty:(id)a3 forName:(id)a4;
- (void)setPropertyValue:(id)a3 forName:(id)a4;
- (void)setPropertyValue:(id)a3 type:(int)a4 forName:(id)a5;
- (void)setRrule:(id)a3;
- (void)setSequence:(unint64_t)a3;
- (void)setStatus:(int)a3;
- (void)setStatusString:(id)a3;
- (void)setUnrecognizedComponentName:(id)a3;
- (void)setX_apple_ews_needsserverconfirmation:(BOOL)a3;
- (void)setX_apple_ignore_on_restore:(BOOL)a3;
- (void)setX_apple_suggestionInfoChangedFields:(unint64_t)a3;
- (void)setX_calendarserver_access:(int)a3;
@end

@implementation ICSComponent

- (void)setUnrecognizedComponentName:(id)a3
{
  v5 = a3;
  unrecognizedComponentName = self->_unrecognizedComponentName;
  p_unrecognizedComponentName = &self->_unrecognizedComponentName;
  if (unrecognizedComponentName != v5)
  {
    v8 = v5;
    objc_storeStrong(p_unrecognizedComponentName, a3);
    v5 = v8;
  }
}

+ (id)stringFromRelationshipType:(unint64_t)a3
{
  if (a3 == 1)
  {
    v4 = @"X-CALENDARSERVER-RECURRENCE-SET";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)stringFromStatus:(int)a3
{
  if ((a3 - 1) > 7)
  {
    v4 = 0;
  }

  else
  {
    v4 = *off_27A64B8C0[a3 - 1];
  }

  return v4;
}

+ (int)statusFromString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"TENTATIVE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CONFIRMED"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"COMPLETED"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"NEEDS-ACTION"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"CANCELLED"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"IN-PROCESS"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"DRAFT"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"FINAL"])
  {
    v4 = 7;
  }

  else
  {
    [v3 length];
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

- (BOOL)validate:(id *)a3
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

        if (![*(*(&v12 + 1) + 8 * i) validate:{a3, v12}])
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

- (void)setProperties:(id)a3 forName:(id)a4
{
  properties = self->_properties;
  if (a3)
  {
    [(NSMutableDictionary *)properties setObject:a3 forKey:a4];
  }

  else
  {
    [(NSMutableDictionary *)properties removeObjectForKey:a4];
  }
}

- (void)setProperty:(id)a3 forName:(id)a4
{
  v9 = a3;
  if (v9)
  {
    v6 = MEMORY[0x277CBEB18];
    v7 = a4;
    v8 = [[v6 alloc] initWithObjects:{v9, 0}];
    [(ICSComponent *)self setProperties:v8 forName:v7];
  }

  else
  {
    v8 = a4;
    [(ICSComponent *)self removePropertiesForName:v8];
  }
}

- (void)ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4
{
  v83 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3 & 8;
  v52 = [(ICSComponent *)self propertiesToExcludeForChecksum];
  v8 = [objc_opt_class() name];
  if (!v8)
  {
    v8 = [(ICSComponent *)self unrecognizedComponentName];
  }

  [v6 appendString:@"BEGIN:"];
  [v6 appendString:v8];
  [v6 appendString:@"\r\n"];
  v9 = [(NSMutableDictionary *)self->_properties allKeys];
  v10 = v9;
  v58 = a3;
  v11 = a3 | (v7 >> 1);
  v51 = v8;
  if ((v11 & 4) != 0)
  {
    v12 = [v9 sortedArrayUsingSelector:sel_compare_];

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
  v61 = a3 | (v7 >> 1);
  if (v13)
  {
    v14 = v13;
    v64 = a3 & 0x48;
    v15 = *v77;
    v54 = a3 & 8;
    v55 = self;
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
        if (!-[ICSComponent ignorePropertyWithName:](self, "ignorePropertyWithName:", v17) && (!v7 || ([v52 containsObject:v17] & 1) == 0))
        {
          v59 = v16;
          v60 = [(NSMutableDictionary *)self->_properties objectForKey:v17];
          v18 = v58;
          if ((v58 & 0x200) == 0 || (-[ICSComponent propertiesToHide](self, "propertiesToHide"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 containsObject:v17], v19, v18 = v58, (v20 & 1) == 0))
          {
            v67 = v17;
            if ((v18 & 0x10) != 0)
            {
              v21 = [(ICSComponent *)self propertiesToObscure];
              v66 = [v21 containsObject:v17];
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
                    v28 = [(ICSStringWriter *)v27 result];
                    if ([v28 hasPrefix:@":"])
                    {
                      v29 = [v28 substringFromIndex:1];
                      v30 = v6;
                      v31 = MEMORY[0x277CCACA8];
                      v32 = ICSRedactString(v29);
                      v33 = [v31 stringWithFormat:@":%@", v32];
                      [v26 appendString:v33];

                      v6 = v30;
                      v11 = v61;
                    }

                    else
                    {
                      v29 = ICSRedactString(v28);
                      [v26 appendString:v29];
                    }
                  }

                  else
                  {
                    v27 = [[ICSStringWriter alloc] initWithString:v26];
                    [v25 ICSStringWithOptions:v11 appendingToString:v27];
                    [(ICSStringWriter *)v27 mutableResult];
                    v26 = v28 = v26;
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
                    [v6 appendString:v26];
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
            self = v55;
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
    [v6 appendString:v42];
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
        [v48 ICSStringWithOptions:v61 appendingToString:v6];
        objc_autoreleasePoolPop(v49);
      }

      v45 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v68 objects:v80 count:16];
    }

    while (v45);
  }

  [v6 appendString:@"END:"];
  [v6 appendString:v51];
  [v6 appendString:@"\r\n"];

  v50 = *MEMORY[0x277D85DE8];
}

- (BOOL)ignorePropertyWithName:(id)a3
{
  v4 = a3;
  if ((([v4 isEqualToString:@"X-MICROSOFT-CDO-ALLDAYEVENT"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"X-FUNAMBOL-ALLDAY")) && !-[ICSComponent isAllDay](self, "isAllDay"))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:@"iCalendar-ForcedAllDay"];
  }

  return v5;
}

- (id)ICSStringWithOptions:(unint64_t)a3
{
  v5 = objc_alloc_init(ICSStringWriter);
  [(ICSComponent *)self ICSStringWithOptions:a3 appendingToString:v5];
  v6 = [(ICSStringWriter *)v5 result];

  return v6;
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

- (void)addComponent:(id)a3 withUIDGenerator:(id)a4
{
  if (a3)
  {
    v5 = a3;
    v6 = [(ICSComponent *)self components];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v8 = objc_alloc(MEMORY[0x277CBEB18]);
      v9 = [(ICSComponent *)self components];
      v10 = [v8 initWithArray:v9];

      [(ICSComponent *)self setComponents:v10];
    }

    v11 = [(ICSComponent *)self components];
    [v11 addObject:v5];
  }
}

- (void)removeComponent:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(ICSComponent *)self components];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v7 = objc_alloc(MEMORY[0x277CBEB18]);
      v8 = [(ICSComponent *)self components];
      v9 = [v7 initWithArray:v8];

      [(ICSComponent *)self setComponents:v9];
    }

    v10 = [(ICSComponent *)self components];
    [v10 removeObject:v4];
  }
}

- (void)addProperty:(id)a3 withValue:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (v10 && v6)
  {
    v7 = [(NSMutableDictionary *)self->_properties objectForKey:v10];
    v8 = v7;
    if (v7)
    {
      if (([v7 containsObject:v6] & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v9 = [MEMORY[0x277CBEB18] arrayWithArray:v8];

          [(ICSComponent *)self setProperties:v9 forName:v10];
          v8 = v9;
        }

        [v8 addObject:v6];
      }
    }

    else
    {
      [(ICSComponent *)self setProperty:v6 forName:v10];
    }
  }
}

- (id)allProperties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [(ICSComponent *)self properties];
  v4 = [v2 dictionaryWithDictionary:v3];

  return v4;
}

- (int)classification
{
  v2 = [(ICSComponent *)self propertiesForName:@"CLASS"];
  v3 = [v2 lastObject];
  v4 = [v3 value];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 longValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setClassification:(int)a3
{
  if (a3)
  {
    v4 = [(ICSPredefinedValue *)ICSClassificationValue numberWithLong:a3];
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
  v3 = [v2 lastObject];

  return v3;
}

- (NSString)description
{
  v2 = [(ICSComponent *)self propertiesForName:@"DESCRIPTION"];
  v3 = [v2 lastObject];
  v4 = [v3 value];

  return v4;
}

- (void)setPropertyValue:(id)a3 forName:(id)a4
{
  v8 = a3;
  if (v8)
  {
    v6 = a4;
    v7 = [[ICSProperty alloc] initWithValue:v8 type:5007];
    [(ICSComponent *)self setProperty:v7 forName:v6];
  }

  else
  {
    v7 = a4;
    [(ICSComponent *)self removePropertiesForName:v7];
  }
}

- (void)setPropertyValue:(id)a3 type:(int)a4 forName:(id)a5
{
  v10 = a3;
  if (v10)
  {
    v8 = a5;
    v9 = [[ICSProperty alloc] initWithValue:v10 type:a4];
    [(ICSComponent *)self setProperty:v9 forName:v8];
  }

  else
  {
    v9 = a5;
    [(ICSComponent *)self removePropertiesForName:v9];
  }
}

- (ICSDate)dtstamp
{
  v2 = [(ICSComponent *)self propertiesForName:@"DTSTAMP"];
  v3 = [v2 lastObject];

  return v3;
}

- (ICSDate)dtstart
{
  v2 = [(ICSComponent *)self propertiesForName:@"DTSTART"];
  v3 = [v2 lastObject];

  return v3;
}

- (BOOL)isAllDay
{
  if ([(ICSComponent *)self forcedAllDay])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v4 = [(ICSComponent *)self dtstart];
    v3 = [v4 hasTimeComponent] ^ 1;
  }

  return v3;
}

- (ICSDate)dtend
{
  v2 = [(ICSComponent *)self propertiesForName:@"DTEND"];
  v3 = [v2 lastObject];

  return v3;
}

- (void)setDtend:(id)a3
{
  [(ICSComponent *)self setProperty:a3 forName:@"DTEND"];
  if (a3)
  {

    [(ICSComponent *)self removePropertiesForName:@"DURATION"];
  }
}

- (ICSDuration)duration
{
  v2 = [(ICSComponent *)self propertiesForName:@"DURATION"];
  v3 = [v2 lastObject];
  v4 = [v3 value];

  return v4;
}

- (void)setDuration:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(ICSComponent *)self removePropertiesForName:@"DTEND"];
  }

  [(ICSComponent *)self setPropertyValue:v4 type:5011 forName:@"DURATION"];
}

- (void)setExrule:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
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
        [v5 addObject:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [(ICSComponent *)self setProperties:v5 forName:@"EXRULE"];
  v14 = *MEMORY[0x277D85DE8];
}

- (NSArray)exrule
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [(ICSComponent *)self propertiesForName:@"EXRULE"];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
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

          v9 = [*(*(&v12 + 1) + 8 * i) value];
          [v3 addObject:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v3 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (ICSDate)last_modified
{
  v2 = [(ICSComponent *)self propertiesForName:@"LAST-MODIFIED"];
  v3 = [v2 lastObject];

  return v3;
}

- (NSString)location
{
  v2 = [(ICSComponent *)self propertiesForName:@"LOCATION"];
  v3 = [v2 lastObject];
  v4 = [v3 value];

  return v4;
}

- (ICSUserAddress)organizer
{
  v2 = [(ICSComponent *)self propertiesForName:@"ORGANIZER"];
  v3 = [v2 lastObject];

  return v3;
}

- (ICSDate)recurrence_id
{
  v2 = [(ICSComponent *)self propertiesForName:@"RECURRENCE-ID"];
  v3 = [v2 lastObject];

  return v3;
}

- (void)setRrule:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
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
        [v5 addObject:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [(ICSComponent *)self setProperties:v5 forName:@"RRULE"];
  v14 = *MEMORY[0x277D85DE8];
}

- (NSArray)rrule
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [(ICSComponent *)self propertiesForName:@"RRULE"];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
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

          v9 = [*(*(&v12 + 1) + 8 * i) value];
          [v3 addObject:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v3 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)setSequence:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
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
  v5 = [v4 lastObject];
  v6 = [v5 value];
  v7 = [v6 unsignedIntegerValue];

  return v7;
}

- (int)status
{
  v2 = [(ICSComponent *)self propertiesForName:@"STATUS"];
  v3 = [v2 lastObject];
  v4 = [v3 value];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 longValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setStatus:(int)a3
{
  if (a3)
  {
    v4 = [(ICSPredefinedValue *)ICSStatusValue numberWithLong:a3];
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
  v3 = [v2 lastObject];
  v4 = [v3 value];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 statusString];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setStatusString:(id)a3
{
  v5 = a3;
  if ([v5 length])
  {
    v4 = [ICSStatusValue statusValueFromICSString:v5];
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
  v3 = [v2 lastObject];
  v4 = [v3 value];

  return v4;
}

- (ICSTrigger)trigger
{
  v2 = [(ICSComponent *)self propertiesForName:@"TRIGGER"];
  v3 = [v2 lastObject];

  return v3;
}

- (NSString)uid
{
  v2 = [(ICSComponent *)self propertiesForName:@"UID"];
  v3 = [v2 lastObject];
  v4 = [v3 value];

  return v4;
}

- (NSURL)url
{
  v2 = [(ICSComponent *)self propertiesForName:@"URL"];
  v3 = [v2 lastObject];
  v4 = [v3 value];

  return v4;
}

- (unint64_t)priority
{
  v3 = [(ICSComponent *)self propertiesForName:@"PRIORITY"];

  if (!v3)
  {
    return 0;
  }

  v4 = [(ICSComponent *)self propertiesForName:@"PRIORITY"];
  v5 = [v4 lastObject];
  v6 = [v5 value];
  v7 = [v6 unsignedIntegerValue];

  return v7;
}

- (void)setPriority:(unint64_t)a3
{
  if (a3)
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
  v3 = [v2 lastObject];
  v4 = [v3 value];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 longValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setX_calendarserver_access:(int)a3
{
  if (a3)
  {
    v4 = [(ICSPredefinedValue *)ICSCalendarServerAccessValue numberWithLong:a3];
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
  v3 = [v2 lastObject];
  v4 = [v3 value];

  return v4;
}

- (NSString)x_apple_ews_changekey
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-EWS-CHANGEKEY"];
  v3 = [v2 lastObject];
  v4 = [v3 value];

  return v4;
}

- (NSString)x_apple_ews_itemid
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-EWS-ITEMID"];
  v3 = [v2 lastObject];
  v4 = [v3 value];

  return v4;
}

- (NSString)x_apple_ews_permission
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-EWS-PERMISSION"];
  v3 = [v2 lastObject];
  v4 = [v3 value];

  return v4;
}

- (BOOL)x_apple_ews_needsserverconfirmation
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-EWS-NEEDSSERVERCONFIRMATION"];
  v3 = [v2 lastObject];
  v4 = [v3 value];
  v5 = [v4 BOOLValue];

  return v5;
}

- (void)setX_apple_ews_needsserverconfirmation:(BOOL)a3
{
  if (a3)
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

- (void)setX_apple_ignore_on_restore:(BOOL)a3
{
  if (a3)
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
  v3 = [v2 lastObject];
  v4 = [v3 value];
  v5 = [v4 BOOLValue];

  return v5;
}

- (ICSStructuredLocation)x_apple_structured_location
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-STRUCTURED-LOCATION"];
  v3 = [v2 lastObject];

  return v3;
}

- (NSString)x_apple_etag
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-ETAG"];
  v3 = [v2 lastObject];
  v4 = [v3 value];

  return v4;
}

- (NSString)x_apple_scheduletag
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-SCHEDULETAG"];
  v3 = [v2 lastObject];
  v4 = [v3 value];

  return v4;
}

- (NSString)x_apple_serverFilename
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-SERVERFILENAME"];
  v3 = [v2 lastObject];
  v4 = [v3 value];

  return v4;
}

- (id)x_apple_travel_duration
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-TRAVEL-DURATION"];
  v3 = [v2 lastObject];

  return v3;
}

- (id)x_apple_travel_advisory_behavior
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-TRAVEL-ADVISORY-BEHAVIOR"];
  v3 = [v2 lastObject];

  return v3;
}

- (id)x_apple_travel_start
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-TRAVEL-START"];
  v3 = [v2 lastObject];

  return v3;
}

- (id)x_apple_end_location
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-END-LOCATION"];
  v3 = [v2 lastObject];

  return v3;
}

- (BOOL)forcedAllDay
{
  v2 = [(ICSComponent *)self propertiesForName:@"iCalendar-ForcedAllDay"];
  v3 = [v2 lastObject];
  v4 = [v3 value];
  v5 = [v4 BOOLValue];

  return v5;
}

- (BOOL)x_apple_suggestionInfoChangesAcknowledged
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-SUGGESTION-INFO-CHANGES-ACKNOWLEDGED"];
  v3 = [v2 lastObject];
  v4 = [v3 value];
  v5 = [v4 BOOLValue];

  return v5;
}

- (unint64_t)x_apple_suggestionInfoChangedFields
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-SUGGESTION-INFO-CHANGED-FIELDS"];
  v3 = [v2 lastObject];
  v4 = [v3 value];
  v5 = [v4 unsignedIntegerValue];

  return v5;
}

- (void)setX_apple_suggestionInfoChangedFields:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(ICSComponent *)self setPropertyValue:v4 type:5008 forName:@"X-APPLE-SUGGESTION-INFO-CHANGED-FIELDS"];
}

- (NSString)x_apple_suggestionInfoOpaqueKey
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-SUGGESTION-INFO-OPAQUE-KEY"];
  v3 = [v2 lastObject];
  v4 = [v3 value];

  return v4;
}

- (ICSDate)x_apple_suggestionInfoTimestamp
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-SUGGESTION-INFO-TIMESTAMP"];
  v3 = [v2 lastObject];

  return v3;
}

- (NSString)x_apple_suggestionInfoUniqueKey
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-SUGGESTION-INFO-UNIQUE-KEY"];
  v3 = [v2 lastObject];
  v4 = [v3 value];

  return v4;
}

- (NSString)x_apple_contactIdentifiers
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-CONTACT-IDENTIFIERS"];
  v3 = [v2 lastObject];
  v4 = [v3 value];

  return v4;
}

- (NSString)x_apple_relatedExternalID
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-EXTERNAL-REFERENCE-ID"];
  v3 = [v2 lastObject];
  v4 = [v3 value];

  return v4;
}

- (NSString)x_apple_universalID
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-UNIVERSAL-ID"];
  v3 = [v2 lastObject];
  v4 = [v3 value];

  return v4;
}

+ (id)inheritanceKeywords
{
  v2 = a1;
  objc_sync_enter(v2);
  if (!_sInheritanceKeywords)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"DTEND", @"DTSTART", @"DURATION", @"EXDATE", @"EXRULE", @"RDATE", @"RRULE", 0}];
    v4 = _sInheritanceKeywords;
    _sInheritanceKeywords = v3;
  }

  objc_sync_exit(v2);

  v5 = _sInheritanceKeywords;

  return v5;
}

- (void)fixPropertiesInheritance:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICSComponent *)self propertiesForName:@"RECURRENCE-ID"];

  if (v5)
  {
    v6 = +[ICSComponent inheritanceKeywords];
    [v4 properties];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = v20 = 0u;
    v7 = [v16 allValues];
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          if (([v6 containsObject:v12] & 1) == 0)
          {
            v13 = [v4 propertiesForName:v12];
            v14 = [(ICSComponent *)self propertiesForName:v12];
            if (!v14)
            {
              [(ICSComponent *)self setProperties:v13 forName:v12];
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
  v31 = self;
  v4 = [(ICSComponent *)self components];
  v5 = [v4 copy];

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
          v14 = [v13 x_wr_alarmuid];
          if ([v3 containsObject:v14])
          {
            goto LABEL_8;
          }

          if ([v13 action] == 3)
          {
            v16 = [v13 attendee];
            v17 = [v16 count];

            if (!v17)
            {
LABEL_8:
              v15 = [(ICSComponent *)v31 components];
              [v15 removeObject:v13];

LABEL_24:
              goto LABEL_25;
            }
          }

          else if ([v13 action] == 4)
          {
            v18 = [v13 attach];
            if (v18)
            {
            }

            else
            {
              v19 = [v13 bookmark];

              if (!v19)
              {
                goto LABEL_8;
              }
            }
          }

          v20 = v5;
          v21 = v9;
          v22 = [v13 trigger];
          v23 = [v22 isDurationBased];

          v24 = [v13 trigger];
          v25 = v24;
          if (v23)
          {
            v26 = [v24 value];
LABEL_20:
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if ((isKindOfClass & 1) == 0)
            {
              v28 = [(ICSComponent *)v31 components];
              [v28 removeObject:v13];

              v9 = v21;
              v5 = v20;
              v3 = v30;
              goto LABEL_24;
            }
          }

          else
          {

            if (v25)
            {
              v25 = [v13 trigger];
              v26 = [v25 value];
              goto LABEL_20;
            }
          }

          [v13 fixAlarm];
          v9 = v21;
          v5 = v20;
          v3 = v30;
          if ([v14 length])
          {
            [v30 addObject:v14];
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

  v4 = [(ICSComponent *)self relatedTo];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [(ICSComponent *)self relatedTo];
    v7 = [v6 copy];

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
            v13 = [(ICSComponent *)self relatedTo];
            [v13 removeObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    v14 = [(ICSComponent *)self relatedTo];
    v15 = [v14 count];

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
    v5 = [(ICSComponent *)self attendee];
    v14 = [v4 initWithCapacity:{objc_msgSend(v5, "count")}];

    v6 = [(ICSComponent *)self attendee];
    v7 = [MEMORY[0x277CCAB58] indexSet];
    if ([v6 count])
    {
      v8 = 0;
      do
      {
        v9 = [v6 objectAtIndexedSubscript:v8];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = MEMORY[0x277CCACA8];
          v11 = [v9 cn];
          v12 = [v9 value];
          v13 = [v10 stringWithFormat:@"%@ <%@>", v11, v12];

          if ([v14 containsObject:v13])
          {
            [v7 addIndex:v8];
          }

          else
          {
            [v14 addObject:v13];
          }
        }

        else
        {
          [v7 addIndex:v8];
        }

        ++v8;
      }

      while (v8 < [v6 count]);
    }

    [v6 removeObjectsAtIndexes:v7];
    if (![v6 count])
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
    v4 = [(ICSComponent *)self attach];
    v5 = [v4 copy];

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
            v11 = [(ICSComponent *)self attach];
            [v11 removeObject:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    v12 = [(ICSComponent *)self attach];
    v13 = [v12 count];

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
          v11 = [v10 value];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            v13 = [(ICSComponent *)self rrule];
            [v13 removeObject:v10];
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
    v4 = [(ICSComponent *)self rdate];
    v5 = [v4 copy];

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
          v11 = [v10 value];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            v13 = [(ICSComponent *)self exrule];
            [v13 removeObject:v10];
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
    v4 = [(ICSComponent *)self exdate];
    v5 = [v4 copy];

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
  v3 = [(ICSComponent *)self x_apple_suggestionInfoOpaqueKey];
  if ([v3 length])
  {
    v4 = [(ICSComponent *)self x_apple_suggestionInfoUniqueKey];
    v5 = [v4 length];

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
  v6 = [(ICSComponent *)self x_apple_suggestionInfoTimestamp];
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
    v7 = [(ICSComponent *)self summary];
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
    v14 = [v13 lastObject];
    v15 = [v14 value];
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
    v18 = [(ICSComponent *)self dtstart];
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
    v24 = [(ICSComponent *)self created];
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
    v27 = [(ICSComponent *)self last_modified];
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
    v30 = [(ICSComponent *)self dtstamp];
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
    v34 = [v33 lastObject];
    v35 = [v34 value];
    objc_opt_class();
    v36 = objc_opt_isKindOfClass();

    if ((v36 & 1) == 0)
    {
      [(ICSComponent *)self removePropertiesForName:@"SEQUENCE"];
    }
  }

  [(ICSComponent *)self fixAlarms];
  v37 = [(ICSComponent *)self organizer];
  objc_opt_class();
  v38 = objc_opt_isKindOfClass();

  if ((v38 & 1) == 0)
  {
    [(ICSComponent *)self removePropertiesForName:@"ORGANIZER"];
    v39 = [(ICSComponent *)self organizer];
    [v39 fixAddress];
  }

  [(ICSComponent *)self fixAttendees];
  [(ICSComponent *)self fixAttachments];
  v40 = [(ICSComponent *)self propertiesForName:@"X-WR-ITIPSTATUSATTENDEEML"];

  if (v40)
  {
    v41 = [(ICSComponent *)self propertiesForName:@"X-WR-ITIPSTATUSATTENDEEML"];
    v42 = [v41 lastObject];
    v43 = [v42 value];
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
    v47 = [v46 lastObject];
    v48 = [v47 value];
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
    v52 = [v51 lastObject];
    v53 = [v52 value];
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
    v56 = [(ICSComponent *)self recurrence_id];
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