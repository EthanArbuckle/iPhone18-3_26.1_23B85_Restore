@interface PPEvent
+ (id)convertBatchOfEKEvents:(id)events calendarInternPool:(id)pool;
+ (id)convertBatchOfEKEvents:(id)events calendarInternPool:(id)pool interningSet:(id)set;
+ (id)deferredAllocationEventFromEKEvent:(id)event;
+ (id)descriptionForSuggestedEventCategory:(unsigned __int8)category;
+ (unsigned)suggestedEventCategoryFromMetadata:(id)metadata;
- (BOOL)isEqual:(id)equal;
- (BOOL)isStructuredEvent;
- (CLLocation)structuredLocationCoordinates;
- (EKObjectID)objectID;
- (NSArray)attendees;
- (NSDate)endDate;
- (NSDate)startDate;
- (NSString)eventIdentifier;
- (NSString)location;
- (NSString)notes;
- (NSString)organizerName;
- (NSString)structuredLocationAddress;
- (NSString)structuredLocationTitle;
- (NSString)title;
- (NSURL)externalURI;
- (NSURL)url;
- (PPEvent)initWithCoder:(id)coder;
- (PPEvent)initWithEKEvent:(id)event calendarInternPool:(id)pool;
- (PPEvent)initWithEventIdentifier:(id)identifier objectID:(id)d title:(id)title location:(id)location calendar:(id)calendar startDate:(id)date endDate:(id)endDate availability:(char)self0 externalURI:(id)self1 attendees:(id)self2 organizerName:(id)self3 eventFlags:(unsigned __int8)self4 notes:(id)self5 url:(id)self6 structuredLocationTitle:(id)self7 structuredLocationAddress:(id)self8 structuredLocationCoordinates:(id)self9 suggestedEventCategory:(unsigned __int8)category;
- (PPEvent)initWithEventIdentifier:(id)identifier objectID:(id)d title:(id)title location:(id)location calendar:(id)calendar startDate:(id)date endDate:(id)endDate availability:(char)self0 externalURIString:(id)self1 attendees:(id)self2 organizerName:(id)self3 eventFlags:(unsigned __int8)self4 notes:(id)self5 urlString:(id)self6 structuredLocationTitle:(id)self7 structuredLocationAddress:(id)self8 structuredLocationCoordinates:(id)self9 suggestedEventCategory:(unsigned __int8)category;
- (PPEvent)initWithIndex:(unint64_t)index inBackingPlists:(id)plists calendar:(id)calendar;
- (PPEvent)initWithPlist:(id)plist calendar:(id)calendar;
- (char)availability;
- (id)description;
- (int64_t)compareStartDateWithEvent:(id)event;
- (unint64_t)hash;
- (unsigned)eventFlags;
- (unsigned)suggestedEventCategory;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPEvent

- (BOOL)isStructuredEvent
{
  suggestedEventCategory = [(PPEvent *)self suggestedEventCategory];
  if (suggestedEventCategory)
  {
    LOBYTE(suggestedEventCategory) = [(PPEvent *)self suggestedEventCategory]!= 12;
  }

  return suggestedEventCategory;
}

- (BOOL)isEqual:(id)equal
{
  v37 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        if (self)
        {
          v7 = self->_calendar;
          v8 = v7;
          if (v7 == v6->_calendar)
          {
          }

          else
          {
            v9 = [(PPCalendar *)v7 isEqual:?];

            if (!v9)
            {
              goto LABEL_7;
            }
          }

          v11 = [(NSArray *)self->_backingPlists objectAtIndexedSubscript:self->_indexInBackingPlists];
          v12 = [(NSArray *)v6->_backingPlists objectAtIndexedSubscript:v6->_indexInBackingPlists];
          v13 = [v11 count];
          v14 = [v11 objectForKeyedSubscript:@"slc"];
          v15 = v13 - (v14 != 0);
          v16 = [v12 count];
          v17 = [v12 objectForKeyedSubscript:@"slc"];
          v18 = v16 - (v17 != 0);

          if (v15 == v18)
          {
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            v19 = v11;
            v20 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
            if (v20)
            {
              v21 = v20;
              v30 = v11;
              v31 = v6;
              v22 = *v33;
              while (2)
              {
                for (i = 0; i != v21; ++i)
                {
                  if (*v33 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v24 = *(*(&v32 + 1) + 8 * i);
                  if (([v24 isEqual:{@"slc", v30, v31, v32}] & 1) == 0)
                  {
                    v25 = [v19 objectForKeyedSubscript:v24];
                    v26 = [v12 objectForKeyedSubscript:v24];
                    v27 = [v25 isEqual:v26];

                    if (!v27)
                    {
                      v10 = 0;
                      goto LABEL_24;
                    }
                  }
                }

                v21 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
                if (v21)
                {
                  continue;
                }

                break;
              }

              v10 = 1;
LABEL_24:
              v11 = v30;
              v6 = v31;
            }

            else
            {
              v10 = 1;
            }
          }

          else
          {
            v10 = 0;
          }

          goto LABEL_28;
        }

LABEL_7:
        v10 = 0;
LABEL_28:

        goto LABEL_29;
      }
    }

    v10 = 0;
  }

