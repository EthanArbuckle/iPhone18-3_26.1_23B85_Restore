@interface OKMediaDateClusterPredicate
- (OKMediaDateClusterPredicate)initWithType:(unint64_t)type;
- (id)evaluateItems:(id)items progressBlock:(id)block;
- (id)timeOfDayAsString:(unint64_t)string;
- (id)title;
- (int64_t)hourInGMT:(id)t;
- (unint64_t)timeOfDay:(id)day;
- (void)dealloc;
@end

@implementation OKMediaDateClusterPredicate

- (OKMediaDateClusterPredicate)initWithType:(unint64_t)type
{
  v7.receiver = self;
  v7.super_class = OKMediaDateClusterPredicate;
  v4 = [(OKMediaClusterPredicate *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = type;
    -[OKMediaClusterPredicate setUniqueID:](v4, "setUniqueID:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%lu", @"date", type]);
    [(OKMediaClusterPredicate *)v5 setCategory:0];
  }

  return v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OKMediaDateClusterPredicate;
  [(OKMediaClusterPredicate *)&v2 dealloc];
}

- (id)title
{
  type = self->_type;
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (type > 1)
  {
    if (type != 2)
    {
      if (type == 3)
      {
        v4 = @"Time Of Day";
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v4 = @"Year";
  }

  else
  {
    if (type)
    {
      if (type == 1)
      {
        v4 = @"Month";
        goto LABEL_11;
      }

LABEL_8:
      v4 = @"Unknown";
      goto LABEL_11;
    }

    v4 = @"Day";
  }

LABEL_11:

  return [v3 localizedStringForKey:v4 value:v4 table:@"Localizable"];
}

- (id)evaluateItems:(id)items progressBlock:(id)block
{
  v62 = *MEMORY[0x277D85DE8];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = objc_autoreleasePoolPush();
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v8 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"metadata.creationDate" ascending:0];
  v46 = v6;
  obj = [items sortedArrayUsingDescriptors:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObject:", v8)}];
  type = self->_type;
  context = v7;
  if (type > 3)
  {
    v50 = 0;
  }

  else
  {
    v50 = qword_269F6AED0[type];
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v10 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (v10)
  {
    v11 = v10;
    v48 = *v57;
    selfCopy = self;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v57 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v56 + 1) + 8 * i);
        v14 = [objc_msgSend(v13 "metadata")];
        v15 = [objc_msgSend(MEMORY[0x277CBEA80] "currentCalendar")];
        v16 = [objc_msgSend(MEMORY[0x277CBEA80] "currentCalendar")];
        title = v16;
        if (self->_type == 3)
        {
          v18 = v13;
          v19 = [(OKMediaDateClusterPredicate *)self timeOfDay:v16];
          v20 = v11;
          v21 = MEMORY[0x277CCACA8];
          shortDescription = [v14 shortDescription];
          v23 = v19;
          v13 = v18;
          v44 = [(OKMediaDateClusterPredicate *)self timeOfDayAsString:v23];
          v24 = v21;
          v11 = v20;
          v25 = [v24 stringWithFormat:@"%@:%@", shortDescription, v44];
          v26 = v25;
        }

        else
        {
          v26 = 0;
          v25 = v16;
        }

        v27 = [dictionary objectForKey:v25];
        if (v27)
        {
          [objc_msgSend(v27 "items")];
          self = selfCopy;
          continue;
        }

        v28 = v13;
        v29 = objc_alloc_init(OKMediaCluster);
        v30 = v29;
        self = selfCopy;
        v31 = selfCopy->_type;
        if (v31 > 1)
        {
          if (v31 == 2)
          {
            v32 = objc_alloc_init(MEMORY[0x277CCA968]);
            v33 = v32;
            v34 = @"yyyy";
LABEL_24:
            [v32 setDateFormat:v34];
            -[OKMediaCluster setTitle:](v30, "setTitle:", [v33 stringFromDate:title]);
            if (v33)
            {
            }

            goto LABEL_26;
          }

          if (v31 == 3)
          {
            shortDescription2 = v26;
LABEL_22:
            [(OKMediaCluster *)v29 setTitle:shortDescription2];
          }
        }

        else
        {
          if (!v31)
          {
            shortDescription2 = [(NSString *)title shortDescription];
            v29 = v30;
            goto LABEL_22;
          }

          if (v31 == 1)
          {
            v32 = objc_alloc_init(MEMORY[0x277CCA968]);
            v33 = v32;
            v34 = @"MMMM, yyyy";
            goto LABEL_24;
          }
        }

LABEL_26:
        [(NSMutableArray *)[(OKMediaCluster *)v30 items] addObject:v28];
        if (selfCopy->_type == 3)
        {
          title = [(OKMediaCluster *)v30 title];
        }

        [dictionary setObject:v30 forKey:title];
      }

      v11 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
    }

    while (v11);
  }

  v36 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"self" ascending:0];
  allKeys = [dictionary allKeys];
  v38 = [allKeys sortedArrayUsingDescriptors:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObject:", v36)}];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v39 = [v38 countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v53;
    do
    {
      for (j = 0; j != v40; ++j)
      {
        if (*v53 != v41)
        {
          objc_enumerationMutation(v38);
        }

        [v46 addObject:{objc_msgSend(dictionary, "objectForKey:", *(*(&v52 + 1) + 8 * j))}];
      }

      v40 = [v38 countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v40);
  }

  objc_autoreleasePoolPop(context);
  return v46;
}

- (unint64_t)timeOfDay:(id)day
{
  v3 = [(OKMediaDateClusterPredicate *)self hourInGMT:day];
  if ((v3 - 13) >= 5)
  {
    v4 = 4 * ((v3 - 18) < 7);
  }

  else
  {
    v4 = 3;
  }

  if ((v3 - 6) >= 7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 2;
  }

  if ((v3 - 1) >= 5)
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

- (id)timeOfDayAsString:(unint64_t)string
{
  if (string - 1 > 3)
  {
    return @"unknown time of day";
  }

  else
  {
    return off_279C8FAD8[string - 1];
  }
}

- (int64_t)hourInGMT:(id)t
{
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setTimeZone:{objc_msgSend(MEMORY[0x277CBEBB0], "timeZoneWithName:", @"GMT"}];
  [v4 setDateFormat:@"HH"];
  v5 = [v4 stringFromDate:t];
  v6 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v6 setNumberStyle:1];
  v7 = [v6 numberFromString:v5];

  integerValue = [v7 integerValue];
  return integerValue;
}

@end