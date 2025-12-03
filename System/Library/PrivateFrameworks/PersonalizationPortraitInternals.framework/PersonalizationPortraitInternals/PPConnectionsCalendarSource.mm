@interface PPConnectionsCalendarSource
+ (PPConnectionsCalendarSource)sharedInstance;
+ (id)locationLabelFromEvent:(id)event;
+ (id)locationNameFromEvent:(id)event;
+ (id)locationValueFromEvent:(id)event;
- (BOOL)isCalendarEventEligibleForLocationPrediction:(id)prediction;
- (PPConnectionsCalendarSource)init;
- (id)locationItemsWithCriteria:(id)criteria earliest:(id)earliest latest:(id)latest limit:(unint64_t)limit consumer:(unint64_t)consumer explanationSet:(id)set;
@end

@implementation PPConnectionsCalendarSource

- (id)locationItemsWithCriteria:(id)criteria earliest:(id)earliest latest:(id)latest limit:(unint64_t)limit consumer:(unint64_t)consumer explanationSet:(id)set
{
  consumerCopy = consumer;
  v48 = *MEMORY[0x277D85DE8];
  latestCopy = latest;
  setCopy = set;
  if ((consumerCopy & 6) != 0 || [criteria locationField] == 10)
  {
    v14 = 0;
  }

  else
  {
    [latestCopy timeIntervalSinceNow];
    v18 = v17;
    v19 = objc_opt_new();
    v20 = v19;
    if (self)
    {
      localEventStore = self->_localEventStore;
      v22 = v19;
      v23 = [v22 dateByAddingTimeInterval:v18];
      v24 = [(PPLocalEventStore *)localEventStore eventsFromDate:v22 toDate:v23];
    }

    else
    {
      v24 = 0;
    }

    if ([v24 count])
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v25 = v24;
      v26 = [v25 countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = 0;
        v29 = *v43;
LABEL_12:
        v30 = 0;
        while (1)
        {
          if (*v43 != v29)
          {
            objc_enumerationMutation(v25);
          }

          v31 = *(*(&v42 + 1) + 8 * v30);
          if ([(PPConnectionsCalendarSource *)self isCalendarEventEligibleForLocationPrediction:v31, v42])
          {
            break;
          }

          ++v30;
          v28 = 1;
          if (v27 == v30)
          {
            v27 = [v25 countByEnumeratingWithState:&v42 objects:v47 count:16];
            if (v27)
            {
              goto LABEL_12;
            }

LABEL_25:
            v40 = setCopy;
            v41 = 30;
            goto LABEL_22;
          }
        }

        v32 = [objc_opt_class() locationLabelFromEvent:v31];
        v33 = [objc_opt_class() locationValueFromEvent:v31];
        v34 = objc_alloc(MEMORY[0x277D3A348]);
        v35 = [v34 initWithOriginatingBundleID:*MEMORY[0x277D3A5F0]];
        v36 = [objc_opt_class() locationNameFromEvent:v31];
        [v35 setName:v36];

        [v35 setLabel:v32];
        [v35 setValue:v33];
        [v35 setShortValue:v33];
        [v35 setSource:@"calendar"];
        v37 = MEMORY[0x277CCABB0];
        v38 = +[PPConnectionsParameters sharedInstance];
        [v38 calendarEventLocationExpirySeconds];
        v39 = [v37 numberWithDouble:?];
        [v35 setLifetime:v39];

        if (v35)
        {
          v46 = v35;
          v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];

          goto LABEL_27;
        }

        if (v28)
        {
          goto LABEL_25;
        }
      }

      else
      {
      }
    }

    else
    {
      v40 = setCopy;
      v41 = 29;
LABEL_22:
      [v40 push:v41];
    }

    v14 = 0;
LABEL_27:
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)isCalendarEventEligibleForLocationPrediction:(id)prediction
{
  predictionCopy = prediction;
  v4 = predictionCopy;
  if (predictionCopy && ([predictionCopy eventFlags] & 4) != 0)
  {
    structuredLocationAddress = [v4 structuredLocationAddress];
    v5 = structuredLocationAddress != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PPConnectionsCalendarSource)init
{
  v6.receiver = self;
  v6.super_class = PPConnectionsCalendarSource;
  v2 = [(PPConnectionsCalendarSource *)&v6 init];
  if (v2)
  {
    v3 = +[PPLocalEventStore defaultStore];
    localEventStore = v2->_localEventStore;
    v2->_localEventStore = v3;
  }

  return v2;
}

+ (id)locationValueFromEvent:(id)event
{
  eventCopy = event;
  structuredLocationAddress = [eventCopy structuredLocationAddress];
  if (structuredLocationAddress)
  {
    structuredLocationAddress2 = [eventCopy structuredLocationAddress];
    v6 = [structuredLocationAddress2 stringByReplacingOccurrencesOfString:@" withString:{", @" "}];
    v7 = PPCollapseWhitespaceAndStrip();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)locationLabelFromEvent:(id)event
{
  eventCopy = event;
  structuredLocationTitle = [eventCopy structuredLocationTitle];
  if (structuredLocationTitle)
  {
    v5 = PPCollapseWhitespaceAndStrip();
  }

  else
  {
    title = [eventCopy title];
    v5 = PPCollapseWhitespaceAndStrip();
  }

  return v5;
}

+ (id)locationNameFromEvent:(id)event
{
  eventCopy = event;
  structuredLocationTitle = [eventCopy structuredLocationTitle];
  if (structuredLocationTitle)
  {
    v5 = PPCollapseWhitespaceAndStrip();
  }

  else
  {
    title = [eventCopy title];
    v5 = PPCollapseWhitespaceAndStrip();
  }

  return v5;
}

+ (PPConnectionsCalendarSource)sharedInstance
{
  if (sharedInstance_once != -1)
  {
    dispatch_once(&sharedInstance_once, &__block_literal_global_16175);
  }

  v3 = sharedInstance_shared;

  return v3;
}

uint64_t __45__PPConnectionsCalendarSource_sharedInstance__block_invoke()
{
  sharedInstance_shared = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

@end