LABEL_29:

  v28 = *MEMORY[0x1E69E9840];
  return v10;
}

- (unint64_t)hash
{
  objectID = [(PPEvent *)self objectID];
  v3 = [objectID hash];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  eventIdentifier = [(PPEvent *)self eventIdentifier];
  [coderCopy encodeObject:eventIdentifier forKey:@"eid"];

  objectID = [(PPEvent *)self objectID];
  uRIRepresentation = [objectID URIRepresentation];
  absoluteString = [uRIRepresentation absoluteString];
  [coderCopy encodeObject:absoluteString forKey:@"oid"];

  title = [(PPEvent *)self title];
  [coderCopy encodeObject:title forKey:@"ttl"];

  location = [(PPEvent *)self location];
  [coderCopy encodeObject:location forKey:@"loc"];

  calendar = [(PPEvent *)self calendar];
  [coderCopy encodeObject:calendar forKey:@"cal"];

  startDate = [(PPEvent *)self startDate];
  [coderCopy encodeObject:startDate forKey:@"sdt"];

  endDate = [(PPEvent *)self endDate];
  [coderCopy encodeObject:endDate forKey:@"edt"];

  [coderCopy encodeInt32:-[PPEvent availability](self forKey:{"availability"), @"avl"}];
  externalURI = [(PPEvent *)self externalURI];
  [coderCopy encodeObject:externalURI forKey:@"uri"];

  attendees = [(PPEvent *)self attendees];
  [coderCopy encodeObject:attendees forKey:@"atn"];

  organizerName = [(PPEvent *)self organizerName];
  [coderCopy encodeObject:organizerName forKey:@"onm"];

  [coderCopy encodeInt32:-[PPEvent eventFlags](self forKey:{"eventFlags"), @"efl"}];
  notes = [(PPEvent *)self notes];
  [coderCopy encodeObject:notes forKey:@"not"];

  v17 = [(PPEvent *)self url];
  [coderCopy encodeObject:v17 forKey:@"url"];

  structuredLocationTitle = [(PPEvent *)self structuredLocationTitle];
  [coderCopy encodeObject:structuredLocationTitle forKey:@"slt"];

  structuredLocationAddress = [(PPEvent *)self structuredLocationAddress];
  [coderCopy encodeObject:structuredLocationAddress forKey:@"sla"];

  structuredLocationCoordinates = [(PPEvent *)self structuredLocationCoordinates];
  [coderCopy encodeObject:structuredLocationCoordinates forKey:@"slc"];

  [coderCopy encodeInt32:-[PPEvent suggestedEventCategory](self forKey:{"suggestedEventCategory"), @"sec"}];
}

