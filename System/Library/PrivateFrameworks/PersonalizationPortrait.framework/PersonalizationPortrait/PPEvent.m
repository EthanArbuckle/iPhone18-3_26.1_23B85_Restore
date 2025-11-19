@interface PPEvent
+ (id)convertBatchOfEKEvents:(id)a3 calendarInternPool:(id)a4;
+ (id)convertBatchOfEKEvents:(id)a3 calendarInternPool:(id)a4 interningSet:(id)a5;
+ (id)deferredAllocationEventFromEKEvent:(id)a3;
+ (id)descriptionForSuggestedEventCategory:(unsigned __int8)a3;
+ (unsigned)suggestedEventCategoryFromMetadata:(id)a3;
- (BOOL)isEqual:(id)a3;
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
- (PPEvent)initWithCoder:(id)a3;
- (PPEvent)initWithEKEvent:(id)a3 calendarInternPool:(id)a4;
- (PPEvent)initWithEventIdentifier:(id)a3 objectID:(id)a4 title:(id)a5 location:(id)a6 calendar:(id)a7 startDate:(id)a8 endDate:(id)a9 availability:(char)a10 externalURI:(id)a11 attendees:(id)a12 organizerName:(id)a13 eventFlags:(unsigned __int8)a14 notes:(id)a15 url:(id)a16 structuredLocationTitle:(id)a17 structuredLocationAddress:(id)a18 structuredLocationCoordinates:(id)a19 suggestedEventCategory:(unsigned __int8)a20;
- (PPEvent)initWithEventIdentifier:(id)a3 objectID:(id)a4 title:(id)a5 location:(id)a6 calendar:(id)a7 startDate:(id)a8 endDate:(id)a9 availability:(char)a10 externalURIString:(id)a11 attendees:(id)a12 organizerName:(id)a13 eventFlags:(unsigned __int8)a14 notes:(id)a15 urlString:(id)a16 structuredLocationTitle:(id)a17 structuredLocationAddress:(id)a18 structuredLocationCoordinates:(id)a19 suggestedEventCategory:(unsigned __int8)a20;
- (PPEvent)initWithIndex:(unint64_t)a3 inBackingPlists:(id)a4 calendar:(id)a5;
- (PPEvent)initWithPlist:(id)a3 calendar:(id)a4;
- (char)availability;
- (id)description;
- (int64_t)compareStartDateWithEvent:(id)a3;
- (unint64_t)hash;
- (unsigned)eventFlags;
- (unsigned)suggestedEventCategory;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPEvent

