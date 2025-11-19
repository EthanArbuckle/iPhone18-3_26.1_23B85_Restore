@interface PPTemporalCluster
- (PPTemporalCluster)initWithCoder:(id)a3;
- (PPTemporalCluster)initWithEvent:(id)a3 startDate:(id)a4 endDate:(id)a5 score:(double)a6 topics:(id)a7 entities:(id)a8 locations:(id)a9 contacts:(id)a10 contactHandles:(id)a11 mediaItems:(id)a12;
- (id)description;
- (id)descriptionDateFormatter;
- (id)longDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPTemporalCluster

- (PPTemporalCluster)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E69C5D78];
  v5 = objc_opt_class();
  v6 = pp_temporal_clusters_log_handle();
  v77 = [v4 robustDecodeObjectOfClass:v5 forKey:@"st" withCoder:v3 expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v6];

  v7 = MEMORY[0x1E69C5D78];
  v8 = objc_opt_class();
  v9 = pp_temporal_clusters_log_handle();
  v71 = [v7 robustDecodeObjectOfClass:v8 forKey:@"ed" withCoder:v3 expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v9];

  v10 = MEMORY[0x1E69C5D78];
  v11 = objc_opt_class();
  v12 = pp_temporal_clusters_log_handle();
  v76 = [v10 robustDecodeObjectOfClass:v11 forKey:@"sc" withCoder:v3 expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v12];

  v13 = MEMORY[0x1E69C5D78];
  v14 = objc_opt_class();
  v15 = pp_temporal_clusters_log_handle();
  v75 = [v13 robustDecodeObjectOfClass:v14 forKey:@"sd" withCoder:v3 expectNonNull:0 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v15];

  v16 = MEMORY[0x1E69C5D78];
  v17 = objc_autoreleasePoolPush();
  v18 = objc_alloc(MEMORY[0x1E695DFD8]);
  v19 = objc_opt_class();
  v20 = [v18 initWithObjects:{v19, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v17);
  v21 = pp_temporal_clusters_log_handle();
  v74 = [v16 robustDecodeObjectOfClasses:v20 forKey:@"tp" withCoder:v3 expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v21];

  v22 = MEMORY[0x1E69C5D78];
  v23 = objc_autoreleasePoolPush();
  v24 = objc_alloc(MEMORY[0x1E695DFD8]);
  v25 = objc_opt_class();
  v26 = [v24 initWithObjects:{v25, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v23);
  v27 = pp_temporal_clusters_log_handle();
  v73 = [v22 robustDecodeObjectOfClasses:v26 forKey:@"ne" withCoder:v3 expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v27];

  v28 = MEMORY[0x1E69C5D78];
  v29 = objc_autoreleasePoolPush();
  v30 = objc_alloc(MEMORY[0x1E695DFD8]);
  v31 = objc_opt_class();
  v32 = [v30 initWithObjects:{v31, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v29);
  v33 = pp_temporal_clusters_log_handle();
  v34 = [v28 robustDecodeObjectOfClasses:v32 forKey:@"lc" withCoder:v3 expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v33];

  v35 = MEMORY[0x1E69C5D78];
  v36 = objc_autoreleasePoolPush();
  v37 = objc_alloc(MEMORY[0x1E695DFD8]);
  v38 = objc_opt_class();
  v39 = [v37 initWithObjects:{v38, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v36);
  v40 = pp_temporal_clusters_log_handle();
  v70 = [v35 robustDecodeObjectOfClasses:v39 forKey:@"ct" withCoder:v3 expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v40];

  v41 = MEMORY[0x1E69C5D78];
  v42 = objc_autoreleasePoolPush();
  v43 = objc_alloc(MEMORY[0x1E695DFD8]);
  v44 = objc_opt_class();
  v45 = [v43 initWithObjects:{v44, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v42);
  v46 = pp_temporal_clusters_log_handle();
  v47 = [v41 robustDecodeObjectOfClasses:v45 forKey:@"ch" withCoder:v3 expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v46];

  v48 = MEMORY[0x1E69C5D78];
  v49 = objc_autoreleasePoolPush();
  v50 = objc_alloc(MEMORY[0x1E695DFD8]);
  v51 = objc_opt_class();
  v52 = [v50 initWithObjects:{v51, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v49);
  v53 = pp_temporal_clusters_log_handle();
  v54 = v3;
  v55 = [v48 robustDecodeObjectOfClasses:v52 forKey:@"mi" withCoder:v3 expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v53];

  v56 = 0;
  v69 = v54;
  if (!v77)
  {
    v57 = v71;
    v58 = self;
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
  v58 = self;
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
      v68 = [v54 error];

      if (v68)
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
    v58 = v56;
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

- (void)encodeWithCoder:(id)a3
{
  startDate = self->_startDate;
  v6 = a3;
  [v6 encodeObject:startDate forKey:@"st"];
  [v6 encodeObject:self->_endDate forKey:@"ed"];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_score];
  [v6 encodeObject:v5 forKey:@"sc"];

  [v6 encodeObject:self->_event forKey:@"sd"];
  [v6 encodeObject:self->_topics forKey:@"tp"];
  [v6 encodeObject:self->_entities forKey:@"ne"];
  [v6 encodeObject:self->_locations forKey:@"lc"];
  [v6 encodeObject:self->_contacts forKey:@"ct"];
  [v6 encodeObject:self->_contactHandles forKey:@"ch"];
  [v6 encodeObject:self->_mediaItems forKey:@"mi"];
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
  v3 = [(PPTemporalCluster *)self descriptionDateFormatter];
  v4 = objc_opt_new();
  [v4 appendFormat:@"=> PPTemporalCluster (%p) <=", self];
  v5 = [(PPTemporalCluster *)self startDate];
  v6 = [v3 stringFromDate:v5];
  [v4 appendFormat:@"\nStart date: %@", v6];

  v7 = [(PPTemporalCluster *)self endDate];
  v78 = v3;
  v8 = [v3 stringFromDate:v7];
  [v4 appendFormat:@"\nEnd date: %@", v8];

  v9 = [(PPTemporalCluster *)self event];
  v10 = [v9 title];
  [v4 appendFormat:@"\nEvent: %@", v10];

  v11 = [(PPTemporalCluster *)self event];
  if ([v11 suggestedEventCategory])
  {
    v12 = [(PPTemporalCluster *)self event];
    v13 = [v12 suggestedEventCategory];

    if (!v13)
    {
      goto LABEL_5;
    }

    v11 = [(PPTemporalCluster *)self event];
    v14 = +[PPEvent descriptionForSuggestedEventCategory:](PPEvent, "descriptionForSuggestedEventCategory:", [v11 suggestedEventCategory]);
    [v4 appendFormat:@" - (Suggested event, category: %@)", v14];
  }

LABEL_5:
  v15 = [(PPTemporalCluster *)self topics];
  [v4 appendFormat:@"\n %tu Topics:", objc_msgSend(v15, "count")];

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v79 = self;
  v16 = [(PPTemporalCluster *)self topics];
  v17 = [v16 countByEnumeratingWithState:&v102 objects:v111 count:16];
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
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v102 + 1) + 8 * i);
        v22 = [v21 item];
        v23 = [v22 topicIdentifier];
        [v21 score];
        [v4 appendFormat:@"\n\t: %@ (score: %f)", v23, v24];
      }

      v18 = [v16 countByEnumeratingWithState:&v102 objects:v111 count:16];
    }

    while (v18);
  }

  v25 = [(PPTemporalCluster *)self entities];
  [v4 appendFormat:@"\n %tu Entities:", objc_msgSend(v25, "count")];

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v26 = [(PPTemporalCluster *)self entities];
  v27 = [v26 countByEnumeratingWithState:&v98 objects:v110 count:16];
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
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v98 + 1) + 8 * j);
        v32 = [v31 item];
        v33 = [v32 name];
        [v31 score];
        [v4 appendFormat:@"\n\t: %@ (score: %f)", v33, v34];
      }

      v28 = [v26 countByEnumeratingWithState:&v98 objects:v110 count:16];
    }

    while (v28);
  }

  v35 = [(PPTemporalCluster *)self locations];
  [v4 appendFormat:@"\n %tu Locations:", objc_msgSend(v35, "count")];

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v36 = [(PPTemporalCluster *)self locations];
  v37 = [v36 countByEnumeratingWithState:&v94 objects:v109 count:16];
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
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v94 + 1) + 8 * k);
        v42 = [v41 location];
        v43 = [v42 placemark];

        v44 = [v43 name];
        if (v44)
        {
          v45 = [v43 name];
        }

        else
        {
          v46 = [v43 thoroughfare];
          if (v46)
          {
            v45 = [v43 thoroughfare];
          }

          else
          {
            v47 = v36;
            v48 = [v43 locality];
            if (v48)
            {
              v45 = [v43 locality];
            }

            else
            {
              v45 = &stru_1F1B327D8;
            }

            v36 = v47;
            v39 = obj;
          }
        }

        [v41 score];
        [v4 appendFormat:@"\n\t: %@ (score: %f)", v45, v49];
      }

      v38 = [v36 countByEnumeratingWithState:&v94 objects:v109 count:16];
    }

    while (v38);
  }

  v50 = [(PPTemporalCluster *)v79 contacts];
  [v4 appendFormat:@"\n %tu Contacts:", objc_msgSend(v50, "count")];

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  obja = [(PPTemporalCluster *)v79 contacts];
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
        v56 = [v55 contact];
        v57 = [v56 givenName];
        v58 = [v55 contact];
        v59 = [v58 familyName];
        [v55 score];
        [v4 appendFormat:@"\n\t: %@ %@ (score: %f)", v57, v59, v60];
      }

      v52 = [obja countByEnumeratingWithState:&v90 objects:v108 count:16];
    }

    while (v52);
  }

  v61 = [(PPTemporalCluster *)v79 contactHandles];
  [v4 appendFormat:@"\n %tu ContactHandles:", objc_msgSend(v61, "count")];

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v62 = [(PPTemporalCluster *)v79 contactHandles];
  v63 = [v62 countByEnumeratingWithState:&v86 objects:v107 count:16];
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
          objc_enumerationMutation(v62);
        }

        v67 = *(*(&v86 + 1) + 8 * n);
        v68 = [v67 contactHandle];
        [v67 score];
        [v4 appendFormat:@"\n\t: %@ (score: %f)", v68, v69];
      }

      v64 = [v62 countByEnumeratingWithState:&v86 objects:v107 count:16];
    }

    while (v64);
  }

  v70 = [(PPTemporalCluster *)v79 mediaItems];
  [v4 appendFormat:@"\n %tu Related Media Items:", objc_msgSend(v70, "count")];

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v71 = [(PPTemporalCluster *)v79 mediaItems];
  v72 = [v71 countByEnumeratingWithState:&v82 objects:v106 count:16];
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
          objc_enumerationMutation(v71);
        }

        [v4 appendFormat:@"\n\t: %@", *(*(&v82 + 1) + 8 * ii)];
      }

      v73 = [v71 countByEnumeratingWithState:&v82 objects:v106 count:16];
    }

    while (v73);
  }

  [v4 appendString:@"\n\n"];
  v76 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)description
{
  v24 = [(PPTemporalCluster *)self descriptionDateFormatter];
  v21 = objc_alloc(MEMORY[0x1E696AEC0]);
  v25 = [(PPTemporalCluster *)self startDate];
  v20 = [v24 stringFromDate:v25];
  v23 = [(PPTemporalCluster *)self endDate];
  v19 = [v24 stringFromDate:v23];
  [(PPTemporalCluster *)self score];
  v4 = v3;
  v22 = [(PPTemporalCluster *)self event];
  v18 = [v22 title];
  v5 = [(PPTemporalCluster *)self topics];
  v17 = [v5 count];
  v6 = [(PPTemporalCluster *)self entities];
  v7 = [v6 count];
  v8 = [(PPTemporalCluster *)self locations];
  v9 = [v8 count];
  v10 = [(PPTemporalCluster *)self contacts];
  v11 = [v10 count];
  v12 = [(PPTemporalCluster *)self contactHandles];
  v13 = [v12 count];
  v14 = [(PPTemporalCluster *)self mediaItems];
  v15 = [v21 initWithFormat:@"<PPTemporalCluster st:%@ ed:%@ sc:%f et:'%@' tp:%tu ne:%tu lc:%tu ct:%tu ch:%tu mi:%tu>", v20, v19, v4, v18, v17, v7, v9, v11, v13, objc_msgSend(v14, "count")];

  return v15;
}

- (PPTemporalCluster)initWithEvent:(id)a3 startDate:(id)a4 endDate:(id)a5 score:(double)a6 topics:(id)a7 entities:(id)a8 locations:(id)a9 contacts:(id)a10 contactHandles:(id)a11 mediaItems:(id)a12
{
  v31 = a3;
  v30 = a4;
  v29 = a5;
  v28 = a7;
  v27 = a8;
  v26 = a9;
  v25 = a10;
  v24 = a11;
  v20 = a12;
  v32.receiver = self;
  v32.super_class = PPTemporalCluster;
  v21 = [(PPTemporalCluster *)&v32 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_event, a3);
    objc_storeStrong(&v22->_startDate, a4);
    objc_storeStrong(&v22->_endDate, a5);
    v22->_score = a6;
    objc_storeStrong(&v22->_topics, a7);
    objc_storeStrong(&v22->_entities, a8);
    objc_storeStrong(&v22->_locations, a9);
    objc_storeStrong(&v22->_contacts, a10);
    objc_storeStrong(&v22->_contactHandles, a11);
    objc_storeStrong(&v22->_mediaItems, a12);
  }

  return v22;
}

@end