- (PPEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [coderCopy decodeObjectOfClass:v5 forKey:@"eid"];
  v9 = [coderCopy decodeObjectOfClass:v5 forKey:@"oid"];
  v44 = v8;
  if (v9)
  {
    EKObjectIDClass = getEKObjectIDClass();
    v11 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v9];
    v12 = [EKObjectIDClass objectIDWithURL:v11];
  }

  else
  {
    v12 = 0;
  }

  v13 = [coderCopy decodeObjectOfClass:v5 forKey:@"ttl"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cal"];
  v15 = [coderCopy decodeObjectOfClass:v6 forKey:@"sdt"];
  v16 = [coderCopy decodeObjectOfClass:v6 forKey:@"edt"];
  v17 = 0;
  if (v12 && v14 && v15 && v16)
  {
    v41 = v16;
    v39 = [coderCopy decodeObjectOfClass:v5 forKey:@"loc"];
    v38 = [coderCopy decodeInt32ForKey:@"avl"];
    v36 = [coderCopy decodeObjectOfClass:v7 forKey:@"uri"];
    v18 = objc_autoreleasePoolPush();
    v42 = v13;
    v19 = objc_alloc(MEMORY[0x1E695DFD8]);
    v43 = v12;
    v20 = objc_opt_class();
    v37 = [v19 initWithObjects:{v20, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v18);
    v34 = [coderCopy decodeObjectOfClasses:v37 forKey:@"atn"];
    v33 = [coderCopy decodeObjectOfClass:v5 forKey:@"onm"];
    v35 = [coderCopy decodeInt32ForKey:@"efl"];
    v32 = [coderCopy decodeObjectOfClass:v5 forKey:@"not"];
    v21 = [coderCopy decodeObjectOfClass:v7 forKey:@"url"];
    [coderCopy decodeObjectOfClass:v5 forKey:@"slt"];
    v40 = v15;
    v23 = v22 = v14;
    v24 = [coderCopy decodeObjectOfClass:v5 forKey:@"sla"];
    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"slc"];
    LOBYTE(v31) = [coderCopy decodeInt32ForKey:@"sec"];
    LOBYTE(v30) = v35;
    LOBYTE(v29) = v38;
    v26 = v44;
    v27 = [(PPEvent *)self initWithEventIdentifier:v44 objectID:v43 title:v42 location:v39 calendar:v22 startDate:v40 endDate:v41 availability:v29 externalURI:v36 attendees:v34 organizerName:v33 eventFlags:v30 notes:v32 url:v21 structuredLocationTitle:v23 structuredLocationAddress:v24 structuredLocationCoordinates:v25 suggestedEventCategory:v31];

    v14 = v22;
    v15 = v40;

    v13 = v42;
    v17 = v27;
    v12 = v43;

    v16 = v41;
    self = v17;
  }

  else
  {
    v26 = v44;
  }

  return v17;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  eventIdentifier = [(PPEvent *)self eventIdentifier];
  title = [(PPEvent *)self title];
  startDate = [(PPEvent *)self startDate];
  endDate = [(PPEvent *)self endDate];
  attendees = [(PPEvent *)self attendees];
  v9 = [v3 initWithFormat:@"<PPEvent i:'%@' t:'%@' s:'%@' e:'%@' a:'%tu'>", eventIdentifier, title, startDate, endDate, objc_msgSend(attendees, "count")];

  return v9;
}

- (int64_t)compareStartDateWithEvent:(id)event
{
  eventCopy = event;
  startDate = [(PPEvent *)self startDate];
  startDate2 = [eventCopy startDate];

  v7 = [startDate compare:startDate2];
  return v7;
}

- (unsigned)suggestedEventCategory
{
  _plist = [(PPAttendee *)self _plist];
  v3 = [_plist objectForKeyedSubscript:@"sec"];
  unsignedCharValue = [v3 unsignedCharValue];

  return unsignedCharValue;
}

- (CLLocation)structuredLocationCoordinates
{
  _plist = [(PPAttendee *)self _plist];
  v3 = [_plist objectForKeyedSubscript:@"slc"];

  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = MEMORY[0x1E696ACD0];
    v6 = objc_autoreleasePoolPush();
    v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v6);
    v8 = [v5 unarchivedObjectOfClasses:v7 fromData:v3 error:0];

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)structuredLocationAddress
{
  _plist = [(PPAttendee *)self _plist];
  v3 = [_plist objectForKeyedSubscript:@"sla"];

  return v3;
}

- (NSString)structuredLocationTitle
{
  _plist = [(PPAttendee *)self _plist];
  v3 = [_plist objectForKeyedSubscript:@"slt"];

  return v3;
}

- (NSURL)url
{
  _plist = [(PPAttendee *)self _plist];
  v3 = [_plist objectForKeyedSubscript:@"url"];

  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)notes
{
  _plist = [(PPAttendee *)self _plist];
  v3 = [_plist objectForKeyedSubscript:@"not"];

  return v3;
}

- (unsigned)eventFlags
{
  _plist = [(PPAttendee *)self _plist];
  v3 = [_plist objectForKeyedSubscript:@"efl"];
  unsignedCharValue = [v3 unsignedCharValue];

  return unsignedCharValue;
}

- (NSString)organizerName
{
  _plist = [(PPAttendee *)self _plist];
  v3 = [_plist objectForKeyedSubscript:@"onm"];

  return v3;
}

- (NSArray)attendees
{
  _plist = [(PPAttendee *)self _plist];
  v3 = [_plist objectForKeyedSubscript:@"atn"];

  v4 = [v3 count];
  if (v4)
  {
    v5 = MEMORY[0x1E695DEC8];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __20__PPEvent_attendees__block_invoke;
    v9[3] = &unk_1E77F6668;
    v10 = v3;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __20__PPEvent_attendees__block_invoke_2;
    v8[3] = &__block_descriptor_40_e5_Q8__0l;
    v8[4] = v4;
    v6 = v3;
    v3 = [v5 _pas_proxyArrayUsingObjectAtIndexBlock:v9 andCountBlock:v8];
  }

  return v3;
}