- (BOOL)isStructuredEvent
{
  v3 = [(PPEvent *)self suggestedEventCategory];
  if (v3)
  {
    LOBYTE(v3) = [(PPEvent *)self suggestedEventCategory]!= 12;
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    if (v4)
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
  v2 = [(PPEvent *)self objectID];
  v3 = [v2 hash];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v21 = a3;
  v4 = [(PPEvent *)self eventIdentifier];
  [v21 encodeObject:v4 forKey:@"eid"];

  v5 = [(PPEvent *)self objectID];
  v6 = [v5 URIRepresentation];
  v7 = [v6 absoluteString];
  [v21 encodeObject:v7 forKey:@"oid"];

  v8 = [(PPEvent *)self title];
  [v21 encodeObject:v8 forKey:@"ttl"];

  v9 = [(PPEvent *)self location];
  [v21 encodeObject:v9 forKey:@"loc"];

  v10 = [(PPEvent *)self calendar];
  [v21 encodeObject:v10 forKey:@"cal"];

  v11 = [(PPEvent *)self startDate];
  [v21 encodeObject:v11 forKey:@"sdt"];

  v12 = [(PPEvent *)self endDate];
  [v21 encodeObject:v12 forKey:@"edt"];

  [v21 encodeInt32:-[PPEvent availability](self forKey:{"availability"), @"avl"}];
  v13 = [(PPEvent *)self externalURI];
  [v21 encodeObject:v13 forKey:@"uri"];

  v14 = [(PPEvent *)self attendees];
  [v21 encodeObject:v14 forKey:@"atn"];

  v15 = [(PPEvent *)self organizerName];
  [v21 encodeObject:v15 forKey:@"onm"];

  [v21 encodeInt32:-[PPEvent eventFlags](self forKey:{"eventFlags"), @"efl"}];
  v16 = [(PPEvent *)self notes];
  [v21 encodeObject:v16 forKey:@"not"];

  v17 = [(PPEvent *)self url];
  [v21 encodeObject:v17 forKey:@"url"];

  v18 = [(PPEvent *)self structuredLocationTitle];
  [v21 encodeObject:v18 forKey:@"slt"];

  v19 = [(PPEvent *)self structuredLocationAddress];
  [v21 encodeObject:v19 forKey:@"sla"];

  v20 = [(PPEvent *)self structuredLocationCoordinates];
  [v21 encodeObject:v20 forKey:@"slc"];

  [v21 encodeInt32:-[PPEvent suggestedEventCategory](self forKey:{"suggestedEventCategory"), @"sec"}];
}

- (PPEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 decodeObjectOfClass:v5 forKey:@"eid"];
  v9 = [v4 decodeObjectOfClass:v5 forKey:@"oid"];
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

  v13 = [v4 decodeObjectOfClass:v5 forKey:@"ttl"];
  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cal"];
  v15 = [v4 decodeObjectOfClass:v6 forKey:@"sdt"];
  v16 = [v4 decodeObjectOfClass:v6 forKey:@"edt"];
  v17 = 0;
  if (v12 && v14 && v15 && v16)
  {
    v41 = v16;
    v39 = [v4 decodeObjectOfClass:v5 forKey:@"loc"];
    v38 = [v4 decodeInt32ForKey:@"avl"];
    v36 = [v4 decodeObjectOfClass:v7 forKey:@"uri"];
    v18 = objc_autoreleasePoolPush();
    v42 = v13;
    v19 = objc_alloc(MEMORY[0x1E695DFD8]);
    v43 = v12;
    v20 = objc_opt_class();
    v37 = [v19 initWithObjects:{v20, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v18);
    v34 = [v4 decodeObjectOfClasses:v37 forKey:@"atn"];
    v33 = [v4 decodeObjectOfClass:v5 forKey:@"onm"];
    v35 = [v4 decodeInt32ForKey:@"efl"];
    v32 = [v4 decodeObjectOfClass:v5 forKey:@"not"];
    v21 = [v4 decodeObjectOfClass:v7 forKey:@"url"];
    [v4 decodeObjectOfClass:v5 forKey:@"slt"];
    v40 = v15;
    v23 = v22 = v14;
    v24 = [v4 decodeObjectOfClass:v5 forKey:@"sla"];
    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"slc"];
    LOBYTE(v31) = [v4 decodeInt32ForKey:@"sec"];
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
  v4 = [(PPEvent *)self eventIdentifier];
  v5 = [(PPEvent *)self title];
  v6 = [(PPEvent *)self startDate];
  v7 = [(PPEvent *)self endDate];
  v8 = [(PPEvent *)self attendees];
  v9 = [v3 initWithFormat:@"<PPEvent i:'%@' t:'%@' s:'%@' e:'%@' a:'%tu'>", v4, v5, v6, v7, objc_msgSend(v8, "count")];

  return v9;
}

- (int64_t)compareStartDateWithEvent:(id)a3
{
  v4 = a3;
  v5 = [(PPEvent *)self startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (unsigned)suggestedEventCategory
{
  v2 = [(PPAttendee *)self _plist];
  v3 = [v2 objectForKeyedSubscript:@"sec"];
  v4 = [v3 unsignedCharValue];

  return v4;
}

- (CLLocation)structuredLocationCoordinates
{
  v2 = [(PPAttendee *)self _plist];
  v3 = [v2 objectForKeyedSubscript:@"slc"];

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
  v2 = [(PPAttendee *)self _plist];
  v3 = [v2 objectForKeyedSubscript:@"sla"];

  return v3;
}

- (NSString)structuredLocationTitle
{
  v2 = [(PPAttendee *)self _plist];
  v3 = [v2 objectForKeyedSubscript:@"slt"];

  return v3;
}

- (NSURL)url
{
  v2 = [(PPAttendee *)self _plist];
  v3 = [v2 objectForKeyedSubscript:@"url"];

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
  v2 = [(PPAttendee *)self _plist];
  v3 = [v2 objectForKeyedSubscript:@"not"];

  return v3;
}

- (unsigned)eventFlags
{
  v2 = [(PPAttendee *)self _plist];
  v3 = [v2 objectForKeyedSubscript:@"efl"];
  v4 = [v3 unsignedCharValue];

  return v4;
}

- (NSString)organizerName
{
  v2 = [(PPAttendee *)self _plist];
  v3 = [v2 objectForKeyedSubscript:@"onm"];

  return v3;
}

- (NSArray)attendees
{
  v2 = [(PPAttendee *)self _plist];
  v3 = [v2 objectForKeyedSubscript:@"atn"];

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
  v2 = [(PPAttendee *)self _plist];
  v3 = [v2 objectForKeyedSubscript:@"uri"];

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
  v2 = [(PPAttendee *)self _plist];
  v3 = [v2 objectForKeyedSubscript:@"avl"];
  v4 = [v3 unsignedCharValue];

  return v4;
}

- (NSDate)endDate
{
  v2 = [(PPAttendee *)self _plist];
  v3 = [v2 objectForKeyedSubscript:@"edt"];

  return v3;
}

- (NSDate)startDate
{
  v2 = [(PPAttendee *)self _plist];
  v3 = [v2 objectForKeyedSubscript:@"sdt"];

  return v3;
}

- (NSString)location
{
  v2 = [(PPAttendee *)self _plist];
  v3 = [v2 objectForKeyedSubscript:@"loc"];

  return v3;
}

- (NSString)title
{
  v2 = [(PPAttendee *)self _plist];
  v3 = [v2 objectForKeyedSubscript:@"ttl"];

  return v3;
}

- (EKObjectID)objectID
{
  v3 = objc_alloc(getEKObjectIDClass());
  v4 = [(PPAttendee *)self _plist];
  v5 = [v4 objectForKeyedSubscript:@"oid"];
  v6 = [v3 initWithDictionaryRepresentation:v5];

  return v6;
}

- (NSString)eventIdentifier
{
  v2 = [(PPAttendee *)self _plist];
  v3 = [v2 objectForKeyedSubscript:@"eid"];

  return v3;
}

- (PPEvent)initWithIndex:(unint64_t)a3 inBackingPlists:(id)a4 calendar:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PPEvent;
  v11 = [(PPEvent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_indexInBackingPlists = a3;
    objc_storeStrong(&v11->_backingPlists, a4);
    objc_storeStrong(&v12->_calendar, a5);
  }

  return v12;
}

- (PPEvent)initWithPlist:(id)a3 calendar:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v13 count:1];

  v10 = [(PPEvent *)self initWithIndex:0 inBackingPlists:v9 calendar:v7, v13, v14];
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (PPEvent)initWithEventIdentifier:(id)a3 objectID:(id)a4 title:(id)a5 location:(id)a6 calendar:(id)a7 startDate:(id)a8 endDate:(id)a9 availability:(char)a10 externalURIString:(id)a11 attendees:(id)a12 organizerName:(id)a13 eventFlags:(unsigned __int8)a14 notes:(id)a15 urlString:(id)a16 structuredLocationTitle:(id)a17 structuredLocationAddress:(id)a18 structuredLocationCoordinates:(id)a19 suggestedEventCategory:(unsigned __int8)a20
{
  v95[127] = *MEMORY[0x1E69E9840];
  v91 = a3;
  v24 = a4;
  obj = a5;
  v89 = a5;
  v74 = a6;
  v88 = a6;
  v25 = a7;
  v75 = a8;
  v87 = a8;
  v85 = a9;
  v79 = a11;
  v78 = a12;
  v77 = a13;
  v76 = a15;
  v84 = a16;
  v83 = a17;
  v82 = a18;
  v81 = a19;
  v90 = v24;
  if (v24)
  {
    if (v25)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v68 = [MEMORY[0x1E696AAA8] currentHandler];
    [v68 handleFailureInMethod:a2 object:self file:@"PPEvent.m" lineNumber:556 description:{@"Invalid parameter not satisfying: %@", @"objectID"}];

    if (v25)
    {
      goto LABEL_3;
    }
  }

  v69 = [MEMORY[0x1E696AAA8] currentHandler];
  [v69 handleFailureInMethod:a2 object:self file:@"PPEvent.m" lineNumber:557 description:{@"Invalid parameter not satisfying: %@", @"calendar"}];

LABEL_3:
  if (!v87)
  {
    v70 = [MEMORY[0x1E696AAA8] currentHandler];
    [v70 handleFailureInMethod:a2 object:self file:@"PPEvent.m" lineNumber:558 description:{@"Invalid parameter not satisfying: %@", @"startDate"}];
  }

  if (!v85)
  {
    v71 = [MEMORY[0x1E696AAA8] currentHandler];
    [v71 handleFailureInMethod:a2 object:self file:@"PPEvent.m" lineNumber:559 description:{@"Invalid parameter not satisfying: %@", @"endDate"}];
  }

  v26 = &v94;
  bzero(&v94, 0x400uLL);
  v27 = v92;
  bzero(v92, 0x400uLL);
  if (v91)
  {
    v27 = &v93;
    v26 = v95;
    v94 = @"eid";
    v92[0] = v91;
    v28 = 1;
  }

  else
  {
    v28 = 0;
  }

  *v26 = @"oid";
  v29 = [v90 dictionaryRepresentation];
  v30 = *v27;
  *v27 = v29;

  v31 = v28 + 1;
  if (v89)
  {
    v32 = v95[v31 - 1];
    v95[v31 - 1] = @"ttl";

    objc_storeStrong(&v92[v31], obj);
    v31 = v28 | 2;
  }

  if (v88)
  {
    v33 = v95[v31 - 1];
    v95[v31 - 1] = @"loc";

    objc_storeStrong(&v92[v31++], v74);
  }

  v34 = v31;
  v35 = v95[v31 - 1];
  v95[v31 - 1] = @"sdt";

  objc_storeStrong(&v92[v31], v75);
  v36 = v95[v31];
  v95[v34] = @"edt";

  objc_storeStrong(&v92[v31 + 1], a9);
  v37 = 8 * v31 + 16;
  v38 = *(&v95[-1] + v37);
  *(v95 + v34 * 8 + 8) = @"avl";

  v39 = [MEMORY[0x1E696AD98] numberWithChar:a10];
  v40 = *(v92 + v37);
  *(v92 + v37) = v39;

  v41 = v31 + 3;
  if (v79)
  {
    v42 = v95[v41 - 1];
    v95[v41 - 1] = @"uri";

    objc_storeStrong(&v92[v41], a11);
    v41 = v31 + 4;
  }

  if (v78)
  {
    v43 = v95[v41 - 1];
    v95[v41 - 1] = @"atn";

    v44 = [v78 _pas_mappedArrayWithTransform:&__block_literal_global_171];
    v45 = v92[v41];
    v92[v41] = v44;

    ++v41;
  }

  if (v77)
  {
    v46 = v95[v41 - 1];
    v95[v41 - 1] = @"onm";

    objc_storeStrong(&v92[v41++], a13);
  }

  v47 = v95[v41 - 1];
  v95[v41 - 1] = @"efl";

  v48 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:a14];
  v49 = v92[v41];
  v92[v41] = v48;

  v50 = v41 + 1;
  if (v76)
  {
    v51 = v95[v50 - 1];
    v95[v50 - 1] = @"not";

    objc_storeStrong(&v92[v50], a15);
    v50 = v41 + 2;
  }

  v52 = v81;
  if (v84)
  {
    v53 = v95[v50 - 1];
    v95[v50 - 1] = @"url";

    objc_storeStrong(&v92[v50++], a16);
  }

  if (v83)
  {
    v54 = v95[v50 - 1];
    v95[v50 - 1] = @"slt";

    objc_storeStrong(&v92[v50++], a17);
  }

  if (v82)
  {
    v55 = v95[v50 - 1];
    v95[v50 - 1] = @"sla";

    objc_storeStrong(&v92[v50++], a18);
  }

  if (v81)
  {
    v56 = objc_autoreleasePoolPush();
    v57 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v81 requiringSecureCoding:1 error:0];
    objc_autoreleasePoolPop(v56);
    if (v57)
    {
      v58 = v95[v50 - 1];
      v95[v50 - 1] = @"slc";

      objc_storeStrong(&v92[v50++], v57);
    }

    v52 = v81;
  }

  if (a20)
  {
    v59 = v95[v50 - 1];
    v95[v50 - 1] = @"sec";

    v60 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:a20];
    v61 = v92[v50];
    v92[v50] = v60;

    ++v50;
  }

  v62 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjects:v92 forKeys:&v94 count:v50];
  v63 = [(PPEvent *)self initWithPlist:v62 calendar:v25];

  for (i = 127; i != -1; --i)
  {
  }

  for (j = 127; j != -1; --j)
  {
  }

  v66 = *MEMORY[0x1E69E9840];
  return v63;
}

