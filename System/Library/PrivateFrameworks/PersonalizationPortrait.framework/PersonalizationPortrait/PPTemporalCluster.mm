@interface PPTemporalCluster
- (PPTemporalCluster)initWithCoder:(id)coder;
- (PPTemporalCluster)initWithEvent:(id)event startDate:(id)date endDate:(id)endDate score:(double)score topics:(id)topics entities:(id)entities locations:(id)locations contacts:(id)self0 contactHandles:(id)self1 mediaItems:(id)self2;
- (id)description;
- (id)descriptionDateFormatter;
- (id)longDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPTemporalCluster

- (PPTemporalCluster)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = MEMORY[0x1E69C5D78];
  v5 = objc_opt_class();
  v6 = pp_temporal_clusters_log_handle();
  v77 = [v4 robustDecodeObjectOfClass:v5 forKey:@"st" withCoder:coderCopy expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v6];

  v7 = MEMORY[0x1E69C5D78];
  v8 = objc_opt_class();
  v9 = pp_temporal_clusters_log_handle();
  v71 = [v7 robustDecodeObjectOfClass:v8 forKey:@"ed" withCoder:coderCopy expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v9];

  v10 = MEMORY[0x1E69C5D78];
  v11 = objc_opt_class();
  v12 = pp_temporal_clusters_log_handle();
  v76 = [v10 robustDecodeObjectOfClass:v11 forKey:@"sc" withCoder:coderCopy expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v12];

  v13 = MEMORY[0x1E69C5D78];
  v14 = objc_opt_class();
  v15 = pp_temporal_clusters_log_handle();
  v75 = [v13 robustDecodeObjectOfClass:v14 forKey:@"sd" withCoder:coderCopy expectNonNull:0 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v15];

  v16 = MEMORY[0x1E69C5D78];
  v17 = objc_autoreleasePoolPush();
  v18 = objc_alloc(MEMORY[0x1E695DFD8]);
  v19 = objc_opt_class();
  v20 = [v18 initWithObjects:{v19, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v17);
  v21 = pp_temporal_clusters_log_handle();
  v74 = [v16 robustDecodeObjectOfClasses:v20 forKey:@"tp" withCoder:coderCopy expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v21];

  v22 = MEMORY[0x1E69C5D78];
  v23 = objc_autoreleasePoolPush();
  v24 = objc_alloc(MEMORY[0x1E695DFD8]);
  v25 = objc_opt_class();
  v26 = [v24 initWithObjects:{v25, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v23);
  v27 = pp_temporal_clusters_log_handle();
  v73 = [v22 robustDecodeObjectOfClasses:v26 forKey:@"ne" withCoder:coderCopy expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v27];

  v28 = MEMORY[0x1E69C5D78];
  v29 = objc_autoreleasePoolPush();
  v30 = objc_alloc(MEMORY[0x1E695DFD8]);
  v31 = objc_opt_class();
  v32 = [v30 initWithObjects:{v31, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v29);
  v33 = pp_temporal_clusters_log_handle();
  v34 = [v28 robustDecodeObjectOfClasses:v32 forKey:@"lc" withCoder:coderCopy expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v33];

  v35 = MEMORY[0x1E69C5D78];
  v36 = objc_autoreleasePoolPush();
  v37 = objc_alloc(MEMORY[0x1E695DFD8]);
  v38 = objc_opt_class();
  v39 = [v37 initWithObjects:{v38, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v36);
  v40 = pp_temporal_clusters_log_handle();
  v70 = [v35 robustDecodeObjectOfClasses:v39 forKey:@"ct" withCoder:coderCopy expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v40];

  v41 = MEMORY[0x1E69C5D78];
  v42 = objc_autoreleasePoolPush();
  v43 = objc_alloc(MEMORY[0x1E695DFD8]);
  v44 = objc_opt_class();
  v45 = [v43 initWithObjects:{v44, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v42);
  v46 = pp_temporal_clusters_log_handle();
  v47 = [v41 robustDecodeObjectOfClasses:v45 forKey:@"ch" withCoder:coderCopy expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v46];

  v48 = MEMORY[0x1E69C5D78];
  v49 = objc_autoreleasePoolPush();
  v50 = objc_alloc(MEMORY[0x1E695DFD8]);
  v51 = objc_opt_class();
  v52 = [v50 initWithObjects:{v51, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v49);
  v53 = pp_temporal_clusters_log_handle();
  v54 = coderCopy;
  v55 = [v48 robustDecodeObjectOfClasses:v52 forKey:@"mi" withCoder:coderCopy expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v53];

  v56 = 0;
  v69 = v54;
  if (!v77)
  {
    v57 = v71;
    selfCopy2 = self;
    v60 = v76;
    v61 = v47;
    v63 = v73;
    v62 = v74;
    v64 = v70;
    v59 = v55;
    v65 = v75;
    goto LABEL_13;
  }

  v57 = v71;
  selfCopy2 = self;
  v59 = v55;
  if (!v71)
  {
    v60 = v76;
    goto LABEL_21;
  }

  v60 = v76;
  if (!v76)
  {
LABEL_21:
    v62 = v74;
    v65 = v75;
    v61 = v47;
    goto LABEL_22;
  }

  v61 = v47;
  v62 = v74;
  if (!v74)
  {
    v65 = v75;
LABEL_22:
    v63 = v73;
    goto LABEL_23;
  }

  v63 = v73;
  if (!v73 || !v34)
  {
    v65 = v75;
LABEL_23:
    v64 = v70;
    goto LABEL_13;
  }

  v64 = v70;
  if (v70 && v61 && v55)
  {
    if (!v75)
    {
      error = [v54 error];

      if (error)
      {
        v66 = 0;
        v57 = v71;
        v60 = v76;
        v63 = v73;
        v62 = v74;
        v59 = v55;
        v65 = 0;
        goto LABEL_14;
      }
    }

    v60 = v76;
    [v76 doubleValue];
    v62 = v74;
    v57 = v71;
    v63 = v73;
    v56 = [(PPTemporalCluster *)self initWithEvent:v75 startDate:v77 endDate:v71 score:v74 topics:v73 entities:v34 locations:v70 contacts:v61 contactHandles:v55 mediaItems:v54];
    selfCopy2 = v56;
    v59 = v55;
    v65 = v75;
  }

  else
  {
    v65 = v75;
  }

LABEL_13:
  v66 = v56;
LABEL_14:

  return v66;
}

- (void)encodeWithCoder:(id)coder
{
  startDate = self->_startDate;
  coderCopy = coder;
  [coderCopy encodeObject:startDate forKey:@"st"];
  [coderCopy encodeObject:self->_endDate forKey:@"ed"];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_score];
  [coderCopy encodeObject:v5 forKey:@"sc"];

  [coderCopy encodeObject:self->_event forKey:@"sd"];
  [coderCopy encodeObject:self->_topics forKey:@"tp"];
  [coderCopy encodeObject:self->_entities forKey:@"ne"];
  [coderCopy encodeObject:self->_locations forKey:@"lc"];
  [coderCopy encodeObject:self->_contacts forKey:@"ct"];
  [coderCopy encodeObject:self->_contactHandles forKey:@"ch"];
  [coderCopy encodeObject:self->_mediaItems forKey:@"mi"];
}

- (id)descriptionDateFormatter
{
  v2 = objc_opt_new();
  [v2 setDateFormat:@"YYYY-MM-dd HH:mm:ss"];

  return v2;
}

- (id)longDescription
{
  v112 = *MEMORY[0x1E69E9840];
  descriptionDateFormatter = [(PPTemporalCluster *)self descriptionDateFormatter];
  v4 = objc_opt_new();
  [v4 appendFormat:@"=> PPTemporalCluster (%p) <=", self];
  startDate = [(PPTemporalCluster *)self startDate];
  v6 = [descriptionDateFormatter stringFromDate:startDate];
  [v4 appendFormat:@"\nStart date: %@", v6];

  endDate = [(PPTemporalCluster *)self endDate];
  v78 = descriptionDateFormatter;
  v8 = [descriptionDateFormatter stringFromDate:endDate];
  [v4 appendFormat:@"\nEnd date: %@", v8];

  event = [(PPTemporalCluster *)self event];
  title = [event title];
  [v4 appendFormat:@"\nEvent: %@", title];

  event2 = [(PPTemporalCluster *)self event];
  if ([event2 suggestedEventCategory])
  {
    event3 = [(PPTemporalCluster *)self event];
    suggestedEventCategory = [event3 suggestedEventCategory];

    if (!suggestedEventCategory)
    {
      goto LABEL_5;
    }

    event2 = [(PPTemporalCluster *)self event];
    v14 = +[PPEvent descriptionForSuggestedEventCategory:](PPEvent, "descriptionForSuggestedEventCategory:", [event2 suggestedEventCategory]);
    [v4 appendFormat:@" - (Suggested event, category: %@)", v14];
  }

LABEL_5:
  topics = [(PPTemporalCluster *)self topics];
  [v4 appendFormat:@"\n %tu Topics:", objc_msgSend(topics, "count")];

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  selfCopy = self;
  topics2 = [(PPTemporalCluster *)self topics];
  v17 = [topics2 countByEnumeratingWithState:&v102 objects:v111 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v103;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v103 != v19)
        {
          objc_enumerationMutation(topics2);
        }

        v21 = *(*(&v102 + 1) + 8 * i);
        item = [v21 item];
        topicIdentifier = [item topicIdentifier];
        [v21 score];
        [v4 appendFormat:@"\n\t: %@ (score: %f)", topicIdentifier, v24];
      }

      v18 = [topics2 countByEnumeratingWithState:&v102 objects:v111 count:16];
    }

    while (v18);
  }

  entities = [(PPTemporalCluster *)self entities];
  [v4 appendFormat:@"\n %tu Entities:", objc_msgSend(entities, "count")];

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  entities2 = [(PPTemporalCluster *)self entities];
  v27 = [entities2 countByEnumeratingWithState:&v98 objects:v110 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v99;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v99 != v29)
        {
          objc_enumerationMutation(entities2);
        }

        v31 = *(*(&v98 + 1) + 8 * j);
        item2 = [v31 item];
        name = [item2 name];
        [v31 score];
        [v4 appendFormat:@"\n\t: %@ (score: %f)", name, v34];
      }

      v28 = [entities2 countByEnumeratingWithState:&v98 objects:v110 count:16];
    }

    while (v28);
  }

  locations = [(PPTemporalCluster *)self locations];
  [v4 appendFormat:@"\n %tu Locations:", objc_msgSend(locations, "count")];

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  locations2 = [(PPTemporalCluster *)self locations];
  v37 = [locations2 countByEnumeratingWithState:&v94 objects:v109 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v95;
    obj = *v95;
    do
    {
      for (k = 0; k != v38; ++k)
      {
        if (*v95 != v39)
        {
          objc_enumerationMutation(locations2);
        }

        v41 = *(*(&v94 + 1) + 8 * k);
        location = [v41 location];
        placemark = [location placemark];

        name2 = [placemark name];
        if (name2)
        {
          name3 = [placemark name];
        }

        else
        {
          thoroughfare = [placemark thoroughfare];
          if (thoroughfare)
          {
            name3 = [placemark thoroughfare];
          }

          else
          {
            v47 = locations2;
            locality = [placemark locality];
            if (locality)
            {
              name3 = [placemark locality];
            }

            else
            {
              name3 = &stru_1F1B327D8;
            }

            locations2 = v47;
            v39 = obj;
          }
        }

        [v41 score];
        [v4 appendFormat:@"\n\t: %@ (score: %f)", name3, v49];
      }

      v38 = [locations2 countByEnumeratingWithState:&v94 objects:v109 count:16];
    }

    while (v38);
  }

  contacts = [(PPTemporalCluster *)selfCopy contacts];
  [v4 appendFormat:@"\n %tu Contacts:", objc_msgSend(contacts, "count")];

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  obja = [(PPTemporalCluster *)selfCopy contacts];
  v51 = [obja countByEnumeratingWithState:&v90 objects:v108 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v91;
    do
    {
      for (m = 0; m != v52; ++m)
      {
        if (*v91 != v53)
        {
          objc_enumerationMutation(obja);
        }

        v55 = *(*(&v90 + 1) + 8 * m);
        contact = [v55 contact];
        givenName = [contact givenName];
        contact2 = [v55 contact];
        familyName = [contact2 familyName];
        [v55 score];
        [v4 appendFormat:@"\n\t: %@ %@ (score: %f)", givenName, familyName, v60];
      }

      v52 = [obja countByEnumeratingWithState:&v90 objects:v108 count:16];
    }

    while (v52);
  }

  contactHandles = [(PPTemporalCluster *)selfCopy contactHandles];
  [v4 appendFormat:@"\n %tu ContactHandles:", objc_msgSend(contactHandles, "count")];

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  contactHandles2 = [(PPTemporalCluster *)selfCopy contactHandles];
  v63 = [contactHandles2 countByEnumeratingWithState:&v86 objects:v107 count:16];
  if (v63)
  {
    v64 = v63;
    v65 = *v87;
    do
    {
      for (n = 0; n != v64; ++n)
      {
        if (*v87 != v65)
        {
          objc_enumerationMutation(contactHandles2);
        }

        v67 = *(*(&v86 + 1) + 8 * n);
        contactHandle = [v67 contactHandle];
        [v67 score];
        [v4 appendFormat:@"\n\t: %@ (score: %f)", contactHandle, v69];
      }

      v64 = [contactHandles2 countByEnumeratingWithState:&v86 objects:v107 count:16];
    }

    while (v64);
  }

  mediaItems = [(PPTemporalCluster *)selfCopy mediaItems];
  [v4 appendFormat:@"\n %tu Related Media Items:", objc_msgSend(mediaItems, "count")];

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  mediaItems2 = [(PPTemporalCluster *)selfCopy mediaItems];
  v72 = [mediaItems2 countByEnumeratingWithState:&v82 objects:v106 count:16];
  if (v72)
  {
    v73 = v72;
    v74 = *v83;
    do
    {
      for (ii = 0; ii != v73; ++ii)
      {
        if (*v83 != v74)
        {
          objc_enumerationMutation(mediaItems2);
        }

        [v4 appendFormat:@"\n\t: %@", *(*(&v82 + 1) + 8 * ii)];
      }

      v73 = [mediaItems2 countByEnumeratingWithState:&v82 objects:v106 count:16];
    }

    while (v73);
  }

  [v4 appendString:@"\n\n"];
  v76 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)description
{
  descriptionDateFormatter = [(PPTemporalCluster *)self descriptionDateFormatter];
  v21 = objc_alloc(MEMORY[0x1E696AEC0]);
  startDate = [(PPTemporalCluster *)self startDate];
  v20 = [descriptionDateFormatter stringFromDate:startDate];
  endDate = [(PPTemporalCluster *)self endDate];
  v19 = [descriptionDateFormatter stringFromDate:endDate];
  [(PPTemporalCluster *)self score];
  v4 = v3;
  event = [(PPTemporalCluster *)self event];
  title = [event title];
  topics = [(PPTemporalCluster *)self topics];
  v17 = [topics count];
  entities = [(PPTemporalCluster *)self entities];
  v7 = [entities count];
  locations = [(PPTemporalCluster *)self locations];
  v9 = [locations count];
  contacts = [(PPTemporalCluster *)self contacts];
  v11 = [contacts count];
  contactHandles = [(PPTemporalCluster *)self contactHandles];
  v13 = [contactHandles count];
  mediaItems = [(PPTemporalCluster *)self mediaItems];
  v15 = [v21 initWithFormat:@"<PPTemporalCluster st:%@ ed:%@ sc:%f et:'%@' tp:%tu ne:%tu lc:%tu ct:%tu ch:%tu mi:%tu>", v20, v19, v4, title, v17, v7, v9, v11, v13, objc_msgSend(mediaItems, "count")];

  return v15;
}

- (PPTemporalCluster)initWithEvent:(id)event startDate:(id)date endDate:(id)endDate score:(double)score topics:(id)topics entities:(id)entities locations:(id)locations contacts:(id)self0 contactHandles:(id)self1 mediaItems:(id)self2
{
  eventCopy = event;
  dateCopy = date;
  endDateCopy = endDate;
  topicsCopy = topics;
  entitiesCopy = entities;
  locationsCopy = locations;
  contactsCopy = contacts;
  handlesCopy = handles;
  itemsCopy = items;
  v32.receiver = self;
  v32.super_class = PPTemporalCluster;
  v21 = [(PPTemporalCluster *)&v32 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_event, event);
    objc_storeStrong(&v22->_startDate, date);
    objc_storeStrong(&v22->_endDate, endDate);
    v22->_score = score;
    objc_storeStrong(&v22->_topics, topics);
    objc_storeStrong(&v22->_entities, entities);
    objc_storeStrong(&v22->_locations, locations);
    objc_storeStrong(&v22->_contacts, contacts);
    objc_storeStrong(&v22->_contactHandles, handles);
    objc_storeStrong(&v22->_mediaItems, items);
  }

  return v22;
}

@end