id *__20__PPEvent_attendees__block_invoke(uint64_t a1, void *a2)
{
  v2 = [[PPAttendee alloc] initWithIndex:a2 inBackingPlists:*(a1 + 32)];

  return v2;
}

- (NSURL)externalURI
{
  _plist = [(PPAttendee *)self _plist];
  v3 = [_plist objectForKeyedSubscript:@"uri"];

  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (char)availability
{
  _plist = [(PPAttendee *)self _plist];
  v3 = [_plist objectForKeyedSubscript:@"avl"];
  unsignedCharValue = [v3 unsignedCharValue];

  return unsignedCharValue;
}

- (NSDate)endDate
{
  _plist = [(PPAttendee *)self _plist];
  v3 = [_plist objectForKeyedSubscript:@"edt"];

  return v3;
}

- (NSDate)startDate
{
  _plist = [(PPAttendee *)self _plist];
  v3 = [_plist objectForKeyedSubscript:@"sdt"];

  return v3;
}

- (NSString)location
{
  _plist = [(PPAttendee *)self _plist];
  v3 = [_plist objectForKeyedSubscript:@"loc"];

  return v3;
}

- (NSString)title
{
  _plist = [(PPAttendee *)self _plist];
  v3 = [_plist objectForKeyedSubscript:@"ttl"];

  return v3;
}

- (EKObjectID)objectID
{
  v3 = objc_alloc(getEKObjectIDClass());
  _plist = [(PPAttendee *)self _plist];
  v5 = [_plist objectForKeyedSubscript:@"oid"];
  v6 = [v3 initWithDictionaryRepresentation:v5];

  return v6;
}

- (NSString)eventIdentifier
{
  _plist = [(PPAttendee *)self _plist];
  v3 = [_plist objectForKeyedSubscript:@"eid"];

  return v3;
}

- (PPEvent)initWithIndex:(unint64_t)index inBackingPlists:(id)plists calendar:(id)calendar
{
  plistsCopy = plists;
  calendarCopy = calendar;
  v14.receiver = self;
  v14.super_class = PPEvent;
  v11 = [(PPEvent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_indexInBackingPlists = index;
    objc_storeStrong(&v11->_backingPlists, plists);
    objc_storeStrong(&v12->_calendar, calendar);
  }

  return v12;
}

- (PPEvent)initWithPlist:(id)plist calendar:(id)calendar
{
  v14 = *MEMORY[0x1E69E9840];
  plistCopy = plist;
  v6 = MEMORY[0x1E695DEC8];
  calendarCopy = calendar;
  plistCopy2 = plist;
  v9 = [v6 arrayWithObjects:&plistCopy count:1];

  v10 = [(PPEvent *)self initWithIndex:0 inBackingPlists:v9 calendar:calendarCopy, plistCopy, v14];
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (PPEvent)initWithEventIdentifier:(id)identifier objectID:(id)d title:(id)title location:(id)location calendar:(id)calendar startDate:(id)date endDate:(id)endDate availability:(char)self0 externalURIString:(id)self1 attendees:(id)self2 organizerName:(id)self3 eventFlags:(unsigned __int8)self4 notes:(id)self5 urlString:(id)self6 structuredLocationTitle:(id)self7 structuredLocationAddress:(id)self8 structuredLocationCoordinates:(id)self9 suggestedEventCategory:(unsigned __int8)category
{
  v95[127] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dCopy = d;
  obj = title;
  titleCopy = title;
  locationCopy = location;
  locationCopy2 = location;
  calendarCopy = calendar;
  dateCopy = date;
  dateCopy2 = date;
  endDateCopy = endDate;
  stringCopy = string;
  attendeesCopy = attendees;
  nameCopy = name;
  notesCopy = notes;
  urlStringCopy = urlString;
  locationTitleCopy = locationTitle;
  addressCopy = address;
  coordinatesCopy = coordinates;
  v90 = dCopy;
  if (dCopy)
  {
    if (calendarCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPEvent.m" lineNumber:556 description:{@"Invalid parameter not satisfying: %@", @"objectID"}];

    if (calendarCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PPEvent.m" lineNumber:557 description:{@"Invalid parameter not satisfying: %@", @"calendar"}];

LABEL_3:
  if (!dateCopy2)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PPEvent.m" lineNumber:558 description:{@"Invalid parameter not satisfying: %@", @"startDate"}];
  }

  if (!endDateCopy)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PPEvent.m" lineNumber:559 description:{@"Invalid parameter not satisfying: %@", @"endDate"}];
  }

  v26 = &v94;
  bzero(&v94, 0x400uLL);
  v27 = v92;
  bzero(v92, 0x400uLL);
  if (identifierCopy)
  {
    v27 = &v93;
    v26 = v95;
    v94 = @"eid";
    v92[0] = identifierCopy;
    v28 = 1;
  }

  else
  {
    v28 = 0;
  }

  *v26 = @"oid";
  dictionaryRepresentation = [v90 dictionaryRepresentation];
  v30 = *v27;
  *v27 = dictionaryRepresentation;

  v31 = v28 + 1;
  if (titleCopy)
  {
    v32 = v95[v31 - 1];
    v95[v31 - 1] = @"ttl";

    objc_storeStrong(&v92[v31], obj);
    v31 = v28 | 2;
  }

  if (locationCopy2)
  {
    v33 = v95[v31 - 1];
    v95[v31 - 1] = @"loc";

    objc_storeStrong(&v92[v31++], locationCopy);
  }

  v34 = v31;
  v35 = v95[v31 - 1];
  v95[v31 - 1] = @"sdt";

  objc_storeStrong(&v92[v31], dateCopy);
  v36 = v95[v31];
  v95[v34] = @"edt";

  objc_storeStrong(&v92[v31 + 1], endDate);
  v37 = 8 * v31 + 16;
  v38 = *(&v95[-1] + v37);
  *(v95 + v34 * 8 + 8) = @"avl";

  v39 = [MEMORY[0x1E696AD98] numberWithChar:availability];
  v40 = *(v92 + v37);
  *(v92 + v37) = v39;

  v41 = v31 + 3;
  if (stringCopy)
  {
    v42 = v95[v41 - 1];
    v95[v41 - 1] = @"uri";

    objc_storeStrong(&v92[v41], string);
    v41 = v31 + 4;
  }

  if (attendeesCopy)
  {
    v43 = v95[v41 - 1];
    v95[v41 - 1] = @"atn";

    v44 = [attendeesCopy _pas_mappedArrayWithTransform:&__block_literal_global_171];
    v45 = v92[v41];
    v92[v41] = v44;

    ++v41;
  }

  if (nameCopy)
  {
    v46 = v95[v41 - 1];
    v95[v41 - 1] = @"onm";

    objc_storeStrong(&v92[v41++], name);
  }

  v47 = v95[v41 - 1];
  v95[v41 - 1] = @"efl";

  v48 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:flags];
  v49 = v92[v41];
  v92[v41] = v48;

  v50 = v41 + 1;
  if (notesCopy)
  {
    v51 = v95[v50 - 1];
    v95[v50 - 1] = @"not";

    objc_storeStrong(&v92[v50], notes);
    v50 = v41 + 2;
  }

  v52 = coordinatesCopy;
  if (urlStringCopy)
  {
    v53 = v95[v50 - 1];
    v95[v50 - 1] = @"url";

    objc_storeStrong(&v92[v50++], urlString);
  }

  if (locationTitleCopy)
  {
    v54 = v95[v50 - 1];
    v95[v50 - 1] = @"slt";

    objc_storeStrong(&v92[v50++], locationTitle);
  }

  if (addressCopy)
  {
    v55 = v95[v50 - 1];
    v95[v50 - 1] = @"sla";

    objc_storeStrong(&v92[v50++], address);
  }

  if (coordinatesCopy)
  {
    v56 = objc_autoreleasePoolPush();
    v57 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:coordinatesCopy requiringSecureCoding:1 error:0];
    objc_autoreleasePoolPop(v56);
    if (v57)
    {
      v58 = v95[v50 - 1];
      v95[v50 - 1] = @"slc";

      objc_storeStrong(&v92[v50++], v57);
    }

    v52 = coordinatesCopy;
  }

  if (category)
  {
    v59 = v95[v50 - 1];
    v95[v50 - 1] = @"sec";

    v60 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:category];
    v61 = v92[v50];
    v92[v50] = v60;

    ++v50;
  }

  v62 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjects:v92 forKeys:&v94 count:v50];
  v63 = [(PPEvent *)self initWithPlist:v62 calendar:calendarCopy];

  for (i = 127; i != -1; --i)
  {
  }

  for (j = 127; j != -1; --j)
  {
  }

  v66 = *MEMORY[0x1E69E9840];
  return v63;
}