- (PPEvent)initWithEventIdentifier:(id)a3 objectID:(id)a4 title:(id)a5 location:(id)a6 calendar:(id)a7 startDate:(id)a8 endDate:(id)a9 availability:(char)a10 externalURI:(id)a11 attendees:(id)a12 organizerName:(id)a13 eventFlags:(unsigned __int8)a14 notes:(id)a15 url:(id)a16 structuredLocationTitle:(id)a17 structuredLocationAddress:(id)a18 structuredLocationCoordinates:(id)a19 suggestedEventCategory:(unsigned __int8)a20
{
  v46 = a19;
  v44 = a18;
  v41 = a17;
  v23 = a16;
  v36 = a15;
  v32 = a13;
  v35 = a12;
  v33 = a9;
  v34 = a8;
  v48 = a7;
  v24 = a6;
  v38 = a5;
  v40 = a4;
  v25 = a3;
  v43 = [a11 absoluteString];
  v45 = [v23 absoluteString];

  LOBYTE(v31) = a20;
  LOBYTE(v30) = a14;
  LOBYTE(v29) = a10;
  v26 = v24;
  v27 = [(PPEvent *)self initWithEventIdentifier:v25 objectID:v40 title:v38 location:v24 calendar:v48 startDate:v34 endDate:v33 availability:v29 externalURIString:v43 attendees:v35 organizerName:v32 eventFlags:v30 notes:v36 urlString:v45 structuredLocationTitle:v41 structuredLocationAddress:v44 structuredLocationCoordinates:v46 suggestedEventCategory:v31];

  return v27;
}