- (PPEvent)initWithEventIdentifier:(id)identifier objectID:(id)d title:(id)title location:(id)location calendar:(id)calendar startDate:(id)date endDate:(id)endDate availability:(char)self0 externalURI:(id)self1 attendees:(id)self2 organizerName:(id)self3 eventFlags:(unsigned __int8)self4 notes:(id)self5 url:(id)self6 structuredLocationTitle:(id)self7 structuredLocationAddress:(id)self8 structuredLocationCoordinates:(id)self9 suggestedEventCategory:(unsigned __int8)category
{
  coordinatesCopy = coordinates;
  addressCopy = address;
  locationTitleCopy = locationTitle;
  urlCopy = url;
  notesCopy = notes;
  nameCopy = name;
  attendeesCopy = attendees;
  endDateCopy = endDate;
  dateCopy = date;
  calendarCopy = calendar;
  locationCopy = location;
  titleCopy = title;
  dCopy = d;
  identifierCopy = identifier;
  absoluteString = [i absoluteString];
  absoluteString2 = [urlCopy absoluteString];

  LOBYTE(v31) = category;
  LOBYTE(v30) = flags;
  LOBYTE(v29) = availability;
  v26 = locationCopy;
  v27 = [(PPEvent *)self initWithEventIdentifier:identifierCopy objectID:dCopy title:titleCopy location:locationCopy calendar:calendarCopy startDate:dateCopy endDate:endDateCopy availability:v29 externalURIString:absoluteString attendees:attendeesCopy organizerName:nameCopy eventFlags:v30 notes:notesCopy urlString:absoluteString2 structuredLocationTitle:locationTitleCopy structuredLocationAddress:addressCopy structuredLocationCoordinates:coordinatesCopy suggestedEventCategory:v31];

  return v27;
}

- (PPEvent)initWithEKEvent:(id)event calendarInternPool:(id)pool
{
  poolCopy = pool;
  v7 = [PPEvent deferredAllocationEventFromEKEvent:event];
  v8 = objc_opt_new();
  v9 = (v7)[2](v7, v8, poolCopy);

  return v9;
}

+ (id)descriptionForSuggestedEventCategory:(unsigned __int8)category
{
  if (category > 0xCu)
  {
    return 0;
  }

  else
  {
    return *(&off_1E77F66C0 + category);
  }
}

+ (unsigned)suggestedEventCategoryFromMetadata:(id)metadata
{
  v19 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  v4 = [metadataCopy objectForKeyedSubscript:@"SGEventMetadataTypeKey"];
  v5 = [v4 isEqualToString:@"StructuredEvent"];

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [metadataCopy objectForKeyedSubscript:@"SGEventMetadataCategoryDescriptionKey"];
    lowercaseString = [v7 lowercaseString];

    if (lowercaseString)
    {
      v9 = [&unk_1F1B465C0 objectForKeyedSubscript:lowercaseString];
      v10 = v9;
      if (v9)
      {
        unsignedCharValue = [v9 unsignedCharValue];
      }

      else
      {
        v14 = pp_default_log_handle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          v17 = 138543362;
          v18 = lowercaseString;
          _os_log_fault_impl(&dword_1A7FD3000, v14, OS_LOG_TYPE_FAULT, "PPEvent creation with unknown suggested category: StructuredEvent::%{public}@", &v17, 0xCu);
        }

        unsignedCharValue = 0;
      }
    }

    else
    {
      unsignedCharValue = 0;
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v12 = [metadataCopy objectForKeyedSubscript:@"SGEventMetadataTypeKey"];
    v13 = [v12 isEqualToString:@"NLEvent"];

    if (v13)
    {
      unsignedCharValue = 12;
    }

    else
    {
      unsignedCharValue = 0;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return unsignedCharValue;
}

+ (id)convertBatchOfEKEvents:(id)events calendarInternPool:(id)pool interningSet:(id)set
{
  v35 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  poolCopy = pool;
  setCopy = set;
  if ([eventsCopy count])
  {
    v11 = pp_default_log_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v30 = [eventsCopy count];
      _os_log_impl(&dword_1A7FD3000, v11, OS_LOG_TYPE_DEFAULT, "PPEvent convertBatchOfEKEvents begin (count %tu)", buf, 0xCu);
    }

    v12 = pp_default_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7FD3000, v12, OS_LOG_TYPE_DEFAULT, "PPEvent convertBatchOfEKEvents step 1 begin: generate deferredAllocationBlocks", buf, 2u);
    }

    v13 = objc_autoreleasePoolPush();
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __66__PPEvent_convertBatchOfEKEvents_calendarInternPool_interningSet___block_invoke;
    v28[3] = &__block_descriptor_40_e17__16__0__EKEvent_8l;
    v28[4] = self;
    v14 = [eventsCopy _pas_mappedArrayWithTransform:v28];
    objc_autoreleasePoolPop(v13);
    v15 = pp_default_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7FD3000, v15, OS_LOG_TYPE_DEFAULT, "PPEvent convertBatchOfEKEvents step 2 begin: run deferredAllocationBlocks", buf, 2u);
    }

    v16 = objc_autoreleasePoolPush();
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __66__PPEvent_convertBatchOfEKEvents_calendarInternPool_interningSet___block_invoke_155;
    v25[3] = &unk_1E77F6620;
    v17 = setCopy;
    v26 = v17;
    v27 = poolCopy;
    v18 = [v14 _pas_mappedArrayWithTransform:v25];

    objc_autoreleasePoolPop(v16);
    v19 = pp_default_log_handle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [eventsCopy count];
      v21 = [v18 count];
      v22 = [v17 count];
      *buf = 134218496;
      v30 = v20;
      v31 = 2048;
      v32 = v21;
      v33 = 2048;
      v34 = v22;
      _os_log_impl(&dword_1A7FD3000, v19, OS_LOG_TYPE_DEFAULT, "PPEvent convertBatchOfEKEvents complete (ekEvent count %tu, ppEvent count %tu, interningSet count %tu)", buf, 0x20u);
    }
  }

  else
  {
    v18 = MEMORY[0x1E695E0F0];
  }

  v23 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)convertBatchOfEKEvents:(id)events calendarInternPool:(id)pool
{
  v6 = MEMORY[0x1E695DFA8];
  poolCopy = pool;
  eventsCopy = events;
  v9 = [v6 alloc];
  v10 = [eventsCopy count];
  if ((10 * v10) >= 0x4000)
  {
    v11 = 0x4000;
  }

  else
  {
    v11 = 10 * v10;
  }

  v12 = [v9 initWithCapacity:v11];
  v13 = [self convertBatchOfEKEvents:eventsCopy calendarInternPool:poolCopy interningSet:v12];

  return v13;
}