- (PPEvent)initWithEKEvent:(id)a3 calendarInternPool:(id)a4
{
  v6 = a4;
  v7 = [PPEvent deferredAllocationEventFromEKEvent:a3];
  v8 = objc_opt_new();
  v9 = (v7)[2](v7, v8, v6);

  return v9;
}

+ (id)descriptionForSuggestedEventCategory:(unsigned __int8)a3
{
  if (a3 > 0xCu)
  {
    return 0;
  }

  else
  {
    return *(&off_1E77F66C0 + a3);
  }
}

+ (unsigned)suggestedEventCategoryFromMetadata:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"SGEventMetadataTypeKey"];
  v5 = [v4 isEqualToString:@"StructuredEvent"];

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [v3 objectForKeyedSubscript:@"SGEventMetadataCategoryDescriptionKey"];
    v8 = [v7 lowercaseString];

    if (v8)
    {
      v9 = [&unk_1F1B465C0 objectForKeyedSubscript:v8];
      v10 = v9;
      if (v9)
      {
        v11 = [v9 unsignedCharValue];
      }

      else
      {
        v14 = pp_default_log_handle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          v17 = 138543362;
          v18 = v8;
          _os_log_fault_impl(&dword_1A7FD3000, v14, OS_LOG_TYPE_FAULT, "PPEvent creation with unknown suggested category: StructuredEvent::%{public}@", &v17, 0xCu);
        }

        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v12 = [v3 objectForKeyedSubscript:@"SGEventMetadataTypeKey"];
    v13 = [v12 isEqualToString:@"NLEvent"];

    if (v13)
    {
      v11 = 12;
    }

    else
    {
      v11 = 0;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (id)convertBatchOfEKEvents:(id)a3 calendarInternPool:(id)a4 interningSet:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v11 = pp_default_log_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v30 = [v8 count];
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
    v28[4] = a1;
    v14 = [v8 _pas_mappedArrayWithTransform:v28];
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
    v17 = v10;
    v26 = v17;
    v27 = v9;
    v18 = [v14 _pas_mappedArrayWithTransform:v25];

    objc_autoreleasePoolPop(v16);
    v19 = pp_default_log_handle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v8 count];
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

+ (id)convertBatchOfEKEvents:(id)a3 calendarInternPool:(id)a4
{
  v6 = MEMORY[0x1E695DFA8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 alloc];
  v10 = [v8 count];
  if ((10 * v10) >= 0x4000)
  {
    v11 = 0x4000;
  }

  else
  {
    v11 = 10 * v10;
  }

  v12 = [v9 initWithCapacity:v11];
  v13 = [a1 convertBatchOfEKEvents:v8 calendarInternPool:v7 interningSet:v12];

  return v13;
}

+ (id)deferredAllocationEventFromEKEvent:(id)a3
{
  v89 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 startDate];
  if (v5 && (v6 = v5, [v3 endDate], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v64 = [v3 eventIdentifier];
    v8 = [v3 organizer];
    v9 = [v8 isCurrentUser];

    v10 = [v3 eligibleForTravelAdvisories];
    v11 = v9 | 4;
    if (!v10)
    {
      v11 = v9;
    }

    v59 = v11;
    v12 = [v3 preferredLocationWithoutPrediction];
    v63 = [v3 calendar];
    v13 = objc_autoreleasePoolPush();
    v14 = [v3 customObjectForKey:@"SGEventMetadataKey"];
    objc_autoreleasePoolPop(v13);
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v55 = [objc_opt_class() suggestedEventCategoryFromMetadata:v14];
    }

    else
    {
      v55 = 0;
    }

    v17 = [v3 locationWithoutPrediction];
    if ([v17 length])
    {
      v57 = v17;
    }

    else
    {

      v57 = 0;
    }

    v18 = [v3 attendees];
    v62 = [v18 _pas_mappedArrayWithTransform:&__block_literal_global_146];

    v61 = v14;
    if ([v3 hasNotes])
    {
      v49 = [v3 notes];
    }

    else
    {
      v49 = 0;
    }

    v53 = [v12 title];
    v43 = [v3 title];
    v44 = [v3 objectID];
    v19 = [v3 startDate];
    v20 = [v3 endDate];
    v51 = [v3 availability];
    v21 = [v3 externalURI];
    [v21 absoluteString];
    v22 = v65 = v12;

    v23 = [v3 organizer];
    v24 = [v23 name];

    v25 = [v3 URL];
    v26 = [v25 absoluteString];

    v27 = [v65 address];
    v28 = [v65 geoLocation];
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __46__PPEvent_deferredAllocationEventFromEKEvent___block_invoke_4;
    v66[3] = &unk_1E77F65D8;
    v67 = v63;
    v68 = v62;
    v69 = v64;
    v70 = v44;
    v71 = v43;
    v72 = v57;
    v73 = v19;
    v74 = v20;
    v75 = v22;
    v76 = v24;
    v83 = v59;
    v77 = v49;
    v78 = v26;
    v79 = v53;
    v80 = v27;
    v81 = v28;
    v82 = v51;
    v84 = v55;
    v60 = v28;
    v56 = v27;
    v54 = v53;
    v52 = v26;
    v50 = v49;
    v48 = v24;
    v47 = v22;
    v46 = v20;
    v45 = v19;
    v58 = v57;
    v29 = v43;
    v30 = v44;
    v31 = v64;
    v32 = v62;
    v33 = v63;
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
      v37 = [v3 startDate];
      v38 = [v36 numberWithInt:v37 == 0];
      v85[1] = @"nil end date";
      v86[0] = v38;
      v39 = MEMORY[0x1E696AD98];
      v40 = [v3 endDate];
      v41 = [v39 numberWithInt:v40 == 0];
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