+ (id)deferredAllocationEventFromEKEvent:(id)event
{
  v89 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v4 = objc_autoreleasePoolPush();
  startDate = [eventCopy startDate];
  if (startDate && (v6 = startDate, [eventCopy endDate], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    eventIdentifier = [eventCopy eventIdentifier];
    organizer = [eventCopy organizer];
    isCurrentUser = [organizer isCurrentUser];

    eligibleForTravelAdvisories = [eventCopy eligibleForTravelAdvisories];
    v11 = isCurrentUser | 4;
    if (!eligibleForTravelAdvisories)
    {
      v11 = isCurrentUser;
    }

    v59 = v11;
    preferredLocationWithoutPrediction = [eventCopy preferredLocationWithoutPrediction];
    calendar = [eventCopy calendar];
    v13 = objc_autoreleasePoolPush();
    v14 = [eventCopy customObjectForKey:@"SGEventMetadataKey"];
    objc_autoreleasePoolPop(v13);
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v55 = [objc_opt_class() suggestedEventCategoryFromMetadata:v14];
    }

    else
    {
      v55 = 0;
    }

    locationWithoutPrediction = [eventCopy locationWithoutPrediction];
    if ([locationWithoutPrediction length])
    {
      v57 = locationWithoutPrediction;
    }

    else
    {

      v57 = 0;
    }

    attendees = [eventCopy attendees];
    v62 = [attendees _pas_mappedArrayWithTransform:&__block_literal_global_146];

    v61 = v14;
    if ([eventCopy hasNotes])
    {
      notes = [eventCopy notes];
    }

    else
    {
      notes = 0;
    }

    title = [preferredLocationWithoutPrediction title];
    title2 = [eventCopy title];
    objectID = [eventCopy objectID];
    startDate2 = [eventCopy startDate];
    endDate = [eventCopy endDate];
    availability = [eventCopy availability];
    externalURI = [eventCopy externalURI];
    [externalURI absoluteString];
    v22 = v65 = preferredLocationWithoutPrediction;

    organizer2 = [eventCopy organizer];
    name = [organizer2 name];

    v25 = [eventCopy URL];
    absoluteString = [v25 absoluteString];

    address = [v65 address];
    geoLocation = [v65 geoLocation];
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __46__PPEvent_deferredAllocationEventFromEKEvent___block_invoke_4;
    v66[3] = &unk_1E77F65D8;
    v67 = calendar;
    v68 = v62;
    v69 = eventIdentifier;
    v70 = objectID;
    v71 = title2;
    v72 = v57;
    v73 = startDate2;
    v74 = endDate;
    v75 = v22;
    v76 = name;
    v83 = v59;
    v77 = notes;
    v78 = absoluteString;
    v79 = title;
    v80 = address;
    v81 = geoLocation;
    v82 = availability;
    v84 = v55;
    v60 = geoLocation;
    v56 = address;
    v54 = title;
    v52 = absoluteString;
    v50 = notes;
    v48 = name;
    v47 = v22;
    v46 = endDate;
    v45 = startDate2;
    v58 = v57;
    v29 = title2;
    v30 = objectID;
    v31 = eventIdentifier;
    v32 = v62;
    v33 = calendar;
    v16 = [v66 copy];

    v15 = v65;
  }

  else
  {
    v15 = pp_default_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v85[0] = @"nil start date";
      v36 = MEMORY[0x1E696AD98];
      startDate3 = [eventCopy startDate];
      v38 = [v36 numberWithInt:startDate3 == 0];
      v85[1] = @"nil end date";
      v86[0] = v38;
      v39 = MEMORY[0x1E696AD98];
      endDate2 = [eventCopy endDate];
      v41 = [v39 numberWithInt:endDate2 == 0];
      v86[1] = v41;
      v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:v85 count:2];
      *buf = 138412290;
      v88 = v42;
      _os_log_debug_impl(&dword_1A7FD3000, v15, OS_LOG_TYPE_DEBUG, "PPEvent initWithEKEvent returning nil due to: %@", buf, 0xCu);
    }

    v16 = &__block_literal_global_1420;
  }

  objc_autoreleasePoolPop(v4);
  v34 = *MEMORY[0x1E69E9840];

  return v16;
}

PPEvent *__46__PPEvent_deferredAllocationEventFromEKEvent___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v31 = [[PPCalendar alloc] initWithEKCalendar:*(a1 + 32) internPool:v6];

  v7 = *(a1 + 40);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __46__PPEvent_deferredAllocationEventFromEKEvent___block_invoke_5;
  v32[3] = &unk_1E77F65B0;
  v33 = v5;
  v8 = v5;
  v30 = [v7 _pas_mappedArrayWithTransform:v32];
  v27 = [PPEvent alloc];
  v24 = internUsingSet(*(a1 + 48), v8);
  v29 = internUsingSet(*(a1 + 56), v8);
  v26 = internUsingSet(*(a1 + 64), v8);
  v25 = internUsingSet(*(a1 + 72), v8);
  v23 = internUsingSet(*(a1 + 80), v8);
  v20 = internUsingSet(*(a1 + 88), v8);
  v22 = *(a1 + 152);
  v19 = internUsingSet(*(a1 + 96), v8);
  v18 = internUsingSet(*(a1 + 104), v8);
  v21 = *(a1 + 160);
  v17 = internUsingSet(*(a1 + 112), v8);
  v9 = internUsingSet(*(a1 + 120), v8);
  v10 = internUsingSet(*(a1 + 128), v8);
  v11 = internUsingSet(*(a1 + 136), v8);
  v12 = internUsingSet(*(a1 + 144), v8);
  LOBYTE(v16) = *(a1 + 161);
  LOBYTE(v15) = v21;
  LOBYTE(v14) = v22;
  v28 = [(PPEvent *)v27 initWithEventIdentifier:v24 objectID:v29 title:v26 location:v25 calendar:v31 startDate:v23 endDate:v20 availability:v14 externalURIString:v19 attendees:v30 organizerName:v18 eventFlags:v15 notes:v17 urlString:v9 structuredLocationTitle:v10 structuredLocationAddress:v11 structuredLocationCoordinates:v12 suggestedEventCategory:v16];

  return v28;
}

id __46__PPEvent_deferredAllocationEventFromEKEvent___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 name];
  v4 = [v2 emailAddress];
  v5 = [v2 URL];
  v6 = [v5 absoluteString];

  LOBYTE(v5) = [v2 isCurrentUser];
  v7 = [v2 participantStatus];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __46__PPEvent_deferredAllocationEventFromEKEvent___block_invoke_3;
  v13[3] = &unk_1E77F6588;
  v14 = v3;
  v15 = v4;
  v18 = v5;
  v16 = v6;
  v17 = v7;
  v8 = v6;
  v9 = v4;
  v10 = v3;
  v11 = [v13 copy];

  return v11;
}

id __46__PPEvent_deferredAllocationEventFromEKEvent___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PPAttendee alloc] initWithName:*(a1 + 32) emailAddress:*(a1 + 40) urlString:*(a1 + 48) isCurrentUser:*(a1 + 64) status:*(a1 + 56)];
  v5 = internUsingSet(v4, v3);

  return v5;
